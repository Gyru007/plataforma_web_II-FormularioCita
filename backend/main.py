import os
from typing import List
from fastapi import FastAPI, Depends, HTTPException, status, Query
from fastapi.middleware.cors import CORSMiddleware
from fastapi.security import OAuth2PasswordRequestForm
from sqlalchemy.orm import Session
from sqlalchemy import text
from pydantic import BaseModel
from datetime import datetime
from database import engine, get_db
import models, schemas, auth

# Esto crea las tablas en PostgreSQL si no existen
models.Base.metadata.create_all(bind=engine)

app = FastAPI(title="API Centro Médico Real Méndez")

# Lista de orígenes permitidos
origins = [
    "http://localhost:5173",
    os.getenv("FRONTEND_URL", "*"), # Permitirá tu URL de Vercel configurada en Render
]

# Configuración de CORS para permitir peticiones desde el Frontend
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/")
def read_root():
    return {"message": "Conexión exitosa con el Backend"}

@app.get("/api/health")
def health_check(db: Session = Depends(get_db)):
    try:
        # Ejecutamos una consulta simple para verificar la conexión activa
        db.execute(text("SELECT 1"))
        return {
            "status": "ok",
            "database": "connected",
            "server_time": datetime.utcnow()
        }
    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_503_SERVICE_UNAVAILABLE,
            detail=f"Base de datos no disponible: {str(e)}"
        )

@app.post("/login", response_model=schemas.Token)
def login(form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db)):
    user = db.query(models.Usuario).filter(models.Usuario.email == form_data.username).first()
    if not user or not auth.verify_password(form_data.password, user.hashed_password):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Correo o contraseña incorrectos",
            headers={"WWW-Authenticate": "Bearer"},
        )
    
    access_token = auth.create_access_token(
        data={"sub": user.email, "rol": user.rol}
    )
    return {"access_token": access_token, "token_type": "bearer"}

# --- RUTAS PÚBLICAS (Para el Frontend de Marketing) ---

@app.get("/public/medicos")
def get_public_medicos(db: Session = Depends(get_db)):
    # Usamos gerenciaEnte = 'Sanitarios' que es la columna correcta en tu BD
    sql = text("SELECT id_ente, nombreEnte, 'Especialista' AS biografia FROM aaa_entes WHERE gerenciaEnte = 'Sanitarios' AND statusEnte = 'Activo'")
    result = db.execute(sql)
    return [dict(row._mapping) for row in result]

@app.get("/public/especialidades")
def get_public_especialidades(db: Session = Depends(get_db)):
    sql = text("SELECT id_ente, nombreEnte FROM aaa_entes WHERE tipoEnte = 'Especialidad' AND statusEnte = 'Activo'")
    result = db.execute(sql)
    return [dict(row._mapping) for row in result]

@app.post("/public/agendar", status_code=status.HTTP_201_CREATED)
def create_appointment_public(cita: schemas.CitaCreate, db: Session = Depends(get_db)):
    new_appointment = models.Cita(**cita.dict())
    db.add(new_appointment)
    db.commit()
    db.refresh(new_appointment)
    return {"message": "Cita solicitada exitosamente", "id": new_appointment.id}

@app.get("/public/blog/posts")
def get_blog_posts(db: Session = Depends(get_db)):
    return db.query(models.Post).order_by(models.Post.fecha_creacion.desc()).all()

# --- RUTAS DE ADMINISTRACIÓN ---

@app.get("/api/usuarios", response_model=List[schemas.User])
def get_all_users(
    db: Session = Depends(get_db),
    admin: models.Usuario = Depends(auth.admin_required)
):
    # Esta ruta permitirá que la sección "Personal" vea al admin y otros usuarios
    return db.query(models.Usuario).all()

# Ejemplo de ruta protegida para Admin y Recepcionista
@app.get("/citas/pendientes")
def get_pending_appointments(
    db: Session = Depends(get_db),
    current_user: models.Usuario = Depends(auth.staff_required)
):
    return db.query(models.Cita).filter(models.Cita.estado == "pendiente").all()

# Ejemplo de ruta SOLO para Admin
@app.post("/usuarios/crear")
def create_user(
    user: schemas.UserCreate,
    db: Session = Depends(get_db),
    admin: models.Usuario = Depends(auth.admin_required)
):
    # Verificamos si el usuario ya existe por correo
    db_user = db.query(models.Usuario).filter(models.Usuario.email == user.email).first()
    if db_user:
        raise HTTPException(
            status_code=400, 
            detail="El correo electrónico ya está registrado"
        )
    
    new_user = models.Usuario(
        email=user.email,
        nombre=user.nombre,
        rol=user.rol,
        hashed_password=auth.get_password_hash(user.password)
    )
    db.add(new_user)
    db.commit()
    db.refresh(new_user)
    return new_user

# --- RUTAS DE LA API CORREGIDAS PARA MYSQL ---

@app.get("/api/medicos")
def obtener_medicos(db: Session = Depends(get_db)):
    # Buscamos en aaa_entes a los que son del departamento de Sanitarios
    sql = text("SELECT id_ente, nombreEnte FROM aaa_entes WHERE gerenciaEnte = 'Sanitarios' AND statusEnte = 'Activo'")
    result = db.execute(sql)
    return [dict(row._mapping) for row in result]

@app.get("/api/especialidades")
def obtener_especialidades(db: Session = Depends(get_db)):
    # Extraemos las especialidades únicas de los médicos registrados
    sql = text("""
        SELECT DISTINCT especialidad_medica as id_ente, especialidad_medica as nombreEnte 
        FROM aaa_entes 
        WHERE gerenciaEnte = 'Sanitarios' AND especialidad_medica != 'SinEspecialidadMedica'
    """)
    result = db.execute(sql)
    return [dict(row._mapping) for row in result]

@app.get("/api/verificar-paciente/{identidad}")
def verificar_paciente(identidad: str, db: Session = Depends(get_db)):
    # Buscamos los datos del paciente en la tabla aaa_entes
    sql = text("""
        SELECT nombreEnte as paciente_cita, emailEnte as email_paciente, movilEnte as telefono_paciente 
        FROM aaa_entes 
        WHERE identificacionEnte = :identidad 
        LIMIT 1
    """)
    result = db.execute(sql, {"identidad": identidad}).fetchone()

    if result:
        return {"exists": True, "paciente": dict(result._mapping)}
    return {"exists": False}

@app.post("/api/crear-cita")
def crear_cita(cita: schemas.CitaCreate, db: Session = Depends(get_db)):
    # 1. Separar la fecha y la hora que vienen de React (ej: "2026-05-28T11:47")
    try:
        # Aseguramos manejo de string si viene de React o datetime si viene de schema
        fecha_str = str(cita.fecha_cita)
        fecha_obj = datetime.strptime(fecha_str.replace(" ", "T"), "%Y-%m-%dT%H:%M:%S" if ":" in fecha_str else "%Y-%m-%d")
        fecha = fecha_obj.strftime("%Y-%m-%d")
        hora = fecha_obj.strftime("%H:%M")
    except ValueError:
        fecha = str(cita.fecha_cita).split("T")[0]
        hora = str(cita.fecha_cita).split("T")[1][:5] if "T" in str(cita.fecha_cita) else "00:00"

    # 2. Buscar si el paciente ya existe (usando el campo correcto del schema)
    identificacion = getattr(cita, 'numero_identificacion', '')
    sql_paciente = text("SELECT id_ente FROM aaa_entes WHERE identificacionEnte = :ident LIMIT 1")
    paciente_db = db.execute(sql_paciente, {"ident": identificacion}).fetchone()
    id_ente_paciente = paciente_db[0] if paciente_db else 0
    
    # 3. Construir el string concatenado como lo pide tu BD en "paciente_cita"
    # Formato: "Hora / Identificación / Nombre / id_ente"
    str_paciente_cita = f"{hora} / {identificacion} / {cita.nombre_paciente} / {id_ente_paciente}"

    # 4. Insertar en la tabla de citas con los campos correctos
    sql = text("""
        INSERT INTO tbl_paci_agenda_citas 
        (id_ente, especialidad_medica, id_medico, fecha_cita, hora_cita, paciente_cita, nota_cita, status_cita)
        VALUES (:id_ente, :esp, :med, :fecha, :hora, :paci, :nota, 'Activo')
    """)
    
    result = db.execute(sql, {
        "id_ente": id_ente_paciente,
        "esp": cita.especialidad_id,
        "med": cita.medico_id,
        "fecha": fecha, 
        "hora": hora,
        "paci": str_paciente_cita, 
        "nota": cita.motivo
    })
    db.commit()
    return {"success": True, "message": "Cita solicitada con éxito", "serial": result.lastrowid}

# --- NUEVAS RUTAS Y ACTUALIZACIONES PARA CITAS ---

class ReagendarRequest(BaseModel):
    nueva_fecha: str

@app.get("/api/consultar-cita/{identidad}")
def consultar_cita(identidad: str, db: Session = Depends(get_db)):
    # 1. Quitamos el LIMIT 1 para traer TODAS las citas
    sql = text("""
        SELECT c.*, m.nombreEnte as nombre_medico 
        FROM tbl_paci_agenda_citas c
        LEFT JOIN aaa_entes m ON c.id_medico = m.id_ente
        WHERE c.paciente_cita LIKE :ident
        ORDER BY c.fecha_cita DESC, c.hora_cita DESC
    """)
    
    resultados = db.execute(sql, {"ident": f"%{identidad}%"}).fetchall()

    if resultados:
        citas = []
        for row in resultados:
            cita_dict = dict(row._mapping)
            nombre_paciente = cita_dict["paciente_cita"]
            if " / " in nombre_paciente:
                partes = nombre_paciente.split(" / ")
                if len(partes) >= 3:
                    nombre_paciente = partes[2]

            citas.append({
                "serial": cita_dict["id_paci_agenda_citas"],
                "paciente": nombre_paciente,
                "fecha": f"{cita_dict['fecha_cita']}T{cita_dict['hora_cita']}",
                "especialidad": cita_dict["especialidad_medica"],
                "medico": cita_dict["nombre_medico"] or "Sin asignar",
                "status": cita_dict["status_cita"]
            })
        return {"success": True, "citas": citas}
    else:
        raise HTTPException(status_code=404, detail="No se encontraron citas")

@app.put("/api/anular-cita/{id_cita}")
def anular_cita(id_cita: int, db: Session = Depends(get_db)):
    # Cambiamos el status a Anulado
    sql = text("UPDATE tbl_paci_agenda_citas SET status_cita = 'Anulada' WHERE id_paci_agenda_citas = :id")
    db.execute(sql, {"id": id_cita})
    db.commit()
    return {"success": True, "message": "Cita anulada correctamente"}

@app.put("/api/reagendar-cita/{id_cita}")
def reagendar_cita(id_cita: int, request: ReagendarRequest, db: Session = Depends(get_db)):
    try:
        fecha_obj = datetime.strptime(request.nueva_fecha.replace(" ", "T"), "%Y-%m-%dT%H:%M")
        fecha = fecha_obj.strftime("%Y-%m-%d")
        hora = fecha_obj.strftime("%H:%M")
    except ValueError:
        fecha = str(request.nueva_fecha).split("T")[0]
        hora = str(request.nueva_fecha).split("T")[1][:5]

    # Obtenemos la cita actual para reconstruir el string paciente_cita
    sql_get = text("SELECT paciente_cita FROM tbl_paci_agenda_citas WHERE id_paci_agenda_citas = :id")
    cita_actual = db.execute(sql_get, {"id": id_cita}).fetchone()
    
    if not cita_actual:
        raise HTTPException(status_code=404, detail="Cita no encontrada")
        
    partes = cita_actual[0].split(" / ")
    if len(partes) >= 4:
        partes[0] = hora # Actualizamos la hora en el string
        nuevo_paciente_cita = " / ".join(partes)
    else:
        nuevo_paciente_cita = cita_actual[0]
        
    sql_update = text("""
        UPDATE tbl_paci_agenda_citas 
        SET fecha_cita = :fecha, hora_cita = :hora, paciente_cita = :paci_cita, status_cita = 'Activo'
        WHERE id_paci_agenda_citas = :id
    """)
    db.execute(sql_update, {"fecha": fecha, "hora": hora, "paci_cita": nuevo_paciente_cita, "id": id_cita})
    db.commit()
    return {"success": True, "message": "Cita reagendada exitosamente"}
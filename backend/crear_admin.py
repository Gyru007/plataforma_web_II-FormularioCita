from database import SessionLocal, engine
import models
import auth

def crear_super_admin():
    # Asegurar que las tablas existan antes de consultar
    models.Base.metadata.create_all(bind=engine)
    
    db = SessionLocal()
    try:
        # Verificar si el admin ya existe
        user = db.query(models.Usuario).filter(models.Usuario.email == "admin@realmendez.com").first()
        if not user:
            admin = models.Usuario(
                email="admin@realmendez.com",
                nombre="Admin Principal",
                rol="admin",
                hashed_password=auth.get_password_hash("admin123") # Contraseña por defecto
            )
            db.add(admin)
            db.commit()
            print("✅ Administrador creado con éxito. Correo: admin@realmendez.com | Contraseña: admin123")
        else:
            print("⚠️ El administrador ya existe en la base de datos.")
    finally:
        db.close()

if __name__ == "__main__":
    crear_super_admin()
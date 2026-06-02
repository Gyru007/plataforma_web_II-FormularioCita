from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# 1. Configuramos la URL de conexión a tu MySQL
# Formato: mysql+pymysql://usuario:contraseña@servidor/nombre_base_de_datos
# ¡IMPORTANTE: Cambia "tu_contraseña" y "tu_base_mysql" por tus datos reales!
SQLALCHEMY_DATABASE_URL = "mysql+pymysql://root@localhost:3306/ipswebve_webpaciente_demo_ver_6"

# 2. Creamos el "engine" (el motor que maneja la conexión real con MySQL)
engine = create_engine(SQLALCHEMY_DATABASE_URL)

# 3. Configuramos la fábrica de sesiones (para que cada petición web tenga su propia conexión)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# 4. Clase base para crear los modelos de tus tablas más adelante
Base = declarative_base()

# 5. La función get_db que tu main.py estaba buscando desesperadamente
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
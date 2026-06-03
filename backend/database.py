import os
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from dotenv import load_dotenv

# Cargar las variables desde el archivo .env
load_dotenv()

# Intentar obtener la URL de la base de datos desde las variables de entorno.
SQLALCHEMY_DATABASE_URL = os.getenv(
    "DATABASE_URL", 
    "mysql+pymysql://root@localhost:3306/nombre_tu_bd_local"
)

# 2. Creamos el "engine" (el motor que maneja la conexión real con MySQL)
engine = create_engine(SQLALCHEMY_DATABASE_URL)

# 3. Configuramos la fábrica de sesiones (para que cada petición web tenga su propia conexión)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# 4. Clase base para crear los modelos de tus tablas más adelante
Base = declarative_base()

# 5. Función constructora de contexto para la base de datos
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
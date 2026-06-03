from sqlalchemy import Column, Integer, String, Text, ForeignKey, DateTime, Enum
from sqlalchemy.orm import relationship
import datetime
from database import Base

class Especialidad(Base):
    __tablename__ = "especialidades"

    id = Column(Integer, primary_key=True, index=True)
    # Agregado String(100)
    nombre = Column(String(100), unique=True, index=True)
    descripcion = Column(Text)
    
    # Relación: Una especialidad tiene muchos médicos
    medicos = relationship("Medico", back_populates="especialidad")

class Medico(Base):
    __tablename__ = "medicos"

    id = Column(Integer, primary_key=True, index=True)
    # Agregado String(150) y String(255)
    nombre = Column(String(150), index=True)
    biografia = Column(Text)
    foto_url = Column(String(255))  # 255 es estándar para URLs largas
    especialidad_id = Column(Integer, ForeignKey("especialidades.id"))
    
    especialidad = relationship("Especialidad", back_populates="medicos")
    citas = relationship("Cita", back_populates="medico")

class Usuario(Base):
    __tablename__ = "usuarios"

    id = Column(Integer, primary_key=True, index=True)
    # Agregados tamaños estándar para usuarios y contraseñas
    email = Column(String(150), unique=True, index=True)
    hashed_password = Column(String(255))
    nombre = Column(String(150))
    rol = Column(String(50), default="recepcionista")
    
    posts = relationship("Post", back_populates="autor")

class Cita(Base):
    __tablename__ = "citas"

    id = Column(Integer, primary_key=True, index=True)
    nombre_paciente = Column(String(150), index=True)
    email_paciente = Column(String(150))
    telefono_paciente = Column(String(50))
    fecha_cita = Column(DateTime)
    motivo = Column(Text)
    estado = Column(String(50), default="pendiente") 
    medico_id = Column(Integer, ForeignKey("medicos.id")) 
    especialidad_id = Column(Integer)
    medico = relationship("Medico", back_populates="citas")

class CategoriaBlog(Base):
    __tablename__ = "categorias_blog"
    
    id = Column(Integer, primary_key=True, index=True)
    # Agregado String(100)
    nombre = Column(String(100), unique=True)
    
    posts = relationship("Post", back_populates="categoria")

class Post(Base):
    __tablename__ = "posts"

    id = Column(Integer, primary_key=True, index=True)
    # Agregado String(255) para el título
    titulo = Column(String(255), index=True)
    contenido = Column(Text)
    fecha_creacion = Column(DateTime, default=datetime.datetime.utcnow)
    autor_id = Column(Integer, ForeignKey("usuarios.id"))
    categoria_id = Column(Integer, ForeignKey("categorias_blog.id"))
    
    autor = relationship("Usuario", back_populates="posts")
    categoria = relationship("CategoriaBlog", back_populates="posts")
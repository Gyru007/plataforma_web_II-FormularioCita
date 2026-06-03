from pydantic import BaseModel, EmailStr
from typing import Optional, List
from datetime import datetime

class UserBase(BaseModel):
    email: EmailStr
    nombre: str
    rol: str

class UserCreate(UserBase):
    password: str

class User(UserBase):
    id: int

    class Config:
        from_attributes = True

class Token(BaseModel):
    access_token: str
    token_type: str

class TokenData(BaseModel):
    email: Optional[str] = None
    rol: Optional[str] = None

class LoginRequest(BaseModel):
    username: str # FastAPI OAuth2 expect 'username'
    password: str

# --- Schemas para el Módulo de Contenido ---
class EspecialidadBase(BaseModel):
    nombre: str
    descripcion: Optional[str] = None

class Especialidad(EspecialidadBase):
    id: int
    class Config:
        from_attributes = True

class MedicoBase(BaseModel):
    nombre: str
    biografia: Optional[str] = None
    foto_url: Optional[str] = None
    especialidad_id: int

class Medico(MedicoBase):
    id: int
    especialidad: Especialidad
    class Config:
        from_attributes = True

# --- Schemas para el Módulo de Conversión (Citas) ---
class CitaCreate(BaseModel):
    nombre_paciente: str
    email_paciente: EmailStr
    telefono_paciente: str
    fecha_cita: datetime
    motivo: str
    medico_id: int

class CitaCreate(BaseModel):
    numero_identificacion: str
    nombre_paciente: str
    email_paciente: str
    telefono_paciente: str
    fecha_cita: str
    especialidad_id: str  # <--- Este es el campo que te falta
    medico_id: str        # <--- Asegúrate de tener este también
    motivo: str

# --- Schemas para el Blog ---
class PostBase(BaseModel):
    titulo: str
    contenido: str
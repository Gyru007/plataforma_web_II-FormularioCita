🚀 Guía de Instalación y Ejecución del Proyecto
Para correr este proyecto localmente, necesitarás abrir dos terminales distintas: una para el Frontend y otra para el Backend.

1️⃣ Configurar y Correr el Backend (Python / FastAPI)
Abre tu primera terminal, navega hasta la carpeta de tu backend (por ejemplo, cd backend) y ejecuta los siguientes comandos en orden:

Bash
# 1. Crea el entorno virtual (solo necesitas hacerlo la primera vez)
python -m venv venv

# 2. Activa el entorno virtual (en Windows)
.\venv\Scripts\activate

# Nota: Si usas Linux o Mac, el comando de activación es: source venv/bin/activate

# 3. Instala todas las dependencias del archivo requirements.txt
pip install -r requirements.txt

# 4. Ejecuta el servidor de FastAPI en modo desarrollo
uvicorn main:app --reload
(El backend debería quedar corriendo, usualmente en http://localhost:8000)

2️⃣ Configurar y Correr el Frontend (React / Vite)
Abre una segunda terminal, navega hasta la carpeta de tu frontend (por ejemplo, cd frontend o cd plataforma_web) y ejecuta:

Bash
# 1. Instala los paquetes de Node (solo la primera vez o si agregas paquetes nuevos)
npm install

# 2. Levanta el servidor de desarrollo de Vite
npm run dev
(El frontend debería quedar corriendo en http://localhost:5173)

🛑 Comandos útiles para el día a día
Para apagar los servidores: Presiona Ctrl + C en las terminales donde se están ejecutando.

Para salir del entorno virtual (Backend): Escribe el comando deactivate en la terminal.

from database import engine
from sqlalchemy import text

def verificar_conexion():
    print("Intentando conectar a la base de datos...")
    try:
        with engine.connect() as connection:
            # 1. Prueba de conexión básica
            connection.execute(text("SELECT 1"))
            print("✅ ¡Conexión exitosa! El servidor responde.")

            # 2. Inspección de la tabla que está fallando (aaa_entes)
            print("\n--- Estructura de la tabla 'aaa_entes' ---")
            result = connection.execute(text("DESCRIBE aaa_entes"))
            for column in result:
                print(f"Columna encontrada: {column[0]} | Tipo: {column[1]}")

            # 3. Inspección de la tabla de citas
            print("\n--- Estructura de la tabla 'tbl_paci_agenda_citas' ---")
            result_citas = connection.execute(text("DESCRIBE tbl_paci_agenda_citas"))
            for column in result_citas:
                print(f"Columna encontrada: {column[0]} | Tipo: {column[1]}")
                
    except Exception as e:
        print(f"❌ Error: {e}")

if __name__ == "__main__":
    verificar_conexion()
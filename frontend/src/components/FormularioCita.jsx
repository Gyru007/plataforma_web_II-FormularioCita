import React, { useState } from 'react';

const FormularioCita = () => {
  // 1. Estados del formulario (Ya incluye numero_identificacion)
  const [formData, setFormData] = useState({
    numero_identificacion: '', 
    nombre_paciente: '', 
    email_paciente: '', 
    telefono_paciente: '', 
    fecha_cita: '', 
    especialidad_id: '', 
    medico_id: '', 
    motivo: ''
  });
  const [status, setStatus] = useState({ type: '', message: '' });
  const [loading, setLoading] = useState(false);
  const [identidadVerificada, setIdentidadVerificada] = useState(false);
  
  const [medicos, setMedicos] = useState([]);
  const [especialidades, setEspecialidades] = useState([]);
  const [serverError, setServerError] = useState(false);

  // Cargar médicos dinámicamente desde la BD (tabla aaa_entes)
  React.useEffect(() => {
    // Cargar médicos
    fetch('http://localhost:8000/api/medicos')
      .then(response => response.json())
      .then(data => setMedicos(data))
      .catch(error => {
        console.error("Error al cargar médicos:", error);
        setServerError(true);
      });
      
    // Cargar especialidades
    fetch('http://localhost:8000/api/especialidades')
      .then(response => response.json())
      .then(data => setEspecialidades(data))
      .catch(error => {
        console.error("Error al cargar especialidades:", error);
        setServerError(true);
      });
  }, []);

  // --- ESTADOS PARA LA CONSULTA RÁPIDA ---
  const [identidadBusqueda, setIdentidadBusqueda] = useState('');
  const [citaEncontrada, setCitaEncontrada] = useState(null);

  // 2. Manejador de cambios en los inputs
  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  // Nueva función para verificar identidad antes de mostrar el resto
  const handleCheckIdentidad = async (e) => {
    e.preventDefault();
    if (!formData.numero_identificacion) return;
    
    setLoading(true);
    try {
      const response = await fetch(`http://localhost:8000/api/verificar-paciente/${formData.numero_identificacion}`);
      const data = await response.json();
      
      if (data.exists) {
        // Pre-rellenamos los datos encontrados
        setFormData({
          ...formData,
          nombre_paciente: data.paciente.paciente_cita,
          email_paciente: data.paciente.email_paciente,
          telefono_paciente: data.paciente.telefono_paciente
        });
      }
      setIdentidadVerificada(true);
    } catch (error) {
      console.error("Error al verificar:", error);
    } finally {
      setLoading(false);
    }
  };

  // 3. ENVÍO REAL AL BACKEND (FastAPI -> MySQL)
  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setStatus({ type: '', message: '' });

    try {
      const response = await fetch('http://localhost:8000/api/crear-cita', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData)
      });

      const data = await response.json();

      if (response.ok && data.success) {
        alert(`¡Cita solicitada con éxito! Tu ID de cita es: ${data.serial}`);
        setStatus({ type: 'success', message: 'Cita guardada correctamente.' });
        // Opcional: limpiar el formulario aquí
      } else {
        alert("Error al guardar la cita en la base de datos.");
      }
    } catch (error) {
      console.error("Error de conexión:", error);
      alert("No se pudo conectar con el servidor backend. ¿Está encendido FastAPI?");
    } finally {
      setLoading(false);
    }
  };

  // 4. BÚSQUEDA REAL EN EL BACKEND
  const handleSearchCita = async (e) => {
    e.preventDefault();
    setCitaEncontrada(null); 
    
    try {
      const response = await fetch(`http://localhost:8000/api/consultar-cita/${identidadBusqueda}`);
      const data = await response.json();

      if (response.ok && data.success) {
        setCitaEncontrada({
          serial: data.serial,
          paciente: data.paciente,
          fecha: data.fecha,
          especialidad: data.especialidad,
          medico: data.medico
        });
      } else {
        alert("Cita no encontrada. Verifica el número ingresado.");
      }
    } catch (error) {
      console.error("Error al buscar:", error);
      alert("Error de conexión con el servidor.");
    }
  };

  // 5. RENDERIZADO VISUAL (Tu código intacto, solo agregué el 'value' que faltaba al primer input)
  return (
    <section className="appointment-section" id="agendar">
      <div className="appointment-container" style={{ display: 'flex', gap: '50px', flexWrap: 'wrap', padding: '20px' }}>
        
        {/* COLUMNA IZQUIERDA: REGISTRO */}
        <div style={{ flex: 1, minWidth: '350px' }}>
          {serverError && (
            <div style={{ backgroundColor: '#fee2e2', color: '#991b1b', padding: '10px', borderRadius: '8px', marginBottom: '20px', border: '1px solid #f87171' }}>
              <strong>⚠️ Error de conexión:</strong> No se pudo conectar con el servidor de salud. Verifica que el Backend esté activo.
            </div>
          )}

          <h2>Reserva tu Cita Online</h2>
          
          {!identidadVerificada ? (
            <form onSubmit={handleCheckIdentidad} className="premium-form">
              <p>Por favor, ingresa tu identificación para comenzar.</p>
              <input 
                type="text" 
                name="numero_identificacion" 
                placeholder="Número de Identificación" 
                value={formData.numero_identificacion} 
                onChange={handleChange} 
                required 
              />
              <button type="submit" className="btn-cta" disabled={loading}>
                {loading ? 'Verificando...' : 'Continuar'}
              </button>
            </form>
          ) : (
            <form onSubmit={handleSubmit} className="premium-form">
              <p style={{color: '#2ecc71', fontSize: '0.9rem'}}>✓ Identificación: {formData.numero_identificacion}</p>
              <input type="text" name="nombre_paciente" placeholder="Nombre completo" value={formData.nombre_paciente} onChange={handleChange} required />           
              <input type="tel" name="telefono_paciente" placeholder="Teléfono Movil" value={formData.telefono_paciente} onChange={handleChange} required />
              <input type="email" name="email_paciente" placeholder="Correo electrónico" value={formData.email_paciente} onChange={handleChange} required />

              <input type="datetime-local" name="fecha_cita" value={formData.fecha_cita} onChange={handleChange} required />

              <select name="especialidad_id" value={formData.especialidad_id} onChange={handleChange} required>
                <option value="">Seleccione la especialidad</option>
                {especialidades.map(e => <option key={e.id_ente} value={e.id_ente}>{e.nombreEnte || e.nombre}</option>)}
              </select>

              <select name="medico_id" value={formData.medico_id} onChange={handleChange} required>
                <option value="">Seleccione un médico</option>
                {medicos.map(m => <option key={m.id_ente} value={m.id_ente}>{m.nombreEnte || m.nombre}</option>)}
              </select>
              
              <textarea name="motivo" placeholder="Motivo de consulta" value={formData.motivo} onChange={handleChange} required />
              
              <div style={{ display: 'flex', gap: '10px' }}>
                <button type="button" onClick={() => setIdentidadVerificada(false)} className="btn-cancel" style={{flex: 1}}>Atrás</button>
                <button type="submit" disabled={loading} className="btn-cta" style={{flex: 2}}>
                  {loading ? 'Enviando...' : 'Solicitar Agendamiento'}
                </button>
              </div>
            </form>
          )}
        </div>

        {/* COLUMNA DERECHA: CONSULTA RÁPIDA */}
        <div style={{ flex: 1, minWidth: '350px', borderLeft: '2px solid #f0f0f0', paddingLeft: '30px' }}>
          <h2>Consultar por Identificación</h2>
          <p style={{ fontSize: '0.9rem', color: '#666' }}>Ingresa tu número de identidad para ver el estado de tu cita.</p>
          
          <form onSubmit={handleSearchCita} className="premium-form">
            <input 
              type="text" 
              placeholder="Número de Identificación" 
              value={identidadBusqueda}
              onChange={(e) => setIdentidadBusqueda(e.target.value)}
              style={{ flex: 1 }}
              required 
            />
            <button type="submit" className="btn-cta">Buscar</button>
          </form>

          {/* MUESTRA DATOS REALES DE LA BASE DE DATOS */}
          {citaEncontrada && (
            <div className="info-cita-card" style={{ padding: '20px', border: '1px solid #ddd', borderRadius: '10px', background: '#fff' }}>
              <h4 style={{ marginTop: 0 }}>Datos de la Cita</h4>
              <p><strong>Código:</strong> {citaEncontrada.serial}</p>
              <p><strong>Paciente:</strong> {citaEncontrada.paciente}</p>
              <p><strong>Fecha:</strong> {new Date(citaEncontrada.fecha).toLocaleString()}</p>
              <p><strong>Especialidad:</strong> {citaEncontrada.especialidad}</p>
              <p><strong>Especialista:</strong> {citaEncontrada.medico}</p>
              
              <hr />
              
              <div style={{ display: 'flex', flexDirection: 'column', gap: '10px' }}>
                <button 
                  onClick={() => alert("Abriendo panel de reagendación...")} className="btn-cta">
                  Reagendar Fecha
                </button>
                <button 
                  onClick={() => { if(window.confirm("¿Seguro que deseas cancelar?")) setCitaEncontrada(null); }} className="btn-cancel" >
                  Anular Cita
                </button>
              </div>
            </div>
          )}
        </div>
      </div>
      
      <button 
        onClick={() => window.open('http://localhost/public_html/WebPaciente_Ver_5_2_DELL/utilidades_portal/index.php','_blank')} className="btn-cta" >
        Abrir WebPacientesWs
      </button>

    </section>
  );
};

export default FormularioCita;
import React, { useState, useEffect } from 'react';

// Definimos la URL base desde las variables de entorno
const API_BASE_URL = import.meta.env.VITE_API_URL || 'http://localhost:8000';

const FormularioCita = () => {
  const [formData, setFormData] = useState({
    numero_identificacion: '', nombre_paciente: '', email_paciente: '', 
    telefono_paciente: '', fecha_cita: '', especialidad_id: '', medico_id: '', motivo: ''
  });
  
  const [status, setStatus] = useState({ type: '', message: '' });
  const [loading, setLoading] = useState(false);
  const [identidadVerificada, setIdentidadVerificada] = useState(false);
  const [mensajeBienvenida, setMensajeBienvenida] = useState('');
  
  const [medicos, setMedicos] = useState([]);
  const [especialidades, setEspecialidades] = useState([]);
  const [serverError, setServerError] = useState(false);

  // ESTADOS PARA CONSULTA, REAGENDAMIENTO Y ANULACIÓN
  const [identidadBusqueda, setIdentidadBusqueda] = useState('');
  const [citasEncontradas, setCitasEncontradas] = useState([]);
  const [reagendandoId, setReagendandoId] = useState(null);
  const [nuevaFecha, setNuevaFecha] = useState('');

  useEffect(() => {
    fetch(`${API_BASE_URL}/api/medicos`)
      .then(res => res.json()).then(data => setMedicos(data))
      .catch(() => setServerError(true));
      
    fetch(`${API_BASE_URL}/api/especialidades`)
      .then(res => res.json()).then(data => setEspecialidades(data))
      .catch(() => setServerError(true));
  }, []);

  const handleChange = (e) => setFormData({ ...formData, [e.target.name]: e.target.value });

  // 1. VERIFICAR IDENTIDAD ANTES DE LLENAR EL FORMULARIO
  const handleCheckIdentidad = async (e) => {
    e.preventDefault();
    if (!formData.numero_identificacion) return;
    
    setLoading(true);
    try {
      const response = await fetch(`${API_BASE_URL}/api/verificar-paciente/${formData.numero_identificacion}`);
      const data = await response.json();
      
      if (data.exists) {
        setFormData({
          ...formData,
          nombre_paciente: data.paciente.paciente_cita || '',
          email_paciente: data.paciente.email_paciente || '',
          telefono_paciente: data.paciente.telefono_paciente || ''
        });
        setMensajeBienvenida(`¡Hola de nuevo, ${data.paciente.paciente_cita}! Tus datos han sido precargados.`);
      } else {
        setMensajeBienvenida('Paciente nuevo. Por favor, completa tus datos.');
      }
      setIdentidadVerificada(true);
    } catch (error) {
      console.error("Error al verificar:", error);
    } finally {
      setLoading(false);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    try {
      const response = await fetch(`${API_BASE_URL}/api/crear-cita`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData)
      });
      const data = await response.json();

      if (response.ok && data.success) {
        alert(`¡Cita solicitada con éxito! Tu ID es: ${data.serial}`);
        setIdentidadVerificada(false); // Reinicia el form
      } else {
        alert("Error al guardar la cita.");
      }
    } catch (error) {
      alert("Error de conexión con el servidor.");
    } finally {
      setLoading(false);
    }
  };

  // 2. BUSCAR TODAS LAS CITAS
  const handleSearchCita = async (e) => {
    if(e) e.preventDefault();
    setCitasEncontradas([]); 
    
    try {
      const response = await fetch(`${API_BASE_URL}/api/consultar-cita/${identidadBusqueda}`);
      const data = await response.json();

      if (response.ok && data.success) {
        setCitasEncontradas(data.citas);
      } else {
        alert("No se encontraron citas para esta identificación.");
      }
    } catch (error) {
      alert("No se encontraron citas o hubo un error de red.");
    }
  };

  // 3. ANULAR CITA
  const handleAnularCita = async (id_cita) => {
    if (!window.confirm("¿Estás seguro que deseas anular esta cita? Esta acción no se puede deshacer.")) return;
    
    try {
      const response = await fetch(`${API_BASE_URL}/api/anular-cita/${id_cita}`, { method: 'PUT' });
      if (response.ok) {
        alert("Cita anulada correctamente.");
        handleSearchCita(); // Recarga la lista
      }
    } catch (error) {
      alert("Error al intentar anular la cita.");
    }
  };

  // 4. REAGENDAR CITA
  const submitReagendar = async (id_cita) => {
    if (!nuevaFecha) return alert("Por favor, selecciona una nueva fecha y hora.");
    
    try {
      const response = await fetch(`${API_BASE_URL}/api/reagendar-cita/${id_cita}`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ nueva_fecha: nuevaFecha })
      });
      
      if (response.ok) {
        alert("Cita reagendada con éxito.");
        setReagendandoId(null);
        setNuevaFecha('');
        handleSearchCita(); // Recarga la lista
      }
    } catch (error) {
      alert("Error al intentar reagendar la cita.");
    }
  };

  return (
    <section className="appointment-section" id="agendar">
      <div className="appointment-container" style={{ display: 'flex', gap: '50px', flexWrap: 'wrap', padding: '20px' }}>
        
        {/* COLUMNA IZQUIERDA: REGISTRO */}
        <div style={{ flex: 1, minWidth: '350px' }}>
          {serverError && (
            <div style={{ backgroundColor: '#fee2e2', color: '#991b1b', padding: '10px', borderRadius: '8px', marginBottom: '20px', border: '1px solid #f87171' }}>
              <strong>⚠️ Error de conexión:</strong> Verifica que el Backend esté activo.
            </div>
          )}

          <h2>Reserva tu Cita Online</h2>
          
          {!identidadVerificada ? (
            <form onSubmit={handleCheckIdentidad} className="premium-form">
              <p>Por favor, ingresa tu identificación para comenzar.</p>
              <input 
                type="text" name="numero_identificacion" placeholder="Número de Identificación" 
                value={formData.numero_identificacion} onChange={handleChange} required 
              />
              <button type="submit" className="btn-cta" disabled={loading}>
                {loading ? 'Verificando...' : 'Siguiente paso'}
              </button>
            </form>
          ) : (
            <form onSubmit={handleSubmit} className="premium-form">
              <div style={{backgroundColor: '#e8f5e9', padding: '10px', borderRadius: '5px', marginBottom: '15px', color: '#2e7d32'}}>
                {mensajeBienvenida}
              </div>
              
              <input type="text" name="numero_identificacion" value={formData.numero_identificacion} readOnly style={{backgroundColor: '#f5f5f5'}} />
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
                  {loading ? 'Enviando...' : 'Confirmar Cita'}
                </button>
              </div>
            </form>
          )}
        </div>

        {/* COLUMNA DERECHA: CONSULTA RÁPIDA */}
        <div style={{ flex: 1, minWidth: '350px', borderLeft: '2px solid #f0f0f0', paddingLeft: '30px' }}>
          <h2>Mis Citas</h2>
          <p style={{ fontSize: '0.9rem', color: '#666' }}>Consulta, reagenda o anula tus citas.</p>
          
          <form onSubmit={handleSearchCita} className="premium-form" style={{display: 'flex', gap: '10px'}}>
            <input 
              type="text" placeholder="Número de Cédula/ID" value={identidadBusqueda}
              onChange={(e) => setIdentidadBusqueda(e.target.value)} style={{ flex: 1, marginBottom: 0 }} required 
            />
            <button type="submit" className="btn-cta" style={{width: 'auto'}}>Buscar</button>
          </form>

          <div style={{ marginTop: '20px', display: 'flex', flexDirection: 'column', gap: '15px' }}>
            {citasEncontradas.map((cita) => (
              <div key={cita.serial} className="info-cita-card" style={{ padding: '15px', border: '1px solid #ddd', borderRadius: '8px', background: '#fff', position: 'relative' }}>
                
                {/* Etiqueta de estado */}
                <span style={{ position: 'absolute', top: '15px', right: '15px', padding: '3px 8px', borderRadius: '12px', fontSize: '0.8rem', fontWeight: 'bold', backgroundColor: cita.status === 'Anulada' ? '#fee2e2' : '#e0f2f1', color: cita.status === 'Anulada' ? '#ef4444' : '#00897b' }}>
                  {cita.status}
                </span>

                <h4 style={{ margin: '0 0 10px 0', color: '#333' }}>Cita #{cita.serial}</h4>
                <p style={{margin: '5px 0'}}><strong>Fecha:</strong> {new Date(cita.fecha).toLocaleString()}</p>
                <p style={{margin: '5px 0'}}><strong>Especialidad:</strong> {cita.especialidad}</p>
                <p style={{margin: '5px 0'}}><strong>Especialista:</strong> {cita.medico}</p>
                
                {cita.status !== 'Anulada' && (
                  <div style={{ marginTop: '15px' }}>
                    {reagendandoId === cita.serial ? (
                      <div style={{ display: 'flex', gap: '5px', marginTop: '10px' }}>
                        <input type="datetime-local" value={nuevaFecha} onChange={(e) => setNuevaFecha(e.target.value)} style={{marginBottom: 0, padding: '8px'}} />
                        <button onClick={() => submitReagendar(cita.serial)} className="btn-cta" style={{padding: '8px 15px'}}>Guardar</button>
                        <button onClick={() => setReagendandoId(null)} className="btn-cancel" style={{padding: '8px 15px'}}>X</button>
                      </div>
                    ) : (
                      <div style={{ display: 'flex', gap: '10px' }}>
                        <button onClick={() => setReagendandoId(cita.serial)} className="btn-cta" style={{flex: 1, padding: '8px', fontSize: '0.9rem'}}>Reagendar</button>
                        <button onClick={() => handleAnularCita(cita.serial)} className="btn-cancel" style={{flex: 1, padding: '8px', fontSize: '0.9rem'}}>Anular</button>
                      </div>
                    )}
                  </div>
                )}
              </div>
            ))}
          </div>
        </div>
      </div>
    </section>
  );
};

export default FormularioCita;
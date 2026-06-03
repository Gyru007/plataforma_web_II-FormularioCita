import React, { useEffect, useState } from 'react';

const GestionCitas = () => {
  const [citas, setCitas] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const token = localStorage.getItem('token');
    fetch('http://localhost:8000/citas/pendientes', {
      headers: { 'Authorization': `Bearer ${token}` }
    })
      .then(res => res.json())
      .then(data => {
        setCitas(data);
        setLoading(false);
      })
      .catch(err => console.error("Error al cargar citas:", err));
  }, []);

  return (
    <div className="admin-content">
      <h2>Control de Citas Pendientes</h2>
      <div className="card" style={{ padding: '0' }}>
        <table style={{ width: '100%', borderCollapse: 'collapse' }}>
          <thead>
            <tr style={{ backgroundColor: '#f8f9fa', borderBottom: '2px solid #eee' }}>
              <th style={{ padding: '15px', textAlign: 'left' }}>Paciente</th>
              <th style={{ padding: '15px', textAlign: 'left' }}>Fecha/Hora</th>
              <th style={{ padding: '15px', textAlign: 'left' }}>Motivo</th>
              <th style={{ padding: '15px', textAlign: 'left' }}>Estado</th>
              <th style={{ padding: '15px', textAlign: 'left' }}>Acciones</th>
            </tr>
          </thead>
          <tbody>
            {loading ? (
              <tr><td colSpan="5" style={{ padding: '20px', textAlign: 'center' }}>Buscando citas...</td></tr>
            ) : citas.map(cita => (
              <tr key={cita.id} style={{ borderBottom: '1px solid #eee' }}>
                <td style={{ padding: '15px' }}>{cita.nombre_paciente}</td>
                <td style={{ padding: '15px' }}>{new Date(cita.fecha_cita).toLocaleString()}</td>
                <td style={{ padding: '15px' }}>{cita.motivo}</td>
                <td style={{ padding: '15px' }}>
                  <span style={{ color: '#f39c12' }}>● {cita.estado}</span>
                </td>
                <td style={{ padding: '15px' }}>
                  <button className="btn-cta" style={{ padding: '5px 10px', fontSize: '0.8rem' }}>Atender</button>
                </td>
              </tr>
            ))}
            {!loading && citas.length === 0 && (
              <tr><td colSpan="5" style={{ padding: '20px', textAlign: 'center' }}>No hay citas pendientes hoy.</td></tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default GestionCitas;
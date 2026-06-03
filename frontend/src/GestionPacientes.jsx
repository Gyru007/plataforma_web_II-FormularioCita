import React, { useEffect, useState } from 'react';

const GestionPacientes = () => {
  const [pacientes, setPacientes] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const token = localStorage.getItem('token');
    // Simulamos la carga de pacientes usando la lista de usuarios por ahora
    fetch('http://localhost:8000/api/usuarios', {
      headers: { 'Authorization': `Bearer ${token}` }
    })
      .then(res => res.json())
      .then(data => {
        setPacientes(Array.isArray(data) ? data : []);
        setLoading(false);
      })
      .catch(err => console.error("Error al cargar pacientes:", err));
  }, []);

  return (
    <div className="admin-content">
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '20px' }}>
        <h2>Gestión de Pacientes</h2>
      </div>
      
      <div className="card" style={{ padding: '0' }}>
        <table style={{ width: '100%', borderCollapse: 'collapse', textAlign: 'left' }}>
          <thead>
            <tr style={{ backgroundColor: '#f8f9fa', borderBottom: '2px solid #eee' }}>
              <th style={{ padding: '15px' }}>Nombre</th>
              <th style={{ padding: '15px' }}>Email</th>
              <th style={{ padding: '15px' }}>Estado</th>
              <th style={{ padding: '15px' }}>Acciones</th>
            </tr>
          </thead>
          <tbody>
            {loading ? (
              <tr><td colSpan="4" style={{ padding: '20px', textAlign: 'center' }}>Cargando pacientes...</td></tr>
            ) : pacientes.map(paciente => (
              <tr key={paciente.id} style={{ borderBottom: '1px solid #eee' }}>
                <td style={{ padding: '15px' }}>{paciente.nombre}</td>
                <td style={{ padding: '15px' }}>{paciente.email}</td>
                <td style={{ padding: '15px' }}>
                   <span style={{ color: '#2ecc71' }}>● Activo</span>
                </td>
                <td style={{ padding: '15px' }}>
                  <button style={{ color: 'var(--primary-blue)', background: 'none', border: 'none', cursor: 'pointer' }}>Ver Ficha</button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default GestionPacientes;
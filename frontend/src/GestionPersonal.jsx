import React, { useEffect, useState } from 'react';

const GestionPersonal = () => {
  const [usuarios, setUsuarios] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const token = localStorage.getItem('token'); // Asumiendo que guardas el token aquí
    fetch('http://localhost:8000/api/usuarios', {
      headers: { 'Authorization': `Bearer ${token}` }
    })
      .then(res => res.json())
      .then(data => {
        setUsuarios(Array.isArray(data) ? data : []);
        setLoading(false);
      })
      .catch(err => console.error("Error al cargar personal:", err));
  }, []);

  return (
    <div className="admin-content">
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '20px' }}>
        <h2>Gestión de Personal</h2>
        <button className="btn-cta">+ Nuevo Usuario</button>
      </div>
      
      <div className="card" style={{ padding: '0' }}>
        <table style={{ width: '100%', borderCollapse: 'collapse', textAlign: 'left' }}>
          <thead>
            <tr style={{ backgroundColor: '#f8f9fa', borderBottom: '2px solid #eee' }}>
              <th style={{ padding: '15px' }}>Nombre</th>
              <th style={{ padding: '15px' }}>Email</th>
              <th style={{ padding: '15px' }}>Rol</th>
              <th style={{ padding: '15px' }}>Acciones</th>
            </tr>
          </thead>
          <tbody>
            {loading ? (
              <tr><td colSpan="4" style={{ padding: '20px', textAlign: 'center' }}>Cargando personal...</td></tr>
            ) : usuarios.map(user => (
              <tr key={user.id} style={{ borderBottom: '1px solid #eee' }}>
                <td style={{ padding: '15px' }}>{user.nombre}</td>
                <td style={{ padding: '15px' }}>{user.email}</td>
                <td style={{ padding: '15px' }}>
                  <span className={`badge ${user.rol}`} style={{ padding: '5px 10px', borderRadius: '15px', fontSize: '0.8rem', backgroundColor: user.rol === 'admin' ? '#ebf5ff' : '#f3f4f6' }}>
                    {user.rol.toUpperCase()}
                  </span>
                </td>
                <td style={{ padding: '15px' }}>
                  <button style={{ marginRight: '10px', color: 'var(--primary-blue)', background: 'none', border: 'none', cursor: 'pointer' }}>Editar</button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default GestionPersonal;
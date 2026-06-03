import React, { useState, useEffect } from 'react';
import { getMedicos } from '../services/api';

const ListaMedicos = () => {
  const [medicos, setMedicos] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchMedicos = async () => {
      try {
        const data = await getMedicos();
        setMedicos(data);
      } catch (err) {
        setError("No se pudieron cargar los perfiles médicos en este momento.");
        console.error("Error fetching medicos:", err);
      } finally {
        setLoading(false);
      }
    };
    fetchMedicos();
  }, []);

  if (loading) return <div style={{ textAlign: 'center', padding: '50px', color: 'var(--primary-blue)' }}>Cargando especialistas...</div>;
  if (error) return <div style={{ textAlign: 'center', color: '#991B1B', padding: '50px' }}>{error}</div>;

  return (
    <section id="medicos" style={{ padding: '80px 5%', background: 'var(--pure-white)' }}>
      <div style={{ maxWidth: '1200px', margin: '0 auto' }}>
        <h2 style={{ textAlign: 'center', marginBottom: '10px', fontSize: '2.5rem', fontWeight: '800', color: 'var(--charcoal)' }}>Nuestros Especialistas</h2>
        <p style={{ textAlign: 'center', marginBottom: '60px', color: '#666' }}>Excelencia médica y calidez humana al servicio de su salud.</p>
        
        <div style={{
          display: 'grid',
          gridTemplateColumns: 'repeat(auto-fit, minmax(280px, 1fr))',
          gap: '30px'
        }}>
          {medicos.map((medico) => (
            <div key={medico.id} className="card" style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', textAlign: 'center' }}>
              <div style={{
                width: '140px',
                height: '140px',
                borderRadius: '50%',
                backgroundColor: '#F3F4F6',
                marginBottom: '20px',
                overflow: 'hidden',
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
                border: '4px solid #F9FAFB'
              }}>
                {medico.foto_url ? (
                  <img src={medico.foto_url} alt={medico.nombre} style={{ width: '100%', height: '100%', objectFit: 'cover' }} />
                ) : (
                  <i className="fas fa-user-md" style={{ fontSize: '3.5rem', color: 'var(--primary-blue)', opacity: 0.8 }}></i>
                )}
              </div>
              <h3 style={{ fontSize: '1.4rem', marginBottom: '8px' }}>{medico.nombre}</h3>
              <span style={{ color: 'var(--primary-blue)', fontWeight: '700', fontSize: '0.9rem', textTransform: 'uppercase', letterSpacing: '1px', marginBottom: '15px' }}>
                {medico.especialidad?.nombre || 'Especialista'}
              </span>
              <p style={{ fontSize: '0.95rem', color: '#555', marginBottom: '25px', flexGrow: 1 }}>
                {medico.biografia || "Especialista comprometido con la salud y bienestar integral de sus pacientes."}
              </p>
              <button className="btn-login-outline" style={{ width: '100%' }}>Ver Perfil Detallado</button>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};

export default ListaMedicos;
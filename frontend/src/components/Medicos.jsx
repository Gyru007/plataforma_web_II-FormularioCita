import React, { useState, useEffect } from 'react';
import { getMedicos } from '../services/api';

const Medicos = () => {
  const [medicos, setMedicos] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchMedicos = async () => {
      try {
        const data = await getMedicos();
        setMedicos(data);
      } catch (error) {
        console.error("Error al cargar médicos:", error);
      } finally {
        setLoading(false);
      }
    };
    fetchMedicos();
  }, []);

  if (loading) return <div style={{ textAlign: 'center', padding: '40px' }}>Cargando equipo médico...</div>;

  return (
    <section style={styles.section} id="medicos">
      <div style={styles.container}>
        <div style={styles.header}>
          <h2 style={styles.title}>Nuestro Equipo Médico</h2>
          <p style={styles.subtitle}>
            Profesionales altamente calificados comprometidos con tu bienestar y el de tu familia.
          </p>
        </div>

        <div style={styles.grid}>
          {medicos.map((medico) => (
            <div key={medico.id || medico.id_ente} style={styles.card} className="medico-card">
              <div style={styles.imageContainer}>
                <img 
                  src={medico.foto_url || "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?auto=format&fit=crop&q=80&w=400"} 
                  alt={medico.nombre || medico.nombreEnte} 
                  style={styles.image} 
                />
              </div>
              <div style={styles.info}>
                <span style={styles.badge}>
                  {medico.especialidad?.nombre || medico.especialidad || 'Especialista'}
                </span>
                <h3 style={styles.name}>{medico.nombre || medico.nombreEnte}</h3>
                <p style={styles.description}>{medico.biografia || medico.descripcion || "Profesional comprometido con la excelencia médica."}</p>
                <button style={styles.button} className="btn-login-outline">Ver Perfil Completo</button>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};

const styles = {
  section: {
    padding: '80px 20px',
    backgroundColor: '#F9FAFB',
  },
  container: {
    maxWidth: '1200px',
    margin: '0 auto',
  },
  header: {
    textAlign: 'center',
    marginBottom: '50px',
  },
  title: {
    fontSize: '2.5rem',
    color: '#111827',
    fontWeight: '800',
    marginBottom: '15px',
  },
  subtitle: {
    fontSize: '1.1rem',
    color: '#6B7280',
    maxWidth: '600px',
    margin: '0 auto',
  },
  grid: {
    display: 'grid',
    gridTemplateColumns: 'repeat(auto-fit, minmax(260px, 1fr))',
    gap: '30px',
  },
  card: {
    backgroundColor: '#FFFFFF',
    borderRadius: '16px',
    overflow: 'hidden',
    boxShadow: '0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06)',
    display: 'flex',
    flexDirection: 'column',
  },
  imageContainer: {
    height: '240px',
    width: '100%',
    overflow: 'hidden',
  },
  image: {
    width: '100%',
    height: '100%',
    objectFit: 'cover',
  },
  info: {
    padding: '24px',
    display: 'flex',
    flexDirection: 'column',
    flexGrow: 1,
  },
  badge: {
    backgroundColor: '#EFF6FF',
    color: '#0056D2',
    fontSize: '0.75rem',
    fontWeight: '700',
    padding: '4px 12px',
    borderRadius: '999px',
    textTransform: 'uppercase',
    alignSelf: 'flex-start',
    marginBottom: '12px',
  },
  name: {
    fontSize: '1.25rem',
    color: '#111827',
    fontWeight: '700',
    marginBottom: '8px',
  },
  description: {
    fontSize: '0.95rem',
    color: '#4B5563',
    lineHeight: '1.5',
    marginBottom: '20px',
    flexGrow: 1,
  },
  button: {
    width: '100%',
    textDecoration: 'none',
    textAlign: 'center'
  }
};

export default Medicos;
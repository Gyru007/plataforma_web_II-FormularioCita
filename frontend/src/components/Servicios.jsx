import React from 'react';

const servicios = [
  { icono: 'fas fa-heartbeat', titulo: 'Cardiología', desc: 'Cuidado integral del corazón y sistema circulatorio.' },
  { icono: 'fas fa-stethoscope', titulo: 'Medicina General', desc: 'Atención primaria y seguimiento para toda la familia.' },
  { icono: 'fas fa-baby', titulo: 'Pediatría', desc: 'Salud y bienestar para los más pequeños de la casa.' },
  { icono: 'fas fa-brain', titulo: 'Neurología', desc: 'Diagnóstico y tratamiento de enfermedades del sistema nervioso.' }
];

const Servicios = () => {
  return (
    <section id="servicios" style={{ padding: '80px 5%', backgroundColor: '#F9FAFB' }}>
      <div style={{ maxWidth: '1200px', margin: '0 auto' }}>
        <h2 style={{ textAlign: 'center', marginBottom: '10px', fontSize: '2.5rem', fontWeight: '800', color: 'var(--charcoal)' }}>Nuestros Servicios</h2>
        <p style={{ textAlign: 'center', marginBottom: '60px', color: '#666' }}>Ofrecemos una amplia gama de especialidades para un cuidado completo.</p>
        
        <div style={{
          display: 'grid',
          gridTemplateColumns: 'repeat(auto-fit, minmax(250px, 1fr))',
          gap: '30px'
        }}>
          {servicios.map((servicio, index) => (
            <div key={index} className="card" style={{ textAlign: 'center' }}>
              <i className={servicio.icono} style={{ fontSize: '2.5rem', color: 'var(--primary-blue)', marginBottom: '20px' }}></i>
              <h3 style={{ fontSize: '1.4rem', marginBottom: '10px' }}>{servicio.titulo}</h3>
              <p style={{ color: '#555' }}>{servicio.desc}</p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};

export default Servicios;
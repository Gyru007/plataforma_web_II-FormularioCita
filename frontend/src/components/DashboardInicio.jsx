import React from 'react';

const DashboardInicio = () => {
  // Estos datos los conectaremos al backend más adelante
  const stats = [
    { titulo: 'Citas para Hoy', valor: '12', icono: 'fa-calendar-day', color: '#0056D2', bg: '#EFF6FF' },
    { titulo: 'Pacientes Nuevos', valor: '5', icono: 'fa-user-plus', color: '#10B981', bg: '#ECFDF5' },
    { titulo: 'Citas Pendientes', valor: '8', icono: 'fa-clock', color: '#F59E0B', bg: '#FFFBEB' },
    { titulo: 'Total Médicos', valor: '24', icono: 'fa-user-md', color: '#8B5CF6', bg: '#F5F3FF' }
  ];

  return (
    <div>
      <div style={{ marginBottom: '24px' }}>
        <h1 style={{ fontSize: '2rem', margin: '0 0 8px 0', color: '#111827' }}>Bienvenido al Panel</h1>
        <p style={{ color: '#6B7280', margin: 0 }}>Aquí tienes un resumen de la actividad de hoy en la clínica.</p>
      </div>

      {/* Tarjetas de Estadísticas */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(240px, 1fr))', gap: '24px', marginBottom: '32px' }}>
        {stats.map((stat, index) => (
          <div key={index} style={styles.card}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
              <div>
                <p style={{ margin: '0 0 8px 0', color: '#6B7280', fontSize: '0.9rem', fontWeight: 600 }}>{stat.titulo}</p>
                <h3 style={{ margin: 0, fontSize: '2rem', color: '#111827', fontWeight: 800 }}>{stat.valor}</h3>
              </div>
              <div style={{ width: '56px', height: '56px', borderRadius: '12px', backgroundColor: stat.bg, display: 'flex', justifyContent: 'center', alignItems: 'center' }}>
                <i className={`fas ${stat.icono}`} style={{ fontSize: '24px', color: stat.color }}></i>
              </div>
            </div>
          </div>
        ))}
      </div>

      {/* Tabla de Citas Recientes (Mockup) */}
      <div style={styles.card}>
        <h2 style={{ fontSize: '1.2rem', marginBottom: '16px', color: '#111827' }}>Próximas Citas (Hoy)</h2>
        <div style={{ overflowX: 'auto' }}>
          <table style={styles.table}>
            <thead>
              <tr>
                <th style={styles.th}>Paciente</th>
                <th style={styles.th}>Especialidad</th>
                <th style={styles.th}>Hora</th>
                <th style={styles.th}>Estado</th>
                <th style={styles.th}>Acción</th>
              </tr>
            </thead>
            <tbody>
              {[1, 2, 3].map((item) => (
                <tr key={item} style={{ borderBottom: '1px solid #E5E7EB' }}>
                  <td style={styles.td}><strong>Juan Pérez {item}</strong><br/><span style={{fontSize:'0.85rem', color:'#6B7280'}}>juanp{item}@correo.com</span></td>
                  <td style={styles.td}>Cardiología</td>
                  <td style={styles.td}>10:{item}0 AM</td>
                  <td style={styles.td}>
                    <span style={{ backgroundColor: '#DBEAFE', color: '#1E40AF', padding: '4px 12px', borderRadius: '999px', fontSize: '0.85rem', fontWeight: 600 }}>Confirmada</span>
                  </td>
                  <td style={styles.td}>
                    <button style={styles.btnAction}>Ver Detalle</button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
};

const styles = {
  card: {
    backgroundColor: '#FFFFFF',
    borderRadius: '12px',
    padding: '24px',
    boxShadow: '0 1px 3px rgba(0,0,0,0.1)',
    border: '1px solid #E5E7EB'
  },
  table: { width: '100%', borderCollapse: 'collapse', textAlign: 'left' },
  th: { padding: '12px 16px', backgroundColor: '#F9FAFB', color: '#4B5563', fontWeight: 600, fontSize: '0.9rem', borderBottom: '1px solid #E5E7EB' },
  td: { padding: '16px', verticalAlign: 'middle', color: '#111827' },
  btnAction: {
    padding: '6px 12px',
    backgroundColor: 'transparent',
    border: '1px solid #0056D2',
    color: '#0056D2',
    borderRadius: '6px',
    cursor: 'pointer'
  }
};

export default DashboardInicio;
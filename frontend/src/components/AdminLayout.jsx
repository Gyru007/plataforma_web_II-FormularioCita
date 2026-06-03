import React from 'react';
import { useAuth } from './AuthContext';
import { useNavigate } from 'react-router-dom';

const AdminLayout = ({ children }) => {
  const { logout, user } = useAuth();
  const navigate = useNavigate();

  const handleLogout = () => {
    if (window.confirm("¿Estás seguro de que deseas cerrar sesión?")) {
      logout();
      navigate('/admin/login');
    }
  };

  return (
    <div style={styles.layout}>
      {/* Barra Lateral (Sidebar) */}
      <aside style={styles.sidebar}>
        <div style={styles.sidebarHeader}>
          <span style={{ color: '#0056D2', fontWeight: 900, fontSize: '1.5rem' }}>REAL</span>
          <span style={{ fontWeight: 600, fontSize: '1.2rem', marginLeft: '5px' }}>MÉNDEZ</span>
        </div>
        
        <nav style={styles.nav}>
          <ul style={{ listStyle: 'none', padding: 0, margin: 0, display: 'flex', flexDirection: 'column', gap: '4px' }}>
            <li style={styles.navItemActive}>
              <i className="fas fa-home" style={styles.icon}></i> Inicio
            </li>
            <li style={styles.navItem}>
              <i className="fas fa-calendar-check" style={styles.icon}></i> Gestión de Citas
            </li>
            <li style={styles.navItem}>
              <i className="fas fa-users" style={styles.icon}></i> Pacientes
            </li>
            <li style={styles.navItem}>
              <i className="fas fa-user-shield" style={styles.icon}></i> Personal
            </li>
          </ul>
        </nav>

        <div style={styles.sidebarFooter}>
          <button style={styles.logoutButton} onClick={handleLogout}>
            <i className="fas fa-sign-out-alt"></i> Cerrar Sesión
          </button>
        </div>
      </aside>

      {/* Contenido Principal */}
      <div style={styles.mainContent}>
        {/* Barra Superior (Topbar) */}
        <header style={styles.topbar}>
          <h2 style={{ fontSize: '1.5rem', fontWeight: 600, margin: 0 }}>Panel de Administración</h2>
          <div style={styles.userInfo}>
            <div style={styles.avatar}>A</div>
            <div>
              <p style={{ margin: 0, fontWeight: 700, fontSize: '0.9rem' }}>{user?.rol === 'admin' ? 'Administrador' : 'Personal'}</p>
              <p style={{ margin: 0, fontSize: '0.8rem', color: '#666' }}>{user?.email}</p>
            </div>
          </div>
        </header>

        {/* Aquí se inyecta la vista actual (Dashboard, Citas, etc.) */}
        <main style={styles.pageContent}>
          {children}
        </main>
      </div>
    </div>
  );
};

const styles = {
  layout: { display: 'flex', minHeight: '100vh', backgroundColor: '#F3F4F6' },
  sidebar: { width: '260px', backgroundColor: '#FFFFFF', borderRight: '1px solid #E5E7EB', display: 'flex', flexDirection: 'column' },
  sidebarHeader: { padding: '24px', borderBottom: '1px solid #E5E7EB', textAlign: 'center' },
  nav: { padding: '20px 10px', flex: 1 },
  navItem: { padding: '12px 16px', margin: '4px 0', borderRadius: '8px', cursor: 'pointer', color: '#4B5563', transition: 'all 0.3s', display: 'flex', alignItems: 'center' },
  navItemActive: { padding: '12px 16px', margin: '4px 0', borderRadius: '8px', cursor: 'pointer', backgroundColor: '#EFF6FF', color: '#0056D2', fontWeight: 600, display: 'flex', alignItems: 'center' },
  icon: { width: '24px', marginRight: '10px' },
  sidebarFooter: { padding: '20px', borderTop: '1px solid #E5E7EB' },
  logoutButton: { width: '100%', padding: '10px', backgroundColor: '#FEE2E2', color: '#991B1B', border: 'none', borderRadius: '6px', cursor: 'pointer', fontWeight: 600 },
  mainContent: { flex: 1, display: 'flex', flexDirection: 'column' },
  topbar: { backgroundColor: '#FFFFFF', padding: '16px 32px', display: 'flex', justifyContent: 'space-between', alignItems: 'center', borderBottom: '1px solid #E5E7EB' },
  userInfo: { display: 'flex', alignItems: 'center', gap: '12px' },
  avatar: { width: '40px', height: '40px', backgroundColor: '#0056D2', color: 'white', borderRadius: '50%', display: 'flex', justifyContent: 'center', alignItems: 'center', fontWeight: 'bold' },
  pageContent: { padding: '32px', overflowY: 'auto', flex: 1 }
};

export default AdminLayout;
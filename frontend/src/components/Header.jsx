import React from 'react';
import { Link } from 'react-router-dom'; // <-- 1. Agrega esta importación arriba

const Header = () => {
  return (
    <header className="main-header">
      <div className="logo">
        <span style={{color: '#0056D2', fontWeight: 800}}>REAL</span> MÉNDEZ
      </div>
      <nav>
        <ul>
          <li><a href="#servicios">Servicios</a></li>
          <li><a href="#medicos">Médicos</a></li>
          <li><a href="#blog">Salud</a></li>
          <li><a href="#agendar" className="nav-cta">Citas</a></li>
        </ul>
      </nav>
      <div className="auth-zone">
        <Link to="/admin/login" className="btn-login-outline" style={{ textDecoration: 'none' }}>
          Iniciar Sesión
        </Link>
      </div>
    </header>
  );
};

export default Header;
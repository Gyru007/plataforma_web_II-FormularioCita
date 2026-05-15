import React, { useState } from 'react';
import { useAuth } from './AuthContext';
import { useNavigate } from 'react-router-dom';

const Login = () => {
  const { login } = useAuth(); // Importamos la función login desde nuestro contexto
  const navigate = useNavigate();
  const [formData, setFormData] = useState({
    username: '', // FastAPI espera que el campo se llame 'username', aunque sea un email
    password: ''
  });
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value
    });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setError('');

    try {
      // Transformar los datos al formato que espera OAuth2PasswordRequestForm en FastAPI
      const urlEncodedData = new URLSearchParams();
      urlEncodedData.append('username', formData.username);
      urlEncodedData.append('password', formData.password);

      // Cambia la URL si tu backend está en otro puerto/dominio
      const response = await fetch('http://localhost:8000/login', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: urlEncodedData,
      });

      const data = await response.json();

      if (!response.ok) {
        throw new Error(data.detail || 'Correo o contraseña incorrectos');
      }

      // Usar la función del contexto para guardar el token y decodificar el usuario
      login(data.access_token);
      
      // Redirigir al panel de administración tras iniciar sesión
      navigate('/admin');
      
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div style={styles.container}>
      <div style={styles.card}>
        <div style={styles.header}>
          <h1 style={{ margin: 0, fontSize: '1.8rem' }}>
            <span style={{ color: '#0056D2', fontWeight: 900 }}>REAL</span>
            <span style={{ fontWeight: 600, marginLeft: '6px', color: '#111827' }}>MÉNDEZ</span>
          </h1>
          <p style={{ color: '#6B7280', marginTop: '8px' }}>Acceso al Panel de Administración</p>
        </div>

        {error && (
          <div style={styles.errorBox}>
            {error}
          </div>
        )}

        <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
          <div>
            <label style={styles.label}>Correo Electrónico</label>
            <input type="email" name="username" value={formData.username} onChange={handleChange} style={styles.input} required placeholder="admin@realmendez.com" />
          </div>
          
          <div>
            <label style={styles.label}>Contraseña</label>
            <input type="password" name="password" value={formData.password} onChange={handleChange} style={styles.input} required placeholder="••••••••" />
          </div>

          <button type="submit" disabled={loading} style={styles.button}>
            {loading ? 'Iniciando sesión...' : 'Ingresar al Panel'}
          </button>
        </form>
        
        <div style={{ textAlign: 'center', marginTop: '20px' }}>
          <a href="/" style={{ color: '#0056D2', textDecoration: 'none', fontSize: '0.9rem', fontWeight: 600 }}>← Volver al sitio público</a>
        </div>
      </div>
    </div>
  );
};

const styles = {
  container: { display: 'flex', justifyContent: 'center', alignItems: 'center', minHeight: '100vh', backgroundColor: '#F3F4F6', padding: '20px' },
  card: { backgroundColor: '#FFFFFF', padding: '40px', borderRadius: '12px', boxShadow: '0 4px 6px rgba(0,0,0,0.05), 0 1px 3px rgba(0,0,0,0.1)', width: '100%', maxWidth: '400px' },
  header: { textAlign: 'center', marginBottom: '32px' },
  errorBox: { backgroundColor: '#FEE2E2', color: '#991B1B', padding: '12px', borderRadius: '6px', marginBottom: '16px', fontSize: '0.9rem', textAlign: 'center', border: '1px solid #F87171' },
  label: { display: 'block', marginBottom: '6px', fontSize: '0.9rem', fontWeight: 600, color: '#374151' },
  input: { width: '100%', padding: '10px 12px', border: '1px solid #D1D5DB', borderRadius: '6px', fontSize: '1rem', outline: 'none', boxSizing: 'border-box' },
  button: { width: '100%', padding: '12px', backgroundColor: '#0056D2', color: 'white', border: 'none', borderRadius: '6px', fontSize: '1rem', fontWeight: 600, cursor: 'pointer', marginTop: '8px', transition: 'background-color 0.2s' }
};

export default Login;
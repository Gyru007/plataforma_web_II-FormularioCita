import React, { createContext, useState, useEffect, useContext } from 'react';

// 1. Creamos el contexto
const AuthContext = createContext();

// 2. Creamos el proveedor del contexto que envolverá nuestra aplicación
export const AuthProvider = ({ children }) => {
  const [token, setToken] = useState(localStorage.getItem('token') || null);
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  // Este efecto se ejecuta cada vez que cambia el token
  useEffect(() => {
    if (token) {
      try {
        // El JWT tiene 3 partes separadas por punto. El payload es la segunda.
        const payloadBase64 = token.split('.')[1];
        // Decodificamos de Base64 a string y luego a JSON
        const decodedPayload = JSON.parse(atob(payloadBase64));
        
        setUser({
          email: decodedPayload.sub, // 'sub' es donde FastAPI guarda el identificador (email)
          rol: decodedPayload.rol    // Tu backend incluye el 'rol' en el token
        });
      } catch (error) {
        console.error('Error al decodificar el token:', error);
        logout(); // Si el token es inválido, cerramos sesión por seguridad
      }
    } else {
      setUser(null);
    }
    setLoading(false);
  }, [token]);

  const login = (newToken) => {
    localStorage.setItem('token', newToken);
    setToken(newToken);
  };

  const logout = () => {
    localStorage.removeItem('token');
    setToken(null);
    setUser(null);
  };

  return (
    <AuthContext.Provider value={{ token, user, login, logout, isAuthenticated: !!token, loading }}>
      {!loading && children}
    </AuthContext.Provider>
  );
};

// 3. Hook personalizado para usar el contexto fácilmente en cualquier componente
export const useAuth = () => useContext(AuthContext);
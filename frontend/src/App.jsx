import React from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';

// Restauramos los estilos globales de tu página pública
import './App.css'; 

// Contexto de Autenticación
import { AuthProvider } from './components/AuthContext';
import ProtectedRoute from './components/ProtectedRoute';

// Componentes Públicos
import Header from './components/Header';
import HeroSlider from './components/HeroSlider';
import Servicios from './components/Servicios';
import Medicos from './components/Medicos';
import FormularioCita from './components/FormularioCita';
import WhatsAppWidget from './components/WhatsAppWidget';

// Componentes Privados / Admin
import Login from './components/Login';
import AdminLayout from './components/AdminLayout';
import DashboardInicio from './components/DashboardInicio';
import GestionCitas from './GestionCitas';
import GestionPacientes from './GestionPacientes';
import GestionPersonal from './GestionPersonal';

// Layout para la Landing Pública
const PublicLayout = () => (
  <div className="App">
    <Header />
    <main>
      <HeroSlider />
      <Servicios />
      <Medicos />
      <FormularioCita />
    </main>
    <WhatsAppWidget />
  </div>
);

function App() {
  return (
    <AuthProvider>
      <Router>
        <Routes>
          {/* RUTAS PÚBLICAS */}
          <Route path="/" element={<PublicLayout />} />
          <Route path="/admin/login" element={<Login />} />

          {/* RUTAS PRIVADAS (Panel de Administración) */}
          <Route path="/admin" element={
            <ProtectedRoute>
              <AdminLayout>
                <DashboardInicio />
              </AdminLayout>
            </ProtectedRoute>
          } />
          <Route path="/admin/citas" element={
            <ProtectedRoute>
              <AdminLayout>
                <GestionCitas />
              </AdminLayout>
            </ProtectedRoute>
          } />
          <Route path="/admin/pacientes" element={
            <ProtectedRoute>
              <AdminLayout>
                <GestionPacientes />
              </AdminLayout>
            </ProtectedRoute>
          } />
          <Route path="/admin/personal" element={
            <ProtectedRoute>
              <AdminLayout>
                <GestionPersonal />
              </AdminLayout>
            </ProtectedRoute>
          } />

          {/* RUTAS NO ENCONTRADAS (404) - Redirige a la Home */}
          <Route path="*" element={<Navigate to="/" replace />} />
        </Routes>
      </Router>
    </AuthProvider>
  );
}

export default App;
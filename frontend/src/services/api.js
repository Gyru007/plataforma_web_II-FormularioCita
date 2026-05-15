import axios from 'axios';

// Configura la URL base de tu API de FastAPI
// Asegúrate de que esta URL coincida con donde está corriendo tu backend
const API_BASE_URL = 'http://localhost:8000'; // Cambia esto si tu backend está en otro puerto o dominio

const api = axios.create({
  baseURL: API_BASE_URL,
  headers: {
    'Content-Type': 'application/json',
  },
});

// --- Funciones para consumir los endpoints públicos ---

// Obtener la lista de médicos
export const getMedicos = async () => {
  const response = await api.get('/public/medicos');
  return response.data;
};

// Agendar una cita
export const agendarCita = async (citaData) => {
  const response = await api.post('/public/agendar', citaData);
  return response.data;
};

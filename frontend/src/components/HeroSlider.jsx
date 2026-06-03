import React, { useState, useEffect } from 'react';

const slides = [
  {
    id: 1,
    image: "https://images.unsplash.com/photo-1519494026892-80bbd2d6fd0d?auto=format&fit=crop&q=80&w=2000",
    title: "Atención Médica de Excelencia para tu Familia",
    text: "En Centro Médico Real Méndez, combinamos especialistas de primer nivel con tecnología avanzada para cuidar lo que más importa."
  },
  {
    id: 2,
    image: "https://images.unsplash.com/photo-1502740479796-61c9fe175391?auto=format&fit=crop&q=80&w=2000",
    title: "Especialistas Comprometidos contigo",
    text: "Contamos con un equipo humano altamente calificado en diversas áreas de la salud."
  },
  {
    id: 3,
    image: "https://images.unsplash.com/photo-1581595224492-386161723f82?auto=format&fit=crop&q=80&w=2000",
    title: "Tecnología de Vanguardia",
    text: "Equipos modernos para diagnósticos precisos y tratamientos efectivos."
  }
];

const HeroSlider = () => {
  const [current, setCurrent] = useState(0);

  useEffect(() => {
    const timer = setInterval(() => {
      setCurrent((prev) => (prev + 1) % slides.length);
    }, 5000); // Cambia cada 5 segundos
    return () => clearInterval(timer);
  }, []);

  return (
    <section className="hero-slider" style={{ position: 'relative', height: '85vh', overflow: 'hidden' }}>
      {slides.map((slide, index) => (
        <div
          key={slide.id}
          style={{
            position: 'absolute',
            top: 0,
            left: 0,
            width: '100%',
            height: '100%',
            opacity: index === current ? 1 : 0,
            transition: 'opacity 1s ease-in-out',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            textAlign: 'center',
            color: 'white',
            zIndex: index === current ? 1 : 0,
            background: `linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.4)), url("${slide.image}") center/cover no-repeat`
          }}
        >
          <div style={{ maxWidth: '900px', padding: '0 20px' }}>
            <h1 style={{ fontSize: '3.8rem', fontWeight: '800', marginBottom: '24px', lineHeight: '1.1' }}>
              {slide.title}
            </h1>
            <p style={{ fontSize: '1.3rem', marginBottom: '40px', fontWeight: '400', opacity: '0.9' }}>
              {slide.text}
            </p>
            <a href="#agendar" className="btn-cta">Agendar Cita en Línea</a>
          </div>
        </div>
      ))}
      {/* Indicadores del Slider */}
      <div style={{ position: 'absolute', bottom: '30px', left: '50%', transform: 'translateX(-50%)', display: 'flex', gap: '12px', zIndex: 10 }}>
        {slides.map((_, index) => (
          <button
            key={index}
            onClick={() => setCurrent(index)}
            style={{ width: '12px', height: '12px', borderRadius: '50%', border: 'none', background: index === current ? 'white' : 'rgba(255,255,255,0.4)', cursor: 'pointer', transition: 'background 0.3s' }}
          />
        ))}
      </div>
    </section>
  );
};

export default HeroSlider;
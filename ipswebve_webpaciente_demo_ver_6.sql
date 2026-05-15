-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-05-2026 a las 13:20:12
-- Versión del servidor: 8.0.45-0ubuntu0.24.04.1
-- Versión de PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ipswebve_webpaciente_demo_ver_6`
--
CREATE DATABASE IF NOT EXISTS `ipswebve_webpaciente_demo_ver_6` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `ipswebve_webpaciente_demo_ver_6`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aaa_datos_propietarios`
--

DROP TABLE IF EXISTS `aaa_datos_propietarios`;
CREATE TABLE `aaa_datos_propietarios` (
  `id_propietario` int NOT NULL,
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Propietario Fecha Creacion',
  `id_ente_modifica` int DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `afiliacion_propietario` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Negativa',
  `tipo_propietario` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Demo',
  `licencia_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `base_datos_propietario` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre_propietario` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_fundacion_propietario` date DEFAULT NULL,
  `sexo_propietario` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `telefono_propietario` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `movil_propietario` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `email_propietario` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `direccion_fiscal_completa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  `direccion_propietario` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  `pais_propietario` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `provincia_propietario` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ciudad_propietario` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `municipio_propietario` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `parroquia_propietario` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `sector_propietario` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `postal_propietario` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `web_propietario` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ruta_logo_propietario` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '../logo_propietarios/',
  `archivo_logo_propietario` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Logo_JC_3D.png',
  `comentario_propietario` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Datos Propietario de la Aplicacion';

--
-- Volcado de datos para la tabla `aaa_datos_propietarios`
--

INSERT INTO `aaa_datos_propietarios` (`id_propietario`, `tiempo_registro`, `id_ente_modifica`, `tiempo_modifica`, `status_propietario`, `afiliacion_propietario`, `tipo_propietario`, `licencia_propietario`, `base_datos_propietario`, `nombre_propietario`, `fecha_fundacion_propietario`, `sexo_propietario`, `telefono_propietario`, `movil_propietario`, `email_propietario`, `direccion_fiscal_completa`, `direccion_propietario`, `pais_propietario`, `provincia_propietario`, `ciudad_propietario`, `municipio_propietario`, `parroquia_propietario`, `sector_propietario`, `postal_propietario`, `web_propietario`, `ruta_logo_propietario`, `archivo_logo_propietario`, `comentario_propietario`) VALUES
(1, '2026-03-20 20:54:03', 0, '2026-04-30 11:56:22', 'Activo', 'Negativa', 'Demo', 'DEMO', 'ipswebve_webpaciente_demo_ver_6', 'WebPacienteWs', NULL, NULL, '+58-212-762-9856', '+58-422-123-4567', 'propietario@webpaciente.ws', NULL, NULL, 'Venezuela', 'Miranda', 'Caracas', NULL, NULL, NULL, NULL, NULL, '../aab_logo/', 'Logo_JC_3D.png', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aaa_entes`
--

DROP TABLE IF EXISTS `aaa_entes`;
CREATE TABLE `aaa_entes` (
  `id_ente` int NOT NULL,
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '1',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `statusEnte` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `enteAfiliado` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Negativo',
  `gerenciaEnte` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `dptoEnte` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `cargoEnte` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `especialidad_medica` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinEspecialidadMedica',
  `msds_ente` varchar(24) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinMSDS',
  `cm_ente` varchar(24) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinCM',
  `id_ente_institucion` int NOT NULL DEFAULT '0',
  `id_ente_dependiente` int NOT NULL DEFAULT '0',
  `relacion_dependencia` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinRelacion',
  `codigoEnte` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinCodigo',
  `identificacionEnte` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `nombreEnte` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `emailEnte` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `email_ente_secundario` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `emailValido` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Si',
  `fechaEnte` date DEFAULT NULL,
  `sexoEnte` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `razaEnte` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinRaza',
  `enteReligion` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinReligion',
  `enteProfesion` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinProfesion',
  `grupo_sangineo` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinGrupoSangineo',
  `alegiasEnte` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  `condiEspeciEnte` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  `medicamentosEnte` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  `movilEnte` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `telefonoEnte` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `direccionEnte` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  `id_pais` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_provincia` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_ciudad` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_municipio` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_parroquia` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_sector` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT 'SinSector',
  `id_punto_referencia` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinPuntoReferencia',
  `codigo_postal` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `autorizadoCredito` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'NoCredito',
  `maximoCredito` decimal(64,2) DEFAULT '0.00',
  `cuentaPorPagar` decimal(64,2) DEFAULT '0.00',
  `cuentaPorCobrar` decimal(64,2) DEFAULT '0.00',
  `saldo_a_favor_ente` decimal(64,2) NOT NULL DEFAULT '0.00',
  `ruta_foto_usuario` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '../foto_usuarios/',
  `archivo_foto_usuario` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'no-foto.jpg',
  `ruta_foto_usuario_identificacion` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '/foto_usuario_identificacion/',
  `archivo_foto_usuario_identificacion` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'no-imagen.png',
  `comentarioEnte` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  `ultimo_cambio_clave` timestamp NULL DEFAULT NULL,
  `numero_olvide_clave` int NOT NULL DEFAULT '0',
  `claveEnte` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT '5Rbe*jgG*3A4',
  `id_temp_ente` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `mUsuario` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'rE',
  `bUsuario` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'rE',
  `iUsuario` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'rE',
  `sUsuario` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'rE',
  `cUsuario` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'rE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aaa_entes`
--

INSERT INTO `aaa_entes` (`id_ente`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `statusEnte`, `enteAfiliado`, `gerenciaEnte`, `dptoEnte`, `cargoEnte`, `especialidad_medica`, `msds_ente`, `cm_ente`, `id_ente_institucion`, `id_ente_dependiente`, `relacion_dependencia`, `codigoEnte`, `identificacionEnte`, `nombreEnte`, `emailEnte`, `email_ente_secundario`, `emailValido`, `fechaEnte`, `sexoEnte`, `razaEnte`, `enteReligion`, `enteProfesion`, `grupo_sangineo`, `alegiasEnte`, `condiEspeciEnte`, `medicamentosEnte`, `movilEnte`, `telefonoEnte`, `direccionEnte`, `id_pais`, `id_provincia`, `id_ciudad`, `id_municipio`, `id_parroquia`, `id_sector`, `id_punto_referencia`, `codigo_postal`, `autorizadoCredito`, `maximoCredito`, `cuentaPorPagar`, `cuentaPorCobrar`, `saldo_a_favor_ente`, `ruta_foto_usuario`, `archivo_foto_usuario`, `ruta_foto_usuario_identificacion`, `archivo_foto_usuario_identificacion`, `comentarioEnte`, `ultimo_cambio_clave`, `numero_olvide_clave`, `claveEnte`, `id_temp_ente`, `mUsuario`, `bUsuario`, `iUsuario`, `sUsuario`, `cUsuario`) VALUES
(1, 1, 'Demo', 1, '2024-02-06 07:26:47', 0, '2026-05-15 02:28:39', 1, 'Activo', 'Activo', 'Negativo', 'Pacientes', 'Pacientes', 'Demo', 'SinEspecialidadMedica', 'SinMSDS', 'SinCM', 0, 0, 'SinRelacion', 'SinCodigo', 'V-987654321', 'Usuario Demo', 'demo@demo.ws', NULL, 'Si', '1000-01-01', 'Demo', 'SinRaza', 'SinReligion', 'SinProfesion', 'SinGrupoSangineo', NULL, NULL, NULL, '+584124521855', '', 'Av.', 'Venezuela', 'Miranda', 'Caracas', 'Libertador', 'San Vicente', 'Centro', 'Esquina Cuatro', '1010', 'NoCredito', 0.00, 0.00, 0.00, 0.00, '../foto_usuarios/', 'no-foto.jpg', '/foto_usuario_identificacion/', 'no-imagen.png', 'Demo...', '2025-10-03 03:02:51', 0, 'demo', '', 'oP', 'oP', 'oP', 'oP', 'oP'),
(2, 1, 'Demo', 1, '2026-04-27 13:28:53', 1, '2026-05-05 00:44:25', 1, 'Activo', 'Activo', 'Negativo', 'Paciente', 'Paciente', 'Paciente', 'SinEspecialidadMedica', 'SinMSDS', 'SinCM', 0, 0, '', '', 'M-20260131-1', 'Thomas Miller', 'thomas@miller.123', NULL, 'Si', '2026-01-31', 'Masculino', 'SinRaza', 'SinReligion', 'SinProfesion', 'SinGrupoSangineo', 'Aspirina', 'Sordo oido izquierdo.', 'Diclofenac de 50 mg.', '+584169874563', '', '', 'Venezuela', 'Miranda', 'Caracas', '', '', '', '', '', 'NoCredito', 0.00, 0.00, 0.00, 0.00, '../foto_usuarios/', 'no-foto.jpg', '/foto_usuario_identificacion/', 'no-imagen.png', '', NULL, 0, '5Rbe*jgG*3A4', NULL, 'rE', 'rE', 'rE', 'rE', 'rE'),
(3, 1, 'Demo', 1, '2026-04-29 11:07:12', 1, '2026-05-13 02:30:00', 1, 'Activo', 'Activo', 'Negativo', 'Paciente', 'Paciente', 'Paciente', 'SinEspecialidadMedica', 'SinMSDS', 'SinCM', 0, 5, '', '', 'V-19563275', 'Isabel Martinez', 'isabel@martinez.123', NULL, 'Si', '1988-07-16', 'Femenino', 'SinRaza', 'SinReligion', 'SinProfesion', 'SinGrupoSangineo', 'Dipirona', 'Ciega del Ojo Izquierdo', 'Aspirina de 250 mg.', '+584243214567', '', '', 'Venezuela', 'Miranda', 'Caracas', '', '', '', '', '', 'NoCredito', 0.00, 0.00, 0.00, 0.00, '../foto_usuarios/', 'no-foto.jpg', '/foto_usuario_identificacion/', 'no-imagen.png', '', NULL, 0, '5Rbe*jgG*3A4', NULL, 'rE', 'rE', 'rE', 'rE', 'rE'),
(4, 1, 'Demo', 1, '2026-04-29 18:04:45', 1, '2026-05-03 23:18:19', 1, 'Activo', 'Activo', 'Negativo', 'Sanitarios', 'Sanitarios', 'Paramedico', 'Paramedico', 'SinMSDS', 'SinCM', 0, 0, 'SinRelacion', '', 'V-2356897', 'Primer Paramedico', 'paramedico@primero.ws', NULL, 'Si', '1999-08-27', 'Masculino', 'SinRaza', 'SinReligion', 'SinProfesion', 'SinGrupoSangineo', NULL, NULL, NULL, '+584229876543', '', '', 'Venezuela', 'Miranda', 'Caracas', '', '', '', '', '', 'NoCredito', 0.00, 0.00, 0.00, 0.00, '../foto_usuarios/', 'no-foto.jpg', '/foto_usuario_identificacion/', 'no-imagen.png', '', NULL, 0, 'demo', NULL, 'rE', 'rE', 'rE', 'rE', 'rE'),
(5, 1, 'Demo', 1, '2026-04-29 18:04:45', 1, '2026-05-03 23:16:22', 1, 'Activo', 'Activo', 'Negativo', 'Sanitarios', 'Sanitarios', 'Medico', 'Internista', 'SinMSDS', 'SinCM', 0, 0, 'SinRelacion', '', 'V-2356897', 'Primer Medico Internista', 'medico@primero.ws', NULL, 'Si', '1999-08-27', 'Masculino', 'SinRaza', 'SinReligion', 'SinProfesion', 'SinGrupoSangineo', NULL, NULL, NULL, '+584229876543', '', '', 'Venezuela', 'Miranda', 'Caracas', '', '', '', '', '', 'NoCredito', 0.00, 0.00, 0.00, 0.00, '../foto_usuarios/', 'no-foto.jpg', '/foto_usuario_identificacion/', 'no-imagen.png', '', NULL, 0, 'demo', NULL, 'rE', 'rE', 'rE', 'rE', 'rE'),
(6, 1, 'Demo', 1, '2026-04-29 18:04:45', 1, '2026-05-13 13:52:28', 1, 'Activo', 'Activo', 'Negativo', 'Institucion', 'Institucion', 'Institucion', 'SinEspecialidad', 'SinMSDS', 'SinCM', 0, 0, 'SinRelacion', '', 'G-2356897', 'Institucion del Estado, C.A.', 'institucion@estado.ws', NULL, 'Si', '1999-08-27', 'Juridico', 'SinRaza', 'SinReligion', 'SinProfesion', 'SinGrupoSangineo', NULL, NULL, NULL, '+584229876543', '', '', 'Venezuela', 'Miranda', 'Caracas', '', '', '', '', '', 'NoCredito', 0.00, 0.00, 0.00, 0.00, '../foto_usuarios/', 'no-foto.jpg', '/foto_usuario_identificacion/', 'no-imagen.png', '', NULL, 0, 'demo', NULL, 'rE', 'rE', 'rE', 'rE', 'rE'),
(7, 1, 'Demo', 1, '2026-05-07 13:09:26', 1, '2026-05-07 13:10:29', 1, 'Activo', 'Activo', 'Negativo', 'Pacientes', 'Pacientes', 'Paciente', 'SinEspecialidadMedica', 'SinMSDS', 'SinCM', 0, 0, '', '', 'V-6789987', 'Ricardo Lopez', '', NULL, 'Si', '2002-02-20', 'Masculino', 'SinRaza', 'SinReligion', 'SinProfesion', 'SinGrupoSangineo', '', '', '', '', '', '', 'Venezuela', 'Miranda', 'Caracas', '', '', '', '', '', 'NoCredito', 0.00, 0.00, 0.00, 0.00, '../foto_usuarios/', 'no-foto.jpg', '/foto_usuario_identificacion/', 'no-imagen.png', '', NULL, 0, '5Rbe*jgG*3A4', NULL, 'rE', 'rE', 'rE', 'rE', 'rE'),
(8, 1, 'Demo', 1, '2026-05-11 15:17:03', 1, '2026-05-12 03:48:56', 1, 'Activo', 'Activo', 'Negativo', 'Pacientes', 'Pacientes', 'Paciente', 'SinEspecialidadMedica', 'SinMSDS', 'SinCM', 0, 0, '', '', 'M-20260511-01', 'Maria Rivas', '', NULL, 'Si', '2026-02-17', 'Femenino', 'SinRaza', 'SinReligion', 'SinProfesion', 'SinGrupoSangineo', 'Penicilina.', '', '', '', '', '', 'Venezuela', 'Miranda', 'Caracas', '', '', '', '', '', 'NoCredito', 0.00, 0.00, 0.00, 0.00, '../foto_usuarios/', 'no-foto.jpg', '/foto_usuario_identificacion/', 'no-imagen.png', '', NULL, 0, '5Rbe*jgG*3A4', NULL, 'rE', 'rE', 'rE', 'rE', 'rE'),
(9, 1, 'Demo', 1, '2026-05-13 13:45:50', 1, '2026-05-13 13:52:36', 0, 'Activo', 'Activo', 'Negativo', 'Institucion', 'Institucion', 'Institucion', 'SinEspecialidadMedica', 'SinMSDS', 'SinCM', 0, 0, 'SinRelacion', 'SinCodigo', 'G-45678909889', 'Alcaldia Prueba.', 'alcaldia@institucion.ws', NULL, 'Si', '1990-01-31', 'Juridico', 'SinRaza', 'SinReligion', 'SinProfesion', 'SinGrupoSangineo', NULL, NULL, NULL, '+584124567892', '', '', 'Venezuela', 'Miranda', 'Caracas', '', '', '', '', '', 'NoCredito', 0.00, 0.00, 0.00, 0.00, '../foto_usuarios/', 'no-foto.jpg', '/foto_usuario_identificacion/', 'no-imagen.png', '', NULL, 0, '123456', NULL, 'rE', 'rE', 'rE', 'rE', 'rE'),
(10, 1, 'Demo', 1, '2026-05-13 13:54:50', 1, '2026-05-13 13:56:53', 1, 'Activo', 'Activo', 'Negativo', 'Pacientes', 'Pacientes', 'Paciente', 'SinEspecialidadMedica', 'SinMSDS', 'SinCM', 0, 3, 'Esposo', '', 'V-123456789', 'Jose Grado', '', NULL, 'Si', '1996-03-07', 'Masculino', 'Caucasica', 'Cristiano', 'Ing. Industrial', 'Rh B+', '', '', '', '', '', '', 'Venezuela', 'Miranda', 'Caracas', '', '', '', '', '', 'NoCredito', 0.00, 0.00, 0.00, 0.00, '../foto_usuarios/', 'no-foto.jpg', '/foto_usuario_identificacion/', 'no-imagen.png', '', NULL, 0, '5Rbe*jgG*3A4', NULL, 'rE', 'rE', 'rE', 'rE', 'rE'),
(11, 1, 'Demo', 1, '2026-05-14 16:51:09', 1, '2026-05-14 16:52:04', 1, 'Activo', 'Activo', 'Negativo', 'Pacientes', 'Pacientes', 'Paciente', 'SinEspecialidadMedica', 'SinMSDS', 'SinCM', 0, 0, '', '', 'P-78WW9WG442G', 'Miriam Puertas', 'miriam@pruetas.ws', NULL, 'Si', '1988-07-26', 'Femenino', 'SinRaza', 'SinReligion', 'SinProfesion', 'SinGrupoSangineo', '', '', '', '+584228956234', '', '', 'Venezuela', 'Miranda', 'Caracas', '', '', '', '', '', 'NoCredito', 0.00, 0.00, 0.00, 0.00, '../foto_usuarios/', 'no-foto.jpg', '/foto_usuario_identificacion/', 'no-imagen.png', '', NULL, 0, '5Rbe*jgG*3A4', NULL, 'rE', 'rE', 'rE', 'rE', 'rE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aaa_entes_direcciones`
--

DROP TABLE IF EXISTS `aaa_entes_direcciones`;
CREATE TABLE `aaa_entes_direcciones` (
  `id_ente_direcciones` int NOT NULL,
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `descripcion_direccion_principal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `direccion_principal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  `id_pais_principal` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_provincia_principal` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_ciudad_principal` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_municipio_principal` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_parroquia_principal` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_sector_principal` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT 'SinSector',
  `id_punto_referencia_principal` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinPuntoReferencia',
  `codigo_postal_principal` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `telefono_principal` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `descripcion_direccion_secundaria` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `direccion_secundaria` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  `id_pais_secundaria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_provincia_secundaria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_ciudad_secundaria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_municipio_secundaria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_parroquia_secundaria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_sector_secundaria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT 'SinSector',
  `id_punto_referencia_secundaria` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinPuntoReferencia',
  `codigo_postal_secundaria` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `telefono_secundaria` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `descripcion_direccion_terciaria` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `direccion_terciaria` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  `id_pais_terciaria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_provincia_terciaria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_ciudad_terciaria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_municipio_terciaria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_parroquia_terciaria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_sector_terciaria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT 'SinSector',
  `id_punto_referencia_terciaria` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinPuntoReferencia',
  `codigo_postal_terciaria` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `telefono_terciaria` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `comentario_registro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aaa_entes_direcciones`
--

INSERT INTO `aaa_entes_direcciones` (`id_ente_direcciones`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `descripcion_direccion_principal`, `direccion_principal`, `id_pais_principal`, `id_provincia_principal`, `id_ciudad_principal`, `id_municipio_principal`, `id_parroquia_principal`, `id_sector_principal`, `id_punto_referencia_principal`, `codigo_postal_principal`, `telefono_principal`, `descripcion_direccion_secundaria`, `direccion_secundaria`, `id_pais_secundaria`, `id_provincia_secundaria`, `id_ciudad_secundaria`, `id_municipio_secundaria`, `id_parroquia_secundaria`, `id_sector_secundaria`, `id_punto_referencia_secundaria`, `codigo_postal_secundaria`, `telefono_secundaria`, `descripcion_direccion_terciaria`, `direccion_terciaria`, `id_pais_terciaria`, `id_provincia_terciaria`, `id_ciudad_terciaria`, `id_municipio_terciaria`, `id_parroquia_terciaria`, `id_sector_terciaria`, `id_punto_referencia_terciaria`, `codigo_postal_terciaria`, `telefono_terciaria`, `comentario_registro`) VALUES
(1, 1, 'Demo', 1, '2026-04-27 10:50:08', 1, NULL, NULL, 'Activo', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL),
(2, 1, 'Demo', 1, '2026-04-27 13:28:53', 1, NULL, NULL, 'Activo', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL),
(3, 1, 'Demo', 1, '2026-04-29 11:07:12', 1, NULL, NULL, 'Activo', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL),
(4, 1, 'Demo', 1, '2026-04-29 18:04:45', 1, NULL, 0, 'Activo', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL),
(5, 1, 'Demo', 1, '2026-05-07 13:09:26', 1, NULL, 0, 'Activo', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL),
(6, 1, 'Demo', 1, '2026-05-11 15:17:03', 1, NULL, 0, 'Activo', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL),
(7, 1, 'Demo', 1, '2026-05-13 13:45:50', 1, NULL, 0, 'Activo', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL),
(8, 1, 'Demo', 1, '2026-05-13 13:54:50', 1, NULL, 0, 'Activo', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL),
(9, 1, 'Demo', 1, '2026-05-14 16:51:09', 1, NULL, 0, 'Activo', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SinSector', 'SinPuntoReferencia', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aad_ente_cargo`
--

DROP TABLE IF EXISTS `aad_ente_cargo`;
CREATE TABLE `aad_ente_cargo` (
  `id_cargoEnte` int NOT NULL,
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_registro` int NOT NULL DEFAULT '1',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_cargo` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `cargoEnte` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aad_ente_cargo`
--

INSERT INTO `aad_ente_cargo` (`id_cargoEnte`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_registro`, `tiempo_modifica`, `id_ente_modifica`, `status_cargo`, `cargoEnte`) VALUES
(1, 0, 'SinTipoPropietario', 0, '2026-04-22 00:24:54', 1, NULL, 0, 'Activo', 'Paciente'),
(2, 0, 'SinTipoPropietario', 0, '2026-04-23 13:29:22', 1, NULL, 0, 'Activo', 'Medico'),
(3, 0, 'SinTipoPropietario', 0, '2026-04-23 13:29:22', 1, NULL, 0, 'Activo', 'Enfermera'),
(4, 0, 'SinTipoPropietario', 0, '2026-04-23 13:29:49', 1, '2026-04-25 03:14:05', 0, 'Activo', 'Enfermero'),
(5, 0, 'SinTipoPropietario', 0, '2026-04-23 13:29:49', 1, NULL, 0, 'Activo', 'Paramedico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aad_ente_dpto`
--

DROP TABLE IF EXISTS `aad_ente_dpto`;
CREATE TABLE `aad_ente_dpto` (
  `id_dptoEnte` int NOT NULL,
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_registro` int NOT NULL DEFAULT '1',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_dpto` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `dptoEnte` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aad_ente_dpto`
--

INSERT INTO `aad_ente_dpto` (`id_dptoEnte`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_registro`, `tiempo_modifica`, `id_ente_modifica`, `status_dpto`, `dptoEnte`) VALUES
(1, 0, 'SinTipoPropietario', 0, '2026-04-22 00:25:16', 1, '2026-04-23 13:28:13', 0, 'Activo', 'Pacientes'),
(2, 0, 'SinTipoPropietario', 0, '2026-04-23 13:28:35', 1, NULL, 0, 'Activo', 'Sanitarios'),
(3, 0, 'SinTipoPropietario', 0, '2026-04-23 13:28:35', 1, NULL, 0, 'Activo', 'Administracion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aad_ente_gerencia`
--

DROP TABLE IF EXISTS `aad_ente_gerencia`;
CREATE TABLE `aad_ente_gerencia` (
  `id_gerenciaEnte` int NOT NULL,
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_registro` int NOT NULL DEFAULT '1',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_gerencia` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activa',
  `gerenciaEnte` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aad_ente_gerencia`
--

INSERT INTO `aad_ente_gerencia` (`id_gerenciaEnte`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_registro`, `tiempo_modifica`, `id_ente_modifica`, `status_gerencia`, `gerenciaEnte`) VALUES
(1, 0, 'SinTipoPropietario', 0, '2026-04-22 00:25:30', 1, '2026-04-23 13:24:58', 0, 'Activa', 'Pacientes'),
(2, 0, 'SinTipoPropietario', 0, '2026-04-23 13:27:34', 1, NULL, 0, 'Activa', 'Sanitarios'),
(3, 0, 'SinTipoPropietario', 0, '2026-04-23 13:27:34', 1, NULL, 0, 'Activa', 'Gerencias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aad_razas_humana`
--

DROP TABLE IF EXISTS `aad_razas_humana`;
CREATE TABLE `aad_razas_humana` (
  `id_raza_humana` int NOT NULL,
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Tiempo del Sistema',
  `status_raza` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'Activo',
  `raza_humana` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `aad_razas_humana`
--

INSERT INTO `aad_razas_humana` (`id_raza_humana`, `tiempo_registro`, `status_raza`, `raza_humana`) VALUES
(1, '2026-04-22 01:59:05', 'Activo', 'Caucasica'),
(2, '2026-04-22 01:59:05', 'Activo', 'Africana'),
(3, '2026-04-22 01:59:46', 'Activo', 'Asiatica'),
(4, '2026-04-22 01:59:46', 'Activo', 'Oriental'),
(5, '2026-04-22 02:01:02', 'Activo', 'Europea'),
(6, '2026-04-22 02:01:02', 'Activo', 'Oceanica'),
(7, '2026-04-28 09:56:26', 'Activo', 'SinRaza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aad_ubicacion_ciudades`
--

DROP TABLE IF EXISTS `aad_ubicacion_ciudades`;
CREATE TABLE `aad_ubicacion_ciudades` (
  `id_ciudad` int NOT NULL,
  `id_provincia` int NOT NULL,
  `ciudad` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `capital` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aad_ubicacion_ciudades`
--

INSERT INTO `aad_ubicacion_ciudades` (`id_ciudad`, `id_provincia`, `ciudad`, `capital`) VALUES
(1, 1, 'Maroa', 0),
(2, 1, 'Puerto Ayacucho', 1),
(3, 1, 'San Fernando de Atabapo', 0),
(4, 2, 'Anaco', 0),
(5, 2, 'Aragua de Barcelona', 0),
(6, 2, 'Barcelona', 1),
(7, 2, 'Boca de Uchire', 0),
(8, 2, 'Cantaura', 0),
(9, 2, 'Clarines', 0),
(10, 2, 'El Chaparro', 0),
(11, 2, 'El Pao Anzoategui', 0),
(12, 2, 'El Tigre', 0),
(13, 2, 'El Tigrito', 0),
(14, 2, 'Guanape', 0),
(15, 2, 'Guanta', 0),
(16, 2, 'Lecheria', 0),
(17, 2, 'Onoto', 0),
(18, 2, 'Pariaguan', 0),
(19, 2, 'Piritu', 0),
(20, 2, 'Puerto La Cruz', 0),
(21, 2, 'Puerto Piritu', 0),
(22, 2, 'Sabana de Uchire', 0),
(23, 2, 'San Mateo Anzoategui', 0),
(24, 2, 'San Pablo Anzoategui', 0),
(25, 2, 'San Tome', 0),
(26, 2, 'Santa Ana de Anzoategui', 0),
(27, 2, 'Santa Fe Anzoategui', 0),
(28, 2, 'Santa Rosa', 0),
(29, 2, 'Soledad', 0),
(30, 2, 'Urica', 0),
(31, 2, 'Valle de Guanape', 0),
(43, 3, 'Achaguas', 0),
(44, 3, 'Biruaca', 0),
(45, 3, 'Bruzual', 0),
(46, 3, 'El Amparo', 0),
(47, 3, 'El Nula', 0),
(48, 3, 'Elorza', 0),
(49, 3, 'Guasdualito', 0),
(50, 3, 'Mantecal', 0),
(51, 3, 'Puerto Paez', 0),
(52, 3, 'San Fernando de Apure', 1),
(53, 3, 'San Juan de Payara', 0),
(54, 4, 'Barbacoas', 0),
(55, 4, 'Cagua', 0),
(56, 4, 'Camatagua', 0),
(58, 4, 'Choroni', 0),
(59, 4, 'Colonia Tovar', 0),
(60, 4, 'El Consejo', 0),
(61, 4, 'La Victoria', 0),
(62, 4, 'Las Tejerias', 0),
(63, 4, 'Magdaleno', 0),
(64, 4, 'Maracay', 1),
(65, 4, 'Ocumare de La Costa', 0),
(66, 4, 'Palo Negro', 0),
(67, 4, 'San Casimiro', 0),
(68, 4, 'San Mateo', 0),
(69, 4, 'San Sebastian', 0),
(70, 4, 'Santa Cruz de Aragua', 0),
(71, 4, 'Tocoron', 0),
(72, 4, 'Turmero', 0),
(73, 4, 'Villa de Cura', 0),
(74, 4, 'Zuata', 0),
(75, 5, 'Barinas', 1),
(76, 5, 'Barinitas', 0),
(77, 5, 'Barrancas', 0),
(78, 5, 'Calderas', 0),
(79, 5, 'Capitanejo', 0),
(80, 5, 'Ciudad Bolivia', 0),
(81, 5, 'El Canton', 0),
(82, 5, 'Las Veguitas', 0),
(83, 5, 'Libertad de Barinas', 0),
(84, 5, 'Sabaneta', 0),
(85, 5, 'Santa Barbara de Barinas', 0),
(86, 5, 'Socopo', 0),
(87, 6, 'Caicara del Orinoco', 0),
(88, 6, 'Canaima', 0),
(89, 6, 'Ciudad Bolivar', 1),
(90, 6, 'Ciudad Piar', 0),
(91, 6, 'El Callao', 0),
(92, 6, 'El Dorado', 0),
(93, 6, 'El Manteco', 0),
(94, 6, 'El Palmar', 0),
(95, 6, 'El Pao', 0),
(96, 6, 'Guasipati', 0),
(97, 6, 'Guri', 0),
(98, 6, 'La Paragua', 0),
(99, 6, 'Matanzas', 0),
(100, 6, 'Puerto Ordaz', 0),
(101, 6, 'San Felix', 0),
(102, 6, 'Santa Elena de Uairen', 0),
(103, 6, 'Tumeremo', 0),
(104, 6, 'Unare', 0),
(105, 6, 'Upata', 0),
(106, 7, 'Bejuma', 0),
(107, 7, 'Belen', 0),
(108, 7, 'Campo de Carabobo', 0),
(109, 7, 'Canoabo', 0),
(110, 7, 'Central Tacarigua', 0),
(111, 7, 'Chirgua', 0),
(112, 7, 'Ciudad Alianza', 0),
(113, 7, 'El Palito', 0),
(114, 7, 'Guacara', 0),
(115, 7, 'Guigue', 0),
(116, 7, 'Las Trincheras', 0),
(117, 7, 'Los Guayos', 0),
(118, 7, 'Mariara', 0),
(119, 7, 'Miranda', 0),
(120, 7, 'Montalban', 0),
(121, 7, 'Moron', 0),
(122, 7, 'Naguanagua', 0),
(123, 7, 'Puerto Cabello', 0),
(124, 7, 'San Joaquin', 0),
(125, 7, 'Tocuyito', 0),
(126, 7, 'Urama', 0),
(127, 7, 'Valencia', 1),
(128, 7, 'Vigirimita', 0),
(129, 8, 'Aguirre', 0),
(130, 8, 'Apartaderos Cojedes', 0),
(131, 8, 'Arismendi', 0),
(132, 8, 'Camuriquito', 0),
(133, 8, 'El Baul', 0),
(134, 8, 'El Limon', 0),
(135, 8, 'El Pao Cojedes', 0),
(136, 8, 'El Socorro', 0),
(137, 8, 'La Aguadita', 0),
(138, 8, 'Las Vegas', 0),
(139, 8, 'Libertad de Cojedes', 0),
(140, 8, 'Mapuey', 0),
(141, 8, 'Piñedo', 0),
(142, 8, 'Samancito', 0),
(143, 8, 'San Carlos', 1),
(144, 8, 'Sucre', 0),
(145, 8, 'Tinaco', 0),
(146, 8, 'Tinaquillo', 0),
(147, 8, 'Vallecito', 0),
(148, 9, 'Tucupita', 1),
(149, 24, 'Caracas', 1),
(150, 24, 'El Junquito', 0),
(151, 10, 'Adicora', 0),
(152, 10, 'Boca de Aroa', 0),
(153, 10, 'Cabure', 0),
(154, 10, 'Capadare', 0),
(155, 10, 'Capatarida', 0),
(156, 10, 'Chichiriviche', 0),
(157, 10, 'Churuguara', 0),
(158, 10, 'Coro', 1),
(159, 10, 'Cumarebo', 0),
(160, 10, 'Dabajuro', 0),
(161, 10, 'Judibana', 0),
(162, 10, 'La Cruz de Taratara', 0),
(163, 10, 'La Vela de Coro', 0),
(164, 10, 'Los Taques', 0),
(165, 10, 'Maparari', 0),
(166, 10, 'Mene de Mauroa', 0),
(167, 10, 'Mirimire', 0),
(168, 10, 'Pedregal', 0),
(169, 10, 'Piritu Falcon', 0),
(170, 10, 'Pueblo Nuevo Falcon', 0),
(171, 10, 'Puerto Cumarebo', 0),
(172, 10, 'Punta Cardon', 0),
(173, 10, 'Punto Fijo', 0),
(174, 10, 'San Juan de Los Cayos', 0),
(175, 10, 'San Luis', 0),
(176, 10, 'Santa Ana Falcon', 0),
(177, 10, 'Santa Cruz De Bucaral', 0),
(178, 10, 'Tocopero', 0),
(179, 10, 'Tocuyo de La Costa', 0),
(180, 10, 'Tucacas', 0),
(181, 10, 'Yaracal', 0),
(182, 11, 'Altagracia de Orituco', 0),
(183, 11, 'Cabruta', 0),
(184, 11, 'Calabozo', 0),
(185, 11, 'Camaguan', 0),
(196, 11, 'Chaguaramas Guarico', 0),
(197, 11, 'El Socorro', 0),
(198, 11, 'El Sombrero', 0),
(199, 11, 'Las Mercedes de Los Llanos', 0),
(200, 11, 'Lezama', 0),
(201, 11, 'Onoto', 0),
(202, 11, 'Ortiz', 0),
(203, 11, 'San Jose de Guaribe', 0),
(204, 11, 'San Juan de Los Morros', 1),
(205, 11, 'San Rafael de Laya', 0),
(206, 11, 'Santa Maria de Ipire', 0),
(207, 11, 'Tucupido', 0),
(208, 11, 'Valle de La Pascua', 0),
(209, 11, 'Zaraza', 0),
(210, 12, 'Aguada Grande', 0),
(211, 12, 'Atarigua', 0),
(212, 12, 'Barquisimeto', 1),
(213, 12, 'Bobare', 0),
(214, 12, 'Cabudare', 0),
(215, 12, 'Carora', 0),
(216, 12, 'Cubiro', 0),
(217, 12, 'Cuji', 0),
(218, 12, 'Duaca', 0),
(219, 12, 'El Manzano', 0),
(220, 12, 'El Tocuyo', 0),
(221, 12, 'Guarico', 0),
(222, 12, 'Humocaro Alto', 0),
(223, 12, 'Humocaro Bajo', 0),
(224, 12, 'La Miel', 0),
(225, 12, 'Moroturo', 0),
(226, 12, 'Quibor', 0),
(227, 12, 'Rio Claro', 0),
(228, 12, 'Sanare', 0),
(229, 12, 'Santa Ines', 0),
(230, 12, 'Sarare', 0),
(231, 12, 'Siquisique', 0),
(232, 12, 'Tintorero', 0),
(233, 13, 'Apartaderos Merida', 0),
(234, 13, 'Arapuey', 0),
(235, 13, 'Bailadores', 0),
(236, 13, 'Caja Seca', 0),
(237, 13, 'Canagua', 0),
(238, 13, 'Chachopo', 0),
(239, 13, 'Chiguara', 0),
(240, 13, 'Ejido', 0),
(241, 13, 'El Vigia', 0),
(242, 13, 'La Azulita', 0),
(243, 13, 'La Playa', 0),
(244, 13, 'Lagunillas Merida', 0),
(245, 13, 'Merida', 1),
(246, 13, 'Mesa de Bolivar', 0),
(247, 13, 'Mucuchies', 0),
(248, 13, 'Mucujepe', 0),
(249, 13, 'Mucuruba', 0),
(250, 13, 'Nueva Bolivia', 0),
(251, 13, 'Palmarito', 0),
(252, 13, 'Pueblo Llano', 0),
(253, 13, 'Santa Cruz de Mora', 0),
(254, 13, 'Santa Elena de Arenales', 0),
(255, 13, 'Santo Domingo', 0),
(256, 13, 'Tabay', 0),
(257, 13, 'Timotes', 0),
(258, 13, 'Torondoy', 0),
(259, 13, 'Tovar', 0),
(260, 13, 'Tucani', 0),
(261, 13, 'Zea', 0),
(262, 14, 'Araguita', 0),
(263, 14, 'Carrizal', 0),
(264, 14, 'Caucagua', 0),
(265, 14, 'Chaguaramas Miranda', 0),
(266, 14, 'Charallave', 0),
(267, 14, 'Chirimena', 0),
(268, 14, 'Chuspa', 0),
(269, 14, 'Cua', 0),
(270, 14, 'Cupira', 0),
(271, 14, 'Curiepe', 0),
(272, 14, 'El Guapo', 0),
(273, 14, 'El Jarillo', 0),
(274, 14, 'Filas de Mariche', 0),
(275, 14, 'Guarenas', 0),
(276, 14, 'Guatire', 0),
(277, 14, 'Higuerote', 0),
(278, 14, 'Los Anaucos', 0),
(279, 14, 'Los Teques', 1),
(280, 14, 'Ocumare del Tuy', 0),
(281, 14, 'Panaquire', 0),
(282, 14, 'Paracotos', 0),
(283, 14, 'Rio Chico', 0),
(284, 14, 'San Antonio de Los Altos', 0),
(285, 14, 'San Diego de Los Altos', 0),
(286, 14, 'San Fernando del Guapo', 0),
(287, 14, 'San Francisco de Yare', 0),
(288, 14, 'San Jose de Los Altos', 0),
(289, 14, 'San Jose de Rio Chico', 0),
(290, 14, 'San Pedro de Los Altos', 0),
(291, 14, 'Santa Lucia', 0),
(292, 14, 'Santa Teresa', 0),
(293, 14, 'Tacarigua de La Laguna', 0),
(294, 14, 'Tacarigua de Mamporal', 0),
(295, 14, 'Tacata', 0),
(296, 14, 'Turumo', 0),
(297, 15, 'Aguasay', 0),
(298, 15, 'Aragua de Maturin', 0),
(299, 15, 'Barrancas del Orinoco', 0),
(300, 15, 'Caicara de Maturin', 0),
(301, 15, 'Caripe', 0),
(302, 15, 'Caripito', 0),
(303, 15, 'Chaguaramal', 0),
(305, 15, 'Chaguaramas Monagas', 0),
(307, 15, 'El Furrial', 0),
(308, 15, 'El Tejero', 0),
(309, 15, 'Jusepin', 0),
(310, 15, 'La Toscana', 0),
(311, 15, 'Maturin', 1),
(312, 15, 'Miraflores', 0),
(313, 15, 'Punta de Mata', 0),
(314, 15, 'Quiriquire', 0),
(315, 15, 'San Antonio de Maturin', 0),
(316, 15, 'San Vicente Monagas', 0),
(317, 15, 'Santa Barbara', 0),
(318, 15, 'Temblador', 0),
(319, 15, 'Teresen', 0),
(320, 15, 'Uracoa', 0),
(321, 16, 'Altagracia', 0),
(322, 16, 'Boca de Pozo', 0),
(323, 16, 'Boca de Rio', 0),
(324, 16, 'El Espinal', 0),
(325, 16, 'El Valle del Espiritu Santo', 0),
(326, 16, 'El Yaque', 0),
(327, 16, 'Juangriego', 0),
(328, 16, 'La Asuncion', 1),
(329, 16, 'La Guardia', 0),
(330, 16, 'Pampatar', 0),
(331, 16, 'Porlamar', 0),
(332, 16, 'Puerto Fermin', 0),
(333, 16, 'Punta de Piedras', 0),
(334, 16, 'San Francisco de Macanao', 0),
(335, 16, 'San Juan Bautista', 0),
(336, 16, 'San Pedro de Coche', 0),
(337, 16, 'Santa Ana de Nueva Esparta', 0),
(338, 16, 'Villa Rosa', 0),
(339, 17, 'Acarigua', 0),
(340, 17, 'Agua Blanca', 0),
(341, 17, 'Araure', 0),
(342, 17, 'Biscucuy', 0),
(343, 17, 'Boconoito', 0),
(344, 17, 'Campo Elias', 0),
(345, 17, 'Chabasquen', 0),
(346, 17, 'Guanare', 1),
(347, 17, 'Guanarito', 0),
(348, 17, 'La Aparicion', 0),
(349, 17, 'La Mision', 0),
(350, 17, 'Mesa de Cavacas', 0),
(351, 17, 'Ospino', 0),
(352, 17, 'Papelon', 0),
(353, 17, 'Payara', 0),
(354, 17, 'Pimpinela', 0),
(355, 17, 'Piritu de Portuguesa', 0),
(356, 17, 'San Rafael de Onoto', 0),
(357, 17, 'Santa Rosalia', 0),
(358, 17, 'Turen', 0),
(359, 18, 'Altos de Sucre', 0),
(360, 18, 'Araya', 0),
(361, 18, 'Cariaco', 0),
(362, 18, 'Carupano', 0),
(363, 18, 'Casanay', 0),
(364, 18, 'Cumana', 1),
(365, 18, 'Cumanacoa', 0),
(366, 18, 'El Morro Puerto Santo', 0),
(367, 18, 'El Pilar', 0),
(368, 18, 'El Poblado', 0),
(369, 18, 'Guaca', 0),
(370, 18, 'Guiria', 0),
(371, 18, 'Irapa', 0),
(372, 18, 'Manicuare', 0),
(373, 18, 'Mariguitar', 0),
(374, 18, 'Rio Caribe', 0),
(375, 18, 'San Antonio del Golfo', 0),
(376, 18, 'San Jose de Aerocuar', 0),
(377, 18, 'San Vicente de Sucre', 0),
(378, 18, 'Santa Fe de Sucre', 0),
(379, 18, 'Tunapuy', 0),
(380, 18, 'Yaguaraparo', 0),
(381, 18, 'Yoco', 0),
(382, 19, 'Abejales', 0),
(383, 19, 'Borota', 0),
(384, 19, 'Bramon', 0),
(385, 19, 'Capacho', 0),
(386, 19, 'Colon', 0),
(387, 19, 'Coloncito', 0),
(388, 19, 'Cordero', 0),
(389, 19, 'El Cobre', 0),
(390, 19, 'El Pinal', 0),
(391, 19, 'Independencia', 0),
(392, 19, 'La Fria', 0),
(393, 19, 'La Grita', 0),
(394, 19, 'La Pedrera', 0),
(395, 19, 'La Tendida', 0),
(396, 19, 'Las Delicias', 0),
(397, 19, 'Las Hernandez', 0),
(398, 19, 'Lobatera', 0),
(399, 19, 'Michelena', 0),
(400, 19, 'Palmira', 0),
(401, 19, 'Pregonero', 0),
(402, 19, 'Queniquea', 0),
(403, 19, 'Rubio', 0),
(404, 19, 'San Antonio del Tachira', 0),
(405, 19, 'San Cristobal', 1),
(406, 19, 'San Jose de Bolivar', 0),
(407, 19, 'San Josecito', 0),
(408, 19, 'San Pedro del Rio', 0),
(409, 19, 'Santa Ana Tachira', 0),
(410, 19, 'Seboruco', 0),
(411, 19, 'Tariba', 0),
(412, 19, 'Umuquena', 0),
(413, 19, 'Ureña', 0),
(414, 20, 'Batatal', 0),
(415, 20, 'Betijoque', 0),
(416, 20, 'Bocono', 0),
(417, 20, 'Carache', 0),
(418, 20, 'Chejende', 0),
(419, 20, 'Cuicas', 0),
(420, 20, 'El Dividive', 0),
(421, 20, 'El Jaguito', 0),
(422, 20, 'Escuque', 0),
(423, 20, 'Isnotu', 0),
(424, 20, 'Jajo', 0),
(425, 20, 'La Ceiba', 0),
(426, 20, 'La Concepcion de Trujllo', 0),
(427, 20, 'La Mesa de Esnujaque', 0),
(428, 20, 'La Puerta', 0),
(429, 20, 'La Quebrada', 0),
(430, 20, 'Mendoza Fria', 0),
(431, 20, 'Meseta de Chimpire', 0),
(432, 20, 'Monay', 0),
(433, 20, 'Motatan', 0),
(434, 20, 'Pampan', 0),
(435, 20, 'Pampanito', 0),
(436, 20, 'Sabana de Mendoza', 0),
(437, 20, 'San Lazaro', 0),
(438, 20, 'Santa Ana de Trujillo', 0),
(439, 20, 'Tostos', 0),
(440, 20, 'Trujillo', 1),
(441, 20, 'Valera', 0),
(442, 21, 'Carayaca', 0),
(443, 21, 'Litoral', 0),
(444, 25, 'Archipielago Los Roques', 0),
(445, 22, 'Aroa', 0),
(446, 22, 'Boraure', 0),
(447, 22, 'Campo Elias de Yaracuy', 0),
(448, 22, 'Chivacoa', 0),
(449, 22, 'Cocorote', 0),
(450, 22, 'Farriar', 0),
(451, 22, 'Guama', 0),
(452, 22, 'Marin', 0),
(453, 22, 'Nirgua', 0),
(454, 22, 'Sabana de Parra', 0),
(455, 22, 'Salom', 0),
(456, 22, 'San Felipe', 1),
(457, 22, 'San Pablo de Yaracuy', 0),
(458, 22, 'Urachiche', 0),
(459, 22, 'Yaritagua', 0),
(460, 22, 'Yumare', 0),
(461, 23, 'Bachaquero', 0),
(462, 23, 'Bobures', 0),
(463, 23, 'Cabimas', 0),
(464, 23, 'Campo Concepcion', 0),
(465, 23, 'Campo Mara', 0),
(466, 23, 'Campo Rojo', 0),
(467, 23, 'Carrasquero', 0),
(468, 23, 'Casigua', 0),
(469, 23, 'Chiquinquira', 0),
(470, 23, 'Ciudad Ojeda', 0),
(471, 23, 'El Batey', 0),
(472, 23, 'El Carmelo', 0),
(473, 23, 'El Chivo', 0),
(474, 23, 'El Guayabo', 0),
(475, 23, 'El Mene', 0),
(476, 23, 'El Venado', 0),
(477, 23, 'Encontrados', 0),
(478, 23, 'Gibraltar', 0),
(479, 23, 'Isla de Toas', 0),
(480, 23, 'La Concepcion del Zulia', 0),
(481, 23, 'La Paz', 0),
(482, 23, 'La Sierrita', 0),
(483, 23, 'Lagunillas del Zulia', 0),
(484, 23, 'Las Piedras de Perija', 0),
(485, 23, 'Los Cortijos', 0),
(486, 23, 'Machiques', 0),
(487, 23, 'Maracaibo', 1),
(488, 23, 'Mene Grande', 0),
(489, 23, 'Palmarejo', 0),
(490, 23, 'Paraguaipoa', 0),
(491, 23, 'Potrerito', 0),
(492, 23, 'Pueblo Nuevo del Zulia', 0),
(493, 23, 'Puertos de Altagracia', 0),
(494, 23, 'Punta Gorda', 0),
(495, 23, 'Sabaneta de Palma', 0),
(496, 23, 'San Francisco', 0),
(497, 23, 'San Jose de Perija', 0),
(498, 23, 'San Rafael del Mojan', 0),
(499, 23, 'San Timoteo', 0),
(500, 23, 'Santa Barbara Del Zulia', 0),
(501, 23, 'Santa Cruz de Mara', 0),
(502, 23, 'Santa Cruz del Zulia', 0),
(503, 23, 'Santa Rita', 0),
(504, 23, 'Sinamaica', 0),
(505, 23, 'Tamare', 0),
(506, 23, 'Tia Juana', 0),
(507, 23, 'Villa del Rosario', 0),
(508, 21, 'La Guaira', 1),
(509, 21, 'Catia La Mar', 0),
(510, 21, 'Macuto', 0),
(511, 21, 'Naiguata', 0),
(512, 25, 'Archipielago Los Monjes', 0),
(513, 25, 'Isla La Tortuga y Cayos adyacentes', 0),
(514, 25, 'Isla La Sola', 0),
(515, 25, 'Islas Los Testigos', 0),
(516, 25, 'Islas Los Frailes', 0),
(517, 25, 'Isla La Orchila', 0),
(518, 25, 'Archipielago Las Aves', 0),
(519, 25, 'Isla de Aves', 0),
(520, 25, 'Isla La Blanquilla', 0),
(521, 25, 'Isla de Patos', 0),
(522, 25, 'Islas Los Hermanos', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aad_ubicacion_codigos_postales`
--

DROP TABLE IF EXISTS `aad_ubicacion_codigos_postales`;
CREATE TABLE `aad_ubicacion_codigos_postales` (
  `id_codigo_postal` int NOT NULL,
  `id_sector` int NOT NULL DEFAULT '0',
  `id_parroquia` int NOT NULL DEFAULT '0',
  `id_municipio` int NOT NULL DEFAULT '0',
  `codigo_postal` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aad_ubicacion_codigos_postales`
--

INSERT INTO `aad_ubicacion_codigos_postales` (`id_codigo_postal`, `id_sector`, `id_parroquia`, `id_municipio`, `codigo_postal`) VALUES
(1, 0, 0, 0, '1010-020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aad_ubicacion_municipios`
--

DROP TABLE IF EXISTS `aad_ubicacion_municipios`;
CREATE TABLE `aad_ubicacion_municipios` (
  `id_municipio` int NOT NULL,
  `id_provincia` int NOT NULL,
  `municipio` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aad_ubicacion_municipios`
--

INSERT INTO `aad_ubicacion_municipios` (`id_municipio`, `id_provincia`, `municipio`) VALUES
(1, 1, 'Alto Orinoco'),
(2, 1, 'Atabapo'),
(3, 1, 'Atures'),
(4, 1, 'Autana'),
(5, 1, 'Manapiare'),
(6, 1, 'Maroa'),
(7, 1, 'Rio Negro'),
(8, 2, 'Anaco'),
(9, 2, 'Aragua'),
(10, 2, 'Manuel Ezequiel Bruzual'),
(11, 2, 'Diego Bautista Urbaneja'),
(12, 2, 'Fernando Peñalver'),
(13, 2, 'Francisco Del Carmen Carvajal'),
(14, 2, 'General Sir Arthur McGregor'),
(15, 2, 'Guanta'),
(16, 2, 'Independencia'),
(17, 2, 'Jose Gregorio Monagas'),
(18, 2, 'Juan Antonio Sotillo'),
(19, 2, 'Juan Manuel Cajigal'),
(20, 2, 'Libertad'),
(21, 2, 'Francisco de Miranda'),
(22, 2, 'Pedro Maria Freites'),
(23, 2, 'Piritu'),
(24, 2, 'San Jose de Guanipa'),
(25, 2, 'San Juan de Capistrano'),
(26, 2, 'Santa Ana'),
(27, 2, 'Simon Bolivar'),
(28, 2, 'Simon Rodriguez'),
(29, 3, 'Achaguas'),
(30, 3, 'Biruaca'),
(31, 3, 'Muñoz'),
(32, 3, 'Paez'),
(33, 3, 'Pedro Camejo'),
(34, 3, 'Romulo Gallegos'),
(35, 3, 'San Fernando'),
(36, 4, 'Atanasio Girardot'),
(37, 4, 'Bolivar'),
(38, 4, 'Camatagua'),
(39, 4, 'Francisco Linares Alcantara'),
(40, 4, 'Jose angel Lamas'),
(41, 4, 'Jose Felix Ribas'),
(42, 4, 'Jose Rafael Revenga'),
(43, 4, 'Libertador'),
(44, 4, 'Mario Briceño Iragorry'),
(45, 4, 'Ocumare de la Costa de Oro'),
(46, 4, 'San Casimiro'),
(47, 4, 'San Sebastian'),
(48, 4, 'Santiago Mariño'),
(49, 4, 'Santos Michelena'),
(50, 4, 'Sucre'),
(51, 4, 'Tovar'),
(52, 4, 'Urdaneta'),
(53, 4, 'Zamora'),
(54, 5, 'Alberto Arvelo Torrealba'),
(55, 5, 'Andres Eloy Blanco'),
(56, 5, 'Antonio Jose de Sucre'),
(57, 5, 'Arismendi'),
(58, 5, 'Barinas'),
(59, 5, 'Bolivar'),
(60, 5, 'Cruz Paredes'),
(61, 5, 'Ezequiel Zamora'),
(62, 5, 'Obispos'),
(63, 5, 'Pedraza'),
(64, 5, 'Rojas'),
(65, 5, 'Sosa'),
(66, 6, 'Caroni'),
(67, 6, 'Cedeño'),
(68, 6, 'El Callao'),
(69, 6, 'Gran Sabana'),
(70, 6, 'Heres'),
(71, 6, 'Piar'),
(72, 6, 'Angostura (Raul Leoni)'),
(73, 6, 'Roscio'),
(74, 6, 'Sifontes'),
(75, 6, 'Sucre'),
(76, 6, 'Padre Pedro Chien'),
(77, 7, 'Bejuma'),
(78, 7, 'Carlos Arvelo'),
(79, 7, 'Diego Ibarra'),
(80, 7, 'Guacara'),
(81, 7, 'Juan Jose Mora'),
(82, 7, 'Libertador'),
(83, 7, 'Los Guayos'),
(84, 7, 'Miranda'),
(85, 7, 'Montalban'),
(86, 7, 'Naguanagua'),
(87, 7, 'Puerto Cabello'),
(88, 7, 'San Diego'),
(89, 7, 'San Joaquin'),
(90, 7, 'Valencia'),
(91, 8, 'Anzoategui'),
(92, 8, 'Tinaquillo'),
(93, 8, 'Girardot'),
(94, 8, 'Lima Blanco'),
(95, 8, 'Pao de San Juan Bautista'),
(96, 8, 'Ricaurte'),
(97, 8, 'Romulo Gallegos'),
(98, 8, 'San Carlos'),
(99, 8, 'Tinaco'),
(100, 9, 'Antonio Diaz'),
(101, 9, 'Casacoima'),
(102, 9, 'Pedernales'),
(103, 9, 'Tucupita'),
(104, 10, 'Acosta'),
(105, 10, 'Bolivar'),
(106, 10, 'Buchivacoa'),
(107, 10, 'Cacique Manaure'),
(108, 10, 'Carirubana'),
(109, 10, 'Colina'),
(110, 10, 'Dabajuro'),
(111, 10, 'Democracia'),
(112, 10, 'Falcon'),
(113, 10, 'Federacion'),
(114, 10, 'Jacura'),
(115, 10, 'Jose Laurencio Silva'),
(116, 10, 'Los Taques'),
(117, 10, 'Mauroa'),
(118, 10, 'Miranda'),
(119, 10, 'Monseñor Iturriza'),
(120, 10, 'Palmasola'),
(121, 10, 'Petit'),
(122, 10, 'Piritu'),
(123, 10, 'San Francisco'),
(124, 10, 'Sucre'),
(125, 10, 'Tocopero'),
(126, 10, 'Union'),
(127, 10, 'Urumaco'),
(128, 10, 'Zamora'),
(129, 11, 'Camaguan'),
(130, 11, 'Chaguaramas'),
(131, 11, 'El Socorro'),
(132, 11, 'Jose Felix Ribas'),
(133, 11, 'Jose Tadeo Monagas'),
(134, 11, 'Juan German Roscio'),
(135, 11, 'Julian Mellado'),
(136, 11, 'Las Mercedes'),
(137, 11, 'Leonardo Infante'),
(138, 11, 'Pedro Zaraza'),
(139, 11, 'Ortiz'),
(140, 11, 'San Geronimo de Guayabal'),
(141, 11, 'San Jose de Guaribe'),
(142, 11, 'Santa Maria de Ipire'),
(143, 11, 'Sebastian Francisco de Miranda'),
(144, 12, 'Andres Eloy Blanco'),
(145, 12, 'Crespo'),
(146, 12, 'Iribarren'),
(147, 12, 'Jimenez'),
(148, 12, 'Moran'),
(149, 12, 'Palavecino'),
(150, 12, 'Simon Planas'),
(151, 12, 'Torres'),
(152, 12, 'Urdaneta'),
(179, 13, 'Alberto Adriani'),
(180, 13, 'Andres Bello'),
(181, 13, 'Antonio Pinto Salinas'),
(182, 13, 'Aricagua'),
(183, 13, 'Arzobispo Chacon'),
(184, 13, 'Campo Elias'),
(185, 13, 'Caracciolo Parra Olmedo'),
(186, 13, 'Cardenal Quintero'),
(187, 13, 'Guaraque'),
(188, 13, 'Julio Cesar Salas'),
(189, 13, 'Justo Briceño'),
(190, 13, 'Libertador'),
(191, 13, 'Miranda'),
(192, 13, 'Obispo Ramos de Lora'),
(193, 13, 'Padre Noguera'),
(194, 13, 'Pueblo Llano'),
(195, 13, 'Rangel'),
(196, 13, 'Rivas Davila'),
(197, 13, 'Santos Marquina'),
(198, 13, 'Sucre'),
(199, 13, 'Tovar'),
(200, 13, 'Tulio Febres Cordero'),
(201, 13, 'Zea'),
(223, 14, 'Acevedo'),
(224, 14, 'Andres Bello'),
(225, 14, 'Baruta'),
(226, 14, 'Brion'),
(227, 14, 'Buroz'),
(228, 14, 'Carrizal'),
(229, 14, 'Chacao'),
(230, 14, 'Cristobal Rojas'),
(231, 14, 'El Hatillo'),
(232, 14, 'Guaicaipuro'),
(233, 14, 'Independencia'),
(234, 14, 'Lander'),
(235, 14, 'Los Salias'),
(236, 14, 'Paez'),
(237, 14, 'Paz Castillo'),
(238, 14, 'Pedro Gual'),
(239, 14, 'Plaza'),
(240, 14, 'Simon Bolivar'),
(241, 14, 'Sucre'),
(242, 14, 'Urdaneta'),
(243, 14, 'Zamora'),
(258, 15, 'Acosta'),
(259, 15, 'Aguasay'),
(260, 15, 'Bolivar'),
(261, 15, 'Caripe'),
(262, 15, 'Cedeño'),
(263, 15, 'Ezequiel Zamora'),
(264, 15, 'Libertador'),
(265, 15, 'Maturin'),
(266, 15, 'Piar'),
(267, 15, 'Punceres'),
(268, 15, 'Santa Barbara'),
(269, 15, 'Sotillo'),
(270, 15, 'Uracoa'),
(271, 16, 'Antolin del Campo'),
(272, 16, 'Arismendi'),
(273, 16, 'Garcia'),
(274, 16, 'Gomez'),
(275, 16, 'Maneiro'),
(276, 16, 'Marcano'),
(277, 16, 'Mariño'),
(278, 16, 'Peninsula de Macanao'),
(279, 16, 'Tubores'),
(280, 16, 'Villalba'),
(281, 16, 'Diaz'),
(282, 17, 'Agua Blanca'),
(283, 17, 'Araure'),
(284, 17, 'Esteller'),
(285, 17, 'Guanare'),
(286, 17, 'Guanarito'),
(287, 17, 'Monseñor Jose Vicente de Unda'),
(288, 17, 'Ospino'),
(289, 17, 'Paez'),
(290, 17, 'Papelon'),
(291, 17, 'San Genaro de Boconoito'),
(292, 17, 'San Rafael de Onoto'),
(293, 17, 'Santa Rosalia'),
(294, 17, 'Sucre'),
(295, 17, 'Turen'),
(296, 18, 'Andres Eloy Blanco'),
(297, 18, 'Andres Mata'),
(298, 18, 'Arismendi'),
(299, 18, 'Benitez'),
(300, 18, 'Bermudez'),
(301, 18, 'Bolivar'),
(302, 18, 'Cajigal'),
(303, 18, 'Cruz Salmeron Acosta'),
(304, 18, 'Libertador'),
(305, 18, 'Mariño'),
(306, 18, 'Mejia'),
(307, 18, 'Montes'),
(308, 18, 'Ribero'),
(309, 18, 'Sucre'),
(310, 18, 'Valdez'),
(341, 19, 'Andres Bello'),
(342, 19, 'Antonio Romulo Costa'),
(343, 19, 'Ayacucho'),
(344, 19, 'Bolivar'),
(345, 19, 'Cardenas'),
(346, 19, 'Cordoba'),
(347, 19, 'Fernandez Feo'),
(348, 19, 'Francisco de Miranda'),
(349, 19, 'Garcia de Hevia'),
(350, 19, 'Guasimos'),
(351, 19, 'Independencia'),
(352, 19, 'Jauregui'),
(353, 19, 'Jose Maria Vargas'),
(354, 19, 'Junin'),
(355, 19, 'Libertad'),
(356, 19, 'Libertador'),
(357, 19, 'Lobatera'),
(358, 19, 'Michelena'),
(359, 19, 'Panamericano'),
(360, 19, 'Pedro Maria Ureña'),
(361, 19, 'Rafael Urdaneta'),
(362, 19, 'Samuel Dario Maldonado'),
(363, 19, 'San Cristobal'),
(364, 19, 'Seboruco'),
(365, 19, 'Simon Rodriguez'),
(366, 19, 'Sucre'),
(367, 19, 'Torbes'),
(368, 19, 'Uribante'),
(369, 19, 'San Judas Tadeo'),
(370, 20, 'Andres Bello'),
(371, 20, 'Bocono'),
(372, 20, 'Bolivar'),
(373, 20, 'Candelaria'),
(374, 20, 'Carache'),
(375, 20, 'Escuque'),
(376, 20, 'Jose Felipe Marquez Cañizalez'),
(377, 20, 'Juan Vicente Campos Elias'),
(378, 20, 'La Ceiba'),
(379, 20, 'Miranda'),
(380, 20, 'Monte Carmelo'),
(381, 20, 'Motatan'),
(382, 20, 'Pampan'),
(383, 20, 'Pampanito'),
(384, 20, 'Rafael Rangel'),
(385, 20, 'San Rafael de Carvajal'),
(386, 20, 'Sucre'),
(387, 20, 'Trujillo'),
(388, 20, 'Urdaneta'),
(389, 20, 'Valera'),
(390, 21, 'Vargas'),
(391, 22, 'Aristides Bastidas'),
(392, 22, 'Bolivar'),
(407, 22, 'Bruzual'),
(408, 22, 'Cocorote'),
(409, 22, 'Independencia'),
(410, 22, 'Jose Antonio Paez'),
(411, 22, 'La Trinidad'),
(412, 22, 'Manuel Monge'),
(413, 22, 'Nirgua'),
(414, 22, 'Peña'),
(415, 22, 'San Felipe'),
(416, 22, 'Sucre'),
(417, 22, 'Urachiche'),
(418, 22, 'Jose Joaquin Veroes'),
(441, 23, 'Almirante Padilla'),
(442, 23, 'Baralt'),
(443, 23, 'Cabimas'),
(444, 23, 'Catatumbo'),
(445, 23, 'Colon'),
(446, 23, 'Francisco Javier Pulgar'),
(447, 23, 'Paez'),
(448, 23, 'Jesus Enrique Losada'),
(449, 23, 'Jesus Maria Semprun'),
(450, 23, 'La Cañada de Urdaneta'),
(451, 23, 'Lagunillas'),
(452, 23, 'Machiques de Perija'),
(453, 23, 'Mara'),
(454, 23, 'Maracaibo'),
(455, 23, 'Miranda'),
(456, 23, 'Rosario de Perija'),
(457, 23, 'San Francisco'),
(458, 23, 'Santa Rita'),
(459, 23, 'Simon Bolivar'),
(460, 23, 'Sucre'),
(461, 23, 'Valmore Rodriguez'),
(462, 24, 'Libertador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aad_ubicacion_paises`
--

DROP TABLE IF EXISTS `aad_ubicacion_paises`;
CREATE TABLE `aad_ubicacion_paises` (
  `id_pais` int NOT NULL,
  `nombre_pais` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `iso2` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `iso3` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `phone_code` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ruta_icono_bandera` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT '../banderas_iconos/',
  `icono_bandera` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aad_ubicacion_paises`
--

INSERT INTO `aad_ubicacion_paises` (`id_pais`, `nombre_pais`, `iso2`, `iso3`, `phone_code`, `ruta_icono_bandera`, `icono_bandera`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '+93-', '../banderas_iconos/', 'af.png'),
(2, 'Aland Islands', 'AX', 'ALA', '+358-', '../banderas_iconos/', 'ax.png'),
(3, 'Albania', 'AL', 'ALB', '+355-', '../banderas_iconos/', 'al.png'),
(4, 'Algeria', 'DZ', 'DZA', '+213-', '../banderas_iconos/', 'dz.png'),
(5, 'American Samoa', 'AS', 'ASM', '+1684-', '../banderas_iconos/', 'as.png'),
(6, 'Andorra', 'AD', 'AND', '+376-', '../banderas_iconos/', 'ad.png'),
(7, 'Angola', 'AO', 'AGO', '+244-', '../banderas_iconos/', 'ao.png'),
(8, 'Anguilla', 'AI', 'AIA', '+1264-', '../banderas_iconos/', 'ai.png'),
(9, 'Antarctica', 'AQ', 'ATA', '+672-', '../banderas_iconos/', 'aq.png'),
(10, 'Antigua and Barbuda', 'AG', 'ATG', '+1268-', '../banderas_iconos/', 'ag.png'),
(11, 'Argentina', 'AR', 'ARG', '+54-', '../banderas_iconos/', 'ar.png'),
(12, 'Armenia', 'AM', 'ARM', '+374-', '../banderas_iconos/', 'am.png'),
(13, 'Aruba', 'AW', 'ABW', '+297-', '../banderas_iconos/', 'aw.png'),
(14, 'Ascension y Tristan de Acuña', 'SH', 'SHN', '+290-', '../banderas_iconos/', 'sh.png'),
(15, 'Australia', 'AU', 'AUS', '+61-', '../banderas_iconos/', 'au.png'),
(16, 'Austria', 'AT', 'AUT', '+43-', '../banderas_iconos/', 'at.png'),
(17, 'Azerbaijan', 'AZ', 'AZE', '+994-', '../banderas_iconos/', 'az.png'),
(18, 'Bahamas', 'BS', 'BHS', '+1242-', '../banderas_iconos/', 'bs.png'),
(19, 'Bahrain', 'BH', 'BHR', '+973-', '../banderas_iconos/', 'bh.png'),
(20, 'Bangladesh', 'BD', 'BGD', '+880-', '../banderas_iconos/', 'bd.png'),
(21, 'Barbados', 'BB', 'BRB', '+1246-', '../banderas_iconos/', 'bb.png'),
(22, 'Belarus', 'BY', 'BLR', '+375-', '../banderas_iconos/', 'by.png'),
(23, 'Belgium', 'BE', 'BEL', '+32-', '../banderas_iconos/', 'be.png'),
(24, 'Belize', 'BZ', 'BLZ', '+501-', '../banderas_iconos/', 'bz.png'),
(25, 'Benin', 'BJ', 'BEN', '+229-', '../banderas_iconos/', 'bj.png'),
(26, 'Bermuda Islands', 'BM', 'BMU', '+1441-', '../banderas_iconos/', 'bm.png'),
(27, 'Bhutan', 'BT', 'BTN', '+975-', '../banderas_iconos/', 'bt.png'),
(28, 'Bolivia', 'BO', 'BOL', '+591-', '../banderas_iconos/', 'bo.png'),
(29, 'Bosnia and Herzegovina', 'BA', 'BIH', '+387-', '../banderas_iconos/', 'ba.png'),
(30, 'Botswana', 'BW', 'BWA', '+267-', '../banderas_iconos/', 'bw.png'),
(31, 'Bouvet Island', 'BV', 'BVT', '+000-', '../banderas_iconos/', 'bv.png'),
(32, 'Brazil', 'BR', 'BRA', '+55-', '../banderas_iconos/', 'br.png'),
(33, 'British Indian Ocean Territory', 'IO', 'IOT', '+246-', '../banderas_iconos/', 'io.png'),
(34, 'Brunei', 'BN', 'BRN', '+673-', '../banderas_iconos/', 'bn.png'),
(35, 'Bulgaria', 'BG', 'BGR', '+359-', '../banderas_iconos/', 'bg.png'),
(36, 'Burkina Faso', 'BF', 'BFA', '+226-', '../banderas_iconos/', 'bf.png'),
(37, 'Burundi', 'BI', 'BDI', '+257-', '../banderas_iconos/', 'bi.png'),
(38, 'Cambodia', 'KH', 'KHM', '+855-', '../banderas_iconos/', 'kh.png'),
(39, 'Cameroon', 'CM', 'CMR', '+237-', '../banderas_iconos/', 'cm.png'),
(40, 'Canada', 'CA', 'CAN', '+1-', '../banderas_iconos/', 'ca.png'),
(41, 'Cape Verde', 'CV', 'CPV', '+238-', '../banderas_iconos/', 'cv.png'),
(42, 'Cayman Islands', 'KY', 'CYM', '+1345-', '../banderas_iconos/', 'ky.png'),
(43, 'Central African Republic', 'CF', 'CAF', '+236-', '../banderas_iconos/', 'cf.png'),
(44, 'Chad', 'TD', 'TCD', '+235-', '../banderas_iconos/', 'td.png'),
(45, 'Chile', 'CL', 'CHL', '+56-', '../banderas_iconos/', 'cl.png'),
(46, 'China', 'CN', 'CHN', '+86-', '../banderas_iconos/', 'cn.png'),
(47, 'Christmas Island', 'CX', 'CXR', '+61-', '../banderas_iconos/', 'cx.png'),
(48, 'Cocos (Keeling) Islands', 'CC', 'CCK', '+61-', '../banderas_iconos/', 'cc.png'),
(49, 'Colombia', 'CO', 'COL', '+57-', '../banderas_iconos/', 'co.png'),
(50, 'Comoros', 'KM', 'COM', '+269-', '../banderas_iconos/', 'km.png'),
(51, 'Cook Islands', 'CK', 'COK', '+682-', '../banderas_iconos/', 'ck.png'),
(52, 'Costa Rica', 'CR', 'CRI', '+506-', '../banderas_iconos/', 'cr.png'),
(53, 'Croatia', 'HR', 'HRV', '+385-', '../banderas_iconos/', 'hr.png'),
(54, 'Cuba', 'CU', 'CUB', '+53-', '../banderas_iconos/', 'cu.png'),
(55, 'Curaçao', 'CW', 'CWU', '+5999-', '../banderas_iconos/', 'cw.png'),
(56, 'Cyprus', 'CY', 'CYP', '+357-', '../banderas_iconos/', 'cy.png'),
(57, 'Czech Republic', 'CZ', 'CZE', '+420-', '../banderas_iconos/', 'cz.png'),
(58, 'Democratic Republic of the Congo', 'CD', 'COD', '+243-', '../banderas_iconos/', 'cd.png'),
(59, 'Denmark', 'DK', 'DNK', '+45-', '../banderas_iconos/', 'dk.png'),
(60, 'Djibouti', 'DJ', 'DJI', '+253-', '../banderas_iconos/', 'dj.png'),
(61, 'Dominica', 'DM', 'DMA', '+1767-', '../banderas_iconos/', 'dm.png'),
(62, 'Dominican Republic', 'DO', 'DOM', '+1809-', '../banderas_iconos/', 'do.png'),
(63, 'East Timor', 'TL', 'TLS', '+670-', '../banderas_iconos/', 'tl.png'),
(64, 'Ecuador', 'EC', 'ECU', '+593-', '../banderas_iconos/', 'ec.png'),
(65, 'Egypt', 'EG', 'EGY', '+20-', '../banderas_iconos/', 'eg.png'),
(66, 'El Salvador', 'SV', 'SLV', '+503-', '../banderas_iconos/', 'sv.png'),
(67, 'Equatorial Guinea', 'GQ', 'GNQ', '+240-', '../banderas_iconos/', 'gq.png'),
(68, 'Eritrea', 'ER', 'ERI', '+291-', '../banderas_iconos/', 'er.png'),
(69, 'Estados Federados de', 'FM', 'FSM', '+691-', '../banderas_iconos/', 'fm.png'),
(70, 'Estonia', 'EE', 'EST', '+372-', '../banderas_iconos/', 'ee.png'),
(71, 'Ethiopia', 'ET', 'ETH', '+251-', '../banderas_iconos/', 'et.png'),
(72, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '+500-', '../banderas_iconos/', 'fk.png'),
(73, 'Faroe Islands', 'FO', 'FRO', '+298-', '../banderas_iconos/', 'fo.png'),
(74, 'Fiji', 'FJ', 'FJI', '+679-', '../banderas_iconos/', 'fj.png'),
(75, 'Finland', 'FI', 'FIN', '+358-', '../banderas_iconos/', 'fi.png'),
(76, 'France', 'FR', 'FRA', '+33-', '../banderas_iconos/', 'fr.png'),
(77, 'French Guiana', 'GF', 'GUF', '+594-', '../banderas_iconos/', 'gf.png'),
(78, 'French Polynesia', 'PF', 'PYF', '+689-', '../banderas_iconos/', 'pf.png'),
(79, 'French Southern Territories', 'TF', 'ATF', '+000-', '../banderas_iconos/', 'tf.png'),
(80, 'Gabon', 'GA', 'GAB', '+241-', '../banderas_iconos/', 'ga.png'),
(81, 'Gambia', 'GM', 'GMB', '+220-', '../banderas_iconos/', 'gm.png'),
(82, 'Georgia', 'GE', 'GEO', '+995-', '../banderas_iconos/', 'ge.png'),
(83, 'Germany', 'DE', 'DEU', '+49-', '../banderas_iconos/', 'de.png'),
(84, 'Ghana', 'GH', 'GHA', '+233-', '../banderas_iconos/', 'gh.png'),
(85, 'Gibraltar', 'GI', 'GIB', '+350-', '../banderas_iconos/', 'gi.png'),
(86, 'Greece', 'GR', 'GRC', '+30-', '../banderas_iconos/', 'gr.png'),
(87, 'Greenland', 'GL', 'GRL', '+299-', '../banderas_iconos/', 'gl.png'),
(88, 'Grenada', 'GD', 'GRD', '+1473-', '../banderas_iconos/', 'gd.png'),
(89, 'Guadeloupe', 'GP', 'GLP', '+590-', '../banderas_iconos/', 'gp.png'),
(90, 'Guam', 'GU', 'GUM', '+1671-', '../banderas_iconos/', 'gu.png'),
(91, 'Guatemala', 'GT', 'GTM', '+502-', '../banderas_iconos/', 'gt.png'),
(92, 'Guernsey', 'GG', 'GGY', '+44-', '../banderas_iconos/', 'gg.png'),
(93, 'Guinea', 'GN', 'GIN', '+224-', '../banderas_iconos/', 'gn.png'),
(94, 'Guinea-Bissau', 'GW', 'GNB', '+245-', '../banderas_iconos/', 'gw.png'),
(95, 'Guyana', 'GY', 'GUY', '+592-', '../banderas_iconos/', 'gy.png'),
(96, 'Haiti', 'HT', 'HTI', '+509-', '../banderas_iconos/', 'ht.png'),
(97, 'Heard Island and McDonald Islands', 'HM', 'HMD', '+000-', '../banderas_iconos/', 'hm.png'),
(98, 'Honduras', 'HN', 'HND', '+504-', '../banderas_iconos/', 'hn.png'),
(99, 'Hong Kong', 'HK', 'HKG', '+852-', '../banderas_iconos/', 'hk.png'),
(100, 'Hungary', 'HU', 'HUN', '+36-', '../banderas_iconos/', 'hu.png'),
(101, 'Iceland', 'IS', 'ISL', '+354-', '../banderas_iconos/', 'is.png'),
(102, 'India', 'IN', 'IND', '+91-', '../banderas_iconos/', 'in.png'),
(103, 'Indonesia', 'ID', 'IDN', '+62-', '../banderas_iconos/', 'id.png'),
(104, 'Iran', 'IR', 'IRN', '+98-', '../banderas_iconos/', 'ir.png'),
(105, 'Iraq', 'IQ', 'IRQ', '+964-', '../banderas_iconos/', 'iq.png'),
(106, 'Ireland', 'IE', 'IRL', '+353-', '../banderas_iconos/', 'ie.png'),
(107, 'Isle of Man', 'IM', 'IMN', '+44-', '../banderas_iconos/', 'im.png'),
(108, 'Israel', 'IL', 'ISR', '+972-', '../banderas_iconos/', 'il.png'),
(109, 'Italy', 'IT', 'ITA', '+39-', '../banderas_iconos/', 'it.png'),
(110, 'Ivory Coast', 'CI', 'CIV', '+225-', '../banderas_iconos/', 'ci.png'),
(111, 'Jamaica', 'JM', 'JAM', '+1876-', '../banderas_iconos/', 'jm.png'),
(112, 'Japan', 'JP', 'JPN', '+81-', '../banderas_iconos/', 'jp.png'),
(113, 'Jersey', 'JE', 'JEY', '+44-', '../banderas_iconos/', 'je.png'),
(114, 'Jordan', 'JO', 'JOR', '+962-', '../banderas_iconos/', 'jo.png'),
(115, 'Kazakhstan', 'KZ', 'KAZ', '+7-', '../banderas_iconos/', 'kz.png'),
(116, 'Kenya', 'KE', 'KEN', '+254-', '../banderas_iconos/', 'ke.png'),
(117, 'Kiribati', 'KI', 'KIR', '+686-', '../banderas_iconos/', 'ki.png'),
(118, 'Kuwait', 'KW', 'KWT', '+965-', '../banderas_iconos/', 'kw.png'),
(119, 'Kyrgyzstan', 'KG', 'KGZ', '+996-', '../banderas_iconos/', 'kg.png'),
(120, 'Laos', 'LA', 'LAO', '+856-', '../banderas_iconos/', 'la.png'),
(121, 'Latvia', 'LV', 'LVA', '+371-', '../banderas_iconos/', 'lv.png'),
(122, 'Lebanon', 'LB', 'LBN', '+961-', '../banderas_iconos/', 'lb.png'),
(123, 'Lesotho', 'LS', 'LSO', '+266-', '../banderas_iconos/', 'ls.png'),
(124, 'Liberia', 'LR', 'LBR', '+231-', '../banderas_iconos/', 'lr.png'),
(125, 'Libya', 'LY', 'LBY', '+218-', '../banderas_iconos/', 'ly.png'),
(126, 'Liechtenstein', 'LI', 'LIE', '+423-', '../banderas_iconos/', 'li.png'),
(127, 'Lithuania', 'LT', 'LTU', '+370-', '../banderas_iconos/', 'lt.png'),
(128, 'Luxembourg', 'LU', 'LUX', '+352-', '../banderas_iconos/', 'lu.png'),
(129, 'Macao', 'MO', 'MAC', '+853-', '../banderas_iconos/', 'mo.png'),
(130, 'Macedonia', 'MK', 'MKD', '+389-', '../banderas_iconos/', 'mk.png'),
(131, 'Madagascar', 'MG', 'MDG', '+261-', '../banderas_iconos/', 'mg.png'),
(132, 'Malawi', 'MW', 'MWI', '+265-', '../banderas_iconos/', 'mw.png'),
(133, 'Malaysia', 'MY', 'MYS', '+60-', '../banderas_iconos/', 'my.png'),
(134, 'Maldives', 'MV', 'MDV', '+960-', '../banderas_iconos/', 'mv.png'),
(135, 'Mali', 'ML', 'MLI', '+223-', '../banderas_iconos/', 'ml.png'),
(136, 'Malta', 'MT', 'MLT', '+356-', '../banderas_iconos/', 'mt.png'),
(137, 'Marshall Islands', 'MH', 'MHL', '+692-', '../banderas_iconos/', 'mh.png'),
(138, 'Martinique', 'MQ', 'MTQ', '+596-', '../banderas_iconos/', 'mq.png'),
(139, 'Mauritania', 'MR', 'MRT', '+222-', '../banderas_iconos/', 'mr.png'),
(140, 'Mauritius', 'MU', 'MUS', '+230-', '../banderas_iconos/', 'mu.png'),
(141, 'Mayotte', 'YT', 'MYT', '+262-', '../banderas_iconos/', 'yt.png'),
(142, 'Mexico', 'MX', 'MEX', '+52-', '../banderas_iconos/', 'mx.png'),
(143, 'Moldova', 'MD', 'MDA', '+373-', '../banderas_iconos/', 'md.png'),
(144, 'Monaco', 'MC', 'MCO', '+377-', '../banderas_iconos/', 'mc.png'),
(145, 'Mongolia', 'MN', 'MNG', '+976-', '../banderas_iconos/', 'mn.png'),
(146, 'Montenegro', 'ME', 'MNE', '+382-', '../banderas_iconos/', 'me.png'),
(147, 'Montserrat', 'MS', 'MSR', '+1664-', '../banderas_iconos/', 'ms.png'),
(148, 'Morocco', 'MA', 'MAR', '+212-', '../banderas_iconos/', 'ma.png'),
(149, 'Mozambique', 'MZ', 'MOZ', '+258-', '../banderas_iconos/', 'mz.png'),
(150, 'Myanmar', 'MM', 'MMR', '+95-', '../banderas_iconos/', 'mm.png'),
(151, 'Namibia', 'NA', 'NAM', '+264-', '../banderas_iconos/', 'na.png'),
(152, 'Nauru', 'NR', 'NRU', '+674-', '../banderas_iconos/', 'nr.png'),
(153, 'Nepal', 'NP', 'NPL', '+977-', '../banderas_iconos/', 'np.png'),
(154, 'Netherlands', 'NL', 'NLD', '+31-', '../banderas_iconos/', 'nl.png'),
(155, 'New Caledonia', 'NC', 'NCL', '+687-', '../banderas_iconos/', 'nc.png'),
(156, 'New Zealand', 'NZ', 'NZL', '+64-', '../banderas_iconos/', 'nz.png'),
(157, 'Nicaragua', 'NI', 'NIC', '+505-', '../banderas_iconos/', 'ni.png'),
(158, 'Niger', 'NE', 'NER', '+227-', '../banderas_iconos/', 'ne.png'),
(159, 'Nigeria', 'NG', 'NGA', '+234-', '../banderas_iconos/', 'ng.png'),
(160, 'Niue', 'NU', 'NIU', '+683-', '../banderas_iconos/', 'nu.png'),
(161, 'Norfolk Island', 'NF', 'NFK', '+672-', '../banderas_iconos/', 'nf.png'),
(162, 'North Korea', 'KP', 'PRK', '+850-', '../banderas_iconos/', 'kp.png'),
(163, 'Northern Mariana Islands', 'MP', 'MNP', '+1670-', '../banderas_iconos/', 'mp.png'),
(164, 'Norway', 'NO', 'NOR', '+47-', '../banderas_iconos/', 'no.png'),
(165, 'Oman', 'OM', 'OMN', '+968-', '../banderas_iconos/', 'om.png'),
(166, 'Pakistan', 'PK', 'PAK', '+92-', '../banderas_iconos/', 'pk.png'),
(167, 'Palau', 'PW', 'PLW', '+680-', '../banderas_iconos/', 'pw.png'),
(168, 'Palestine', 'PS', 'PSE', '+970-', '../banderas_iconos/', 'ps.png'),
(169, 'Panama', 'PA', 'PAN', '+507-', '../banderas_iconos/', 'pa.png'),
(170, 'Papua New Guinea', 'PG', 'PNG', '+675-', '../banderas_iconos/', 'pg.png'),
(171, 'Paraguay', 'PY', 'PRY', '+595-', '../banderas_iconos/', 'py.png'),
(172, 'Peru', 'PE', 'PER', '+51-', '../banderas_iconos/', 'pe.png'),
(173, 'Philippines', 'PH', 'PHL', '+63-', '../banderas_iconos/', 'ph.png'),
(174, 'Pitcairn Islands', 'PN', 'PCN', '+870-', '../banderas_iconos/', 'pn.png'),
(175, 'Poland', 'PL', 'POL', '+48-', '../banderas_iconos/', 'pl.png'),
(176, 'Portugal', 'PT', 'PRT', '+351-', '../banderas_iconos/', 'pt.png'),
(177, 'Puerto Rico', 'PR', 'PRI', '+1-', '../banderas_iconos/', 'pr.png'),
(178, 'Qatar', 'QA', 'QAT', '+974-', '../banderas_iconos/', 'qa.png'),
(179, 'Republic of the Congo', 'CG', 'COG', '+242-', '../banderas_iconos/', 'cg.png'),
(180, 'Reunion', 'RE', 'REU', '+262-', '../banderas_iconos/', 're.png'),
(181, 'Romania', 'RO', 'ROU', '+40-', '../banderas_iconos/', 'ro.png'),
(182, 'Russia', 'RU', 'RUS', '+7-', '../banderas_iconos/', 'ru.png'),
(183, 'Rwanda', 'RW', 'RWA', '+250-', '../banderas_iconos/', 'rw.png'),
(184, 'Saint Barthelemy', 'BL', 'BLM', '+590-', '../banderas_iconos/', 'bl.png'),
(185, 'Saint Kitts and Nevis', 'KN', 'KNA', '+1869-', '../banderas_iconos/', 'kn.png'),
(186, 'Saint Lucia', 'LC', 'LCA', '+1758-', '../banderas_iconos/', 'lc.png'),
(187, 'Saint Martin (French part)', 'MF', 'MAF', '+1599-', '../banderas_iconos/', 'mf.png'),
(188, 'Saint Pierre and Miquelon', 'PM', 'SPM', '+508-', '../banderas_iconos/', 'pm.png'),
(189, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '+1784-', '../banderas_iconos/', 'vc.png'),
(190, 'Samoa', 'WS', 'WSM', '+685-', '../banderas_iconos/', 'ws.png'),
(191, 'San Marino', 'SM', 'SMR', '+378-', '../banderas_iconos/', 'sm.png'),
(192, 'Sao Tome and Principe', 'ST', 'STP', '+239-', '../banderas_iconos/', 'st.png'),
(193, 'Saudi Arabia', 'SA', 'SAU', '+966-', '../banderas_iconos/', 'sa.png'),
(194, 'Senegal', 'SN', 'SEN', '+221-', '../banderas_iconos/', 'sn.png'),
(195, 'Serbia', 'RS', 'SRB', '+381-', '../banderas_iconos/', 'rs.png'),
(196, 'Seychelles', 'SC', 'SYC', '+248-', '../banderas_iconos/', 'sc.png'),
(197, 'Sierra Leone', 'SL', 'SLE', '+232-', '../banderas_iconos/', 'sl.png'),
(198, 'Singapore', 'SG', 'SGP', '+65-', '../banderas_iconos/', 'sg.png'),
(199, 'Sint Maarten', 'SX', 'SMX', '+1721-', '../banderas_iconos/', 'sx.png'),
(200, 'Slovakia', 'SK', 'SVK', '+421-', '../banderas_iconos/', 'sk.png'),
(201, 'Slovenia', 'SI', 'SVN', '+386-', '../banderas_iconos/', 'si.png'),
(202, 'Solomon Islands', 'SB', 'SLB', '+677-', '../banderas_iconos/', 'sb.png'),
(203, 'Somalia', 'SO', 'SOM', '+252-', '../banderas_iconos/', 'so.png'),
(204, 'South Africa', 'ZA', 'ZAF', '+27-', '../banderas_iconos/', 'za.png'),
(205, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', '+500-', '../banderas_iconos/', 'gs.png'),
(206, 'South Korea', 'KR', 'KOR', '+82-', '../banderas_iconos/', 'kr.png'),
(207, 'South Sudan', 'SS', 'SSD', '+211-', '../banderas_iconos/', 'ss.png'),
(208, 'Spain', 'ES', 'ESP', '+34-', '../banderas_iconos/', 'es.png'),
(209, 'Sri Lanka', 'LK', 'LKA', '+94-', '../banderas_iconos/', 'lk.png'),
(210, 'Sudan', 'SD', 'SDN', '+249-', '../banderas_iconos/', 'sd.png'),
(211, 'Suriname', 'SR', 'SUR', '+597-', '../banderas_iconos/', 'sr.png'),
(212, 'Svalbard and Jan Mayen', 'SJ', 'SJM', '+47-', '../banderas_iconos/', 'sj.png'),
(213, 'Swaziland', 'SZ', 'SWZ', '+268-', '../banderas_iconos/', 'sz.png'),
(214, 'Sweden', 'SE', 'SWE', '+46-', '../banderas_iconos/', 'se.png'),
(215, 'Switzerland', 'CH', 'CHE', '+41-', '../banderas_iconos/', 'ch.png'),
(216, 'Syria', 'SY', 'SYR', '+963-', '../banderas_iconos/', 'sy.png'),
(217, 'Taiwan', 'TW', 'TWN', '+886-', '../banderas_iconos/', 'tw.png'),
(218, 'Tajikistan', 'TJ', 'TJK', '+992-', '../banderas_iconos/', 'tj.png'),
(219, 'Tanzania', 'TZ', 'TZA', '+255-', '../banderas_iconos/', 'tz.png'),
(220, 'Thailand', 'TH', 'THA', '+66-', '../banderas_iconos/', 'th.png'),
(221, 'Togo', 'TG', 'TGO', '+228-', '../banderas_iconos/', 'tg.png'),
(222, 'Tokelau', 'TK', 'TKL', '+690-', '../banderas_iconos/', 'tk.png'),
(223, 'Tonga', 'TO', 'TON', '+676-', '../banderas_iconos/', 'to.png'),
(224, 'Trinidad and Tobago', 'TT', 'TTO', '+1868-', '../banderas_iconos/', 'tt.png'),
(225, 'Tunisia', 'TN', 'TUN', '+216-', '../banderas_iconos/', 'tn.png'),
(226, 'Turkey', 'TR', 'TUR', '+90-', '../banderas_iconos/', 'tr.png'),
(227, 'Turkmenistan', 'TM', 'TKM', '+993-', '../banderas_iconos/', 'tm.png'),
(228, 'Turks and Caicos Islands', 'TC', 'TCA', '+1649-', '../banderas_iconos/', 'tc.png'),
(229, 'Tuvalu', 'TV', 'TUV', '+688-', '../banderas_iconos/', 'tv.png'),
(230, 'Uganda', 'UG', 'UGA', '+256-', '../banderas_iconos/', 'ug.png'),
(231, 'Ukraine', 'UA', 'UKR', '+380-', '../banderas_iconos/', 'ua.png'),
(232, 'United Arab Emirates', 'AE', 'ARE', '+971-', '../banderas_iconos/', 'ae.png'),
(233, 'United Kingdom', 'GB', 'GBR', '+44-', '../banderas_iconos/', 'gb.png'),
(234, 'United States Minor Outlying Islands', 'UM', 'UMI', '+246-', '../banderas_iconos/', 'um.png'),
(235, 'United States of America', 'US', 'USA', '+1-', '../banderas_iconos/', 'us.png'),
(236, 'United States Virgin Islands', 'VI', 'VIR', '+1340-', '../banderas_iconos/', 'vi.png'),
(237, 'Uruguay', 'UY', 'URY', '+598-', '../banderas_iconos/', 'uy.png'),
(238, 'Uzbekistan', 'UZ', 'UZB', '+998-', '../banderas_iconos/', 'uz.png'),
(239, 'Vanuatu', 'VU', 'VUT', '+678-', '../banderas_iconos/', 'vu.png'),
(240, 'Vatican City State', 'VA', 'VAT', '+39-', '../banderas_iconos/', 'va.png'),
(241, 'Venezuela', 'VE', 'VEN', '+58-', '../banderas_iconos/', 've.png'),
(242, 'Vietnam', 'VN', 'VNM', '+84-', '../banderas_iconos/', 'vn.png'),
(243, 'Virgin Islands', 'VG', 'VGB', '+1284-', '../banderas_iconos/', 'vg.png'),
(244, 'Wallis and Futuna', 'WF', 'WLF', '+681-', '../banderas_iconos/', 'wf.png'),
(245, 'Western Sahara', 'EH', 'ESH', '+212-', '../banderas_iconos/', 'eh.png'),
(246, 'Yemen', 'YE', 'YEM', '+967-', '../banderas_iconos/', 'ye.png'),
(247, 'Zambia', 'ZM', 'ZMB', '+260-', '../banderas_iconos/', 'zm.png'),
(248, 'Zimbabwe', 'ZW', 'ZWE', '+263-', '../banderas_iconos/', 'zw.png'),
(249, 'Euskadi', 'PV', 'PVES', '+34-', '../banderas_iconos/', 'pv.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aad_ubicacion_parroquias`
--

DROP TABLE IF EXISTS `aad_ubicacion_parroquias`;
CREATE TABLE `aad_ubicacion_parroquias` (
  `id_parroquia` int NOT NULL,
  `id_municipio` int NOT NULL,
  `parroquia` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aad_ubicacion_parroquias`
--

INSERT INTO `aad_ubicacion_parroquias` (`id_parroquia`, `id_municipio`, `parroquia`) VALUES
(1, 1, 'Alto Orinoco'),
(2, 1, 'Huachamacare Acanaña'),
(3, 1, 'Marawaka Toky Shamanaña'),
(4, 1, 'Mavaka Mavaka'),
(5, 1, 'Sierra Parima Parimabe'),
(6, 2, 'Ucata Laja Lisa'),
(7, 2, 'Yapacana Macuruco'),
(8, 2, 'Caname Guarinuma'),
(9, 3, 'Fernando Giron Tovar'),
(10, 3, 'Luis Alberto Gomez'),
(11, 3, 'Pahueña Limon de Parhueña'),
(12, 3, 'Platanillal Platanillal'),
(13, 4, 'Samariapo'),
(14, 4, 'Sipapo'),
(15, 4, 'Munduapo'),
(16, 4, 'Guayapo'),
(17, 5, 'Alto Ventuari'),
(18, 5, 'Medio Ventuari'),
(19, 5, 'Bajo Ventuari'),
(20, 6, 'Victorino'),
(21, 6, 'Comunidad'),
(22, 7, 'Casiquiare'),
(23, 7, 'Cocuy'),
(24, 7, 'San Carlos de Rio Negro'),
(25, 7, 'Solano'),
(26, 8, 'Anaco'),
(27, 8, 'San Joaquin'),
(28, 9, 'Cachipo'),
(29, 9, 'Aragua de Barcelona'),
(30, 11, 'Lecheria'),
(31, 11, 'El Morro'),
(32, 12, 'Puerto Piritu'),
(33, 12, 'San Miguel'),
(34, 12, 'Sucre'),
(35, 13, 'Valle de Guanape'),
(36, 13, 'Santa Barbara'),
(37, 14, 'El Chaparro'),
(38, 14, 'Tomas Alfaro'),
(39, 14, 'Calatrava'),
(40, 15, 'Guanta'),
(41, 15, 'Chorreron'),
(42, 16, 'Mamo'),
(43, 16, 'Soledad'),
(44, 17, 'Mapire'),
(45, 17, 'Piar'),
(46, 17, 'Santa Clara'),
(47, 17, 'San Diego de Cabrutica'),
(48, 17, 'Uverito'),
(49, 17, 'Zuata'),
(50, 18, 'Puerto La Cruz'),
(51, 18, 'Pozuelos'),
(52, 19, 'Onoto'),
(53, 19, 'San Pablo'),
(54, 20, 'San Mateo'),
(55, 20, 'El Carito'),
(56, 20, 'Santa Ines'),
(57, 20, 'La Romereña'),
(58, 21, 'Atapirire'),
(59, 21, 'Boca del Pao'),
(60, 21, 'El Pao'),
(61, 21, 'Pariaguan'),
(62, 22, 'Cantaura'),
(63, 22, 'Libertador'),
(64, 22, 'Santa Rosa'),
(65, 22, 'Urica'),
(66, 23, 'Piritu'),
(67, 23, 'San Francisco'),
(68, 24, 'San Jose de Guanipa'),
(69, 25, 'Boca de Uchire'),
(70, 25, 'Boca de Chavez'),
(71, 26, 'Pueblo Nuevo'),
(72, 26, 'Santa Ana'),
(73, 27, 'Bergantin'),
(74, 27, 'Caigua'),
(75, 27, 'El Carmen'),
(76, 27, 'El Pilar'),
(77, 27, 'Naricual'),
(78, 27, 'San Crsitobal'),
(79, 28, 'Edmundo Barrios'),
(80, 28, 'Miguel Otero Silva'),
(81, 29, 'Achaguas'),
(82, 29, 'Apurito'),
(83, 29, 'El Yagual'),
(84, 29, 'Guachara'),
(85, 29, 'Mucuritas'),
(86, 29, 'Queseras del medio'),
(87, 30, 'Biruaca'),
(88, 31, 'Bruzual'),
(89, 31, 'Mantecal'),
(90, 31, 'Quintero'),
(91, 31, 'Rincon Hondo'),
(92, 31, 'San Vicente'),
(93, 32, 'Guasdualito'),
(94, 32, 'Aramendi'),
(95, 32, 'El Amparo'),
(96, 32, 'San Camilo'),
(97, 32, 'Urdaneta'),
(98, 33, 'San Juan de Payara'),
(99, 33, 'Codazzi'),
(100, 33, 'Cunaviche'),
(101, 34, 'Elorza'),
(102, 34, 'La Trinidad'),
(103, 35, 'San Fernando'),
(104, 35, 'El Recreo'),
(105, 35, 'Peñalver'),
(106, 35, 'San Rafael de Atamaica'),
(107, 36, 'Pedro Jose Ovalles'),
(108, 36, 'Joaquin Crespo'),
(109, 36, 'Jose Casanova Godoy'),
(110, 36, 'Madre Maria de San Jose'),
(111, 36, 'Andres Eloy Blanco'),
(112, 36, 'Los Tacarigua'),
(113, 36, 'Las Delicias'),
(114, 36, 'Choroni'),
(115, 37, 'Bolivar'),
(116, 38, 'Camatagua'),
(117, 38, 'Carmen de Cura'),
(118, 39, 'Santa Rita'),
(119, 39, 'Francisco de Miranda'),
(120, 39, 'Moseñor Feliciano Gonzalez'),
(121, 40, 'Santa Cruz'),
(122, 41, 'Jose Felix Ribas'),
(123, 41, 'Castor Nieves Rios'),
(124, 41, 'Las Guacamayas'),
(125, 41, 'Pao de Zarate'),
(126, 41, 'Zuata'),
(127, 42, 'Jose Rafael Revenga'),
(128, 43, 'Palo Negro'),
(129, 43, 'San Martin de Porres'),
(130, 44, 'El Limon'),
(131, 44, 'Caña de Azucar'),
(132, 45, 'Ocumare de la Costa'),
(133, 46, 'San Casimiro'),
(134, 46, 'Güiripa'),
(135, 46, 'Ollas de Caramacate'),
(136, 46, 'Valle Morin'),
(137, 47, 'San Sebastian'),
(138, 48, 'Turmero'),
(139, 48, 'Arevalo Aponte'),
(140, 48, 'Chuao'),
(141, 48, 'Saman de Güere'),
(142, 48, 'Alfredo Pacheco Miranda'),
(143, 49, 'Santos Michelena'),
(144, 49, 'Tiara'),
(145, 50, 'Cagua'),
(146, 50, 'Bella Vista'),
(147, 51, 'Tovar'),
(148, 52, 'Urdaneta'),
(149, 52, 'Las Peñitas'),
(150, 52, 'San Francisco de Cara'),
(151, 52, 'Taguay'),
(152, 53, 'Zamora'),
(153, 53, 'Magdaleno'),
(154, 53, 'San Francisco de Asis'),
(155, 53, 'Valles de Tucutunemo'),
(156, 53, 'Augusto Mijares'),
(157, 54, 'Sabaneta'),
(158, 54, 'Juan Antonio Rodriguez Dominguez'),
(159, 55, 'El Canton'),
(160, 55, 'Santa Cruz de Guacas'),
(161, 55, 'Puerto Vivas'),
(162, 56, 'Ticoporo'),
(163, 56, 'Nicolas Pulido'),
(164, 56, 'Andres Bello'),
(165, 57, 'Arismendi'),
(166, 57, 'Guadarrama'),
(167, 57, 'La Union'),
(168, 57, 'San Antonio'),
(169, 58, 'Barinas'),
(170, 58, 'Alberto Arvelo Larriva'),
(171, 58, 'San Silvestre'),
(172, 58, 'Santa Ines'),
(173, 58, 'Santa Lucia'),
(174, 58, 'Torumos'),
(175, 58, 'El Carmen'),
(176, 58, 'Romulo Betancourt'),
(177, 58, 'Corazon de Jesus'),
(178, 58, 'Ramon Ignacio Mendez'),
(179, 58, 'Alto Barinas'),
(180, 58, 'Manuel Palacio Fajardo'),
(181, 58, 'Juan Antonio Rodriguez Dominguez'),
(182, 58, 'Dominga Ortiz de Paez'),
(183, 59, 'Barinitas'),
(184, 59, 'Altamira de Caceres'),
(185, 59, 'Calderas'),
(186, 60, 'Barrancas'),
(187, 60, 'El Socorro'),
(188, 60, 'Mazparrito'),
(189, 61, 'Santa Barbara'),
(190, 61, 'Pedro Briceño Mendez'),
(191, 61, 'Ramon Ignacio Mendez'),
(192, 61, 'Jose Ignacio del Pumar'),
(193, 62, 'Obispos'),
(194, 62, 'Guasimitos'),
(195, 62, 'El Real'),
(196, 62, 'La Luz'),
(197, 63, 'Ciudad Bolivia'),
(198, 63, 'Jose Ignacio Briceño'),
(199, 63, 'Jose Felix Ribas'),
(200, 63, 'Paez'),
(201, 64, 'Libertad'),
(202, 64, 'Dolores'),
(203, 64, 'Santa Rosa'),
(204, 64, 'Palacio Fajardo'),
(205, 65, 'Ciudad de Nutrias'),
(206, 65, 'El Regalo'),
(207, 65, 'Puerto Nutrias'),
(208, 65, 'Santa Catalina'),
(209, 66, 'Cachamay'),
(210, 66, 'Chirica'),
(211, 66, 'Dalla Costa'),
(212, 66, 'Once de Abril'),
(213, 66, 'Simon Bolivar'),
(214, 66, 'Unare'),
(215, 66, 'Universidad'),
(216, 66, 'Vista al Sol'),
(217, 66, 'Pozo Verde'),
(218, 66, 'Yocoima'),
(219, 66, '5 de Julio'),
(220, 67, 'Cedeño'),
(221, 67, 'Altagracia'),
(222, 67, 'Ascension Farreras'),
(223, 67, 'Guaniamo'),
(224, 67, 'La Urbana'),
(225, 67, 'Pijiguaos'),
(226, 68, 'El Callao'),
(227, 69, 'Gran Sabana'),
(228, 69, 'Ikabaru'),
(229, 70, 'Catedral'),
(230, 70, 'Zea'),
(231, 70, 'Orinoco'),
(232, 70, 'Jose Antonio Paez'),
(233, 70, 'Marhuanta'),
(234, 70, 'Agua Salada'),
(235, 70, 'Vista Hermosa'),
(236, 70, 'La Sabanita'),
(237, 70, 'Panapana'),
(238, 71, 'Andres Eloy Blanco'),
(239, 71, 'Pedro Cova'),
(240, 72, 'Raul Leoni'),
(241, 72, 'Barceloneta'),
(242, 72, 'Santa Barbara'),
(243, 72, 'San Francisco'),
(244, 73, 'Roscio'),
(245, 73, 'Salom'),
(246, 74, 'Sifontes'),
(247, 74, 'Dalla Costa'),
(248, 74, 'San Isidro'),
(249, 75, 'Sucre'),
(250, 75, 'Aripao'),
(251, 75, 'Guarataro'),
(252, 75, 'Las Majadas'),
(253, 75, 'Moitaco'),
(254, 76, 'Padre Pedro Chien'),
(255, 76, 'Rio Grande'),
(256, 77, 'Bejuma'),
(257, 77, 'Canoabo'),
(258, 77, 'Simon Bolivar'),
(259, 78, 'Güigüe'),
(260, 78, 'Carabobo'),
(261, 78, 'Tacarigua'),
(262, 79, 'Mariara'),
(263, 79, 'Aguas Calientes'),
(264, 80, 'Ciudad Alianza'),
(265, 80, 'Guacara'),
(266, 80, 'Yagua'),
(267, 81, 'Moron'),
(268, 81, 'Yagua'),
(269, 82, 'Tocuyito'),
(270, 82, 'Independencia'),
(271, 83, 'Los Guayos'),
(272, 84, 'Miranda'),
(273, 85, 'Montalban'),
(274, 86, 'Naguanagua'),
(275, 87, 'Bartolome Salom'),
(276, 87, 'Democracia'),
(277, 87, 'Fraternidad'),
(278, 87, 'Goaigoaza'),
(279, 87, 'Juan Jose Flores'),
(280, 87, 'Union'),
(281, 87, 'Borburata'),
(282, 87, 'Patanemo'),
(283, 88, 'San Diego'),
(284, 89, 'San Joaquin'),
(285, 90, 'Candelaria'),
(286, 90, 'Catedral'),
(287, 90, 'El Socorro'),
(288, 90, 'Miguel Peña'),
(289, 90, 'Rafael Urdaneta'),
(290, 90, 'San Blas'),
(291, 90, 'San Jose'),
(292, 90, 'Santa Rosa'),
(293, 90, 'Negro Primero'),
(294, 91, 'Cojedes'),
(295, 91, 'Juan de Mata Suarez'),
(296, 92, 'Tinaquillo'),
(297, 93, 'El Baul'),
(298, 93, 'Sucre'),
(299, 94, 'La Aguadita'),
(300, 94, 'Macapo'),
(301, 95, 'El Pao'),
(302, 96, 'El Amparo'),
(303, 96, 'Libertad de Cojedes'),
(304, 97, 'Romulo Gallegos'),
(305, 98, 'San Carlos de Austria'),
(306, 98, 'Juan angel Bravo'),
(307, 98, 'Manuel Manrique'),
(308, 99, 'General en Jefe Jose Laurencio Silva'),
(309, 100, 'Curiapo'),
(310, 100, 'Almirante Luis Brion'),
(311, 100, 'Francisco Aniceto Lugo'),
(312, 100, 'Manuel Renaud'),
(313, 100, 'Padre Barral'),
(314, 100, 'Santos de Abelgas'),
(315, 101, 'Imataca'),
(316, 101, 'Cinco de Julio'),
(317, 101, 'Juan Bautista Arismendi'),
(318, 101, 'Manuel Piar'),
(319, 101, 'Romulo Gallegos'),
(320, 102, 'Pedernales'),
(321, 102, 'Luis Beltran Prieto Figueroa'),
(322, 103, 'San Jose (Delta Amacuro)'),
(323, 103, 'Jose Vidal Marcano'),
(324, 103, 'Juan Millan'),
(325, 103, 'Leonardo Ruiz Pineda'),
(326, 103, 'Mariscal Antonio Jose de Sucre'),
(327, 103, 'Monseñor Argimiro Garcia'),
(328, 103, 'San Rafael (Delta Amacuro)'),
(329, 103, 'Virgen del Valle'),
(330, 10, 'Clarines'),
(331, 10, 'Guanape'),
(332, 10, 'Sabana de Uchire'),
(333, 104, 'Capadare'),
(334, 104, 'La Pastora'),
(335, 104, 'Libertador'),
(336, 104, 'San Juan de los Cayos'),
(337, 105, 'Aracua'),
(338, 105, 'La Peña'),
(339, 105, 'San Luis'),
(340, 106, 'Bariro'),
(341, 106, 'Borojo'),
(342, 106, 'Capatarida'),
(343, 106, 'Guajiro'),
(344, 106, 'Seque'),
(345, 106, 'Zazarida'),
(346, 106, 'Valle de Eroa'),
(347, 107, 'Cacique Manaure'),
(348, 108, 'Norte'),
(349, 108, 'Carirubana'),
(350, 108, 'Santa Ana'),
(351, 108, 'Urbana Punta Cardon'),
(352, 109, 'La Vela de Coro'),
(353, 109, 'Acurigua'),
(354, 109, 'Guaibacoa'),
(355, 109, 'Las Calderas'),
(356, 109, 'Macoruca'),
(357, 110, 'Dabajuro'),
(358, 111, 'Agua Clara'),
(359, 111, 'Avaria'),
(360, 111, 'Pedregal'),
(361, 111, 'Piedra Grande'),
(362, 111, 'Purureche'),
(363, 112, 'Adaure'),
(364, 112, 'Adicora'),
(365, 112, 'Baraived'),
(366, 112, 'Buena Vista'),
(367, 112, 'Jadacaquiva'),
(368, 112, 'El Vinculo'),
(369, 112, 'El Hato'),
(370, 112, 'Moruy'),
(371, 112, 'Pueblo Nuevo'),
(372, 113, 'Agua Larga'),
(373, 113, 'El Pauji'),
(374, 113, 'Independencia'),
(375, 113, 'Maparari'),
(376, 114, 'Agua Linda'),
(377, 114, 'Araurima'),
(378, 114, 'Jacura'),
(379, 115, 'Tucacas'),
(380, 115, 'Boca de Aroa'),
(381, 116, 'Los Taques'),
(382, 116, 'Judibana'),
(383, 117, 'Mene de Mauroa'),
(384, 117, 'San Felix'),
(385, 117, 'Casigua'),
(386, 118, 'Guzman Guillermo'),
(387, 118, 'Mitare'),
(388, 118, 'Rio Seco'),
(389, 118, 'Sabaneta'),
(390, 118, 'San Antonio'),
(391, 118, 'San Gabriel'),
(392, 118, 'Santa Ana'),
(393, 119, 'Boca del Tocuyo'),
(394, 119, 'Chichiriviche'),
(395, 119, 'Tocuyo de la Costa'),
(396, 120, 'Palmasola'),
(397, 121, 'Cabure'),
(398, 121, 'Colina'),
(399, 121, 'Curimagua'),
(400, 122, 'San Jose de la Costa'),
(401, 122, 'Piritu'),
(402, 123, 'San Francisco'),
(403, 124, 'Sucre'),
(404, 124, 'Pecaya'),
(405, 125, 'Tocopero'),
(406, 126, 'El Charal'),
(407, 126, 'Las Vegas del Tuy'),
(408, 126, 'Santa Cruz de Bucaral'),
(409, 127, 'Bruzual'),
(410, 127, 'Urumaco'),
(411, 128, 'Puerto Cumarebo'),
(412, 128, 'La Cienaga'),
(413, 128, 'La Soledad'),
(414, 128, 'Pueblo Cumarebo'),
(415, 128, 'Zazarida'),
(416, 113, 'Churuguara'),
(417, 129, 'Camaguan'),
(418, 129, 'Puerto Miranda'),
(419, 129, 'Uverito'),
(420, 130, 'Chaguaramas'),
(421, 131, 'El Socorro'),
(422, 132, 'Tucupido'),
(423, 132, 'San Rafael de Laya'),
(424, 133, 'Altagracia de Orituco'),
(425, 133, 'San Rafael de Orituco'),
(426, 133, 'San Francisco Javier de Lezama'),
(427, 133, 'Paso Real de Macaira'),
(428, 133, 'Carlos Soublette'),
(429, 133, 'San Francisco de Macaira'),
(430, 133, 'Libertad de Orituco'),
(431, 134, 'Cantaclaro'),
(432, 134, 'San Juan de los Morros'),
(433, 134, 'Parapara'),
(434, 135, 'El Sombrero'),
(435, 135, 'Sosa'),
(436, 136, 'Las Mercedes'),
(437, 136, 'Cabruta'),
(438, 136, 'Santa Rita de Manapire'),
(439, 137, 'Valle de la Pascua'),
(440, 137, 'Espino'),
(441, 138, 'San Jose de Unare'),
(442, 138, 'Zaraza'),
(443, 139, 'San Jose de Tiznados'),
(444, 139, 'San Francisco de Tiznados'),
(445, 139, 'San Lorenzo de Tiznados'),
(446, 139, 'Ortiz'),
(447, 140, 'Guayabal'),
(448, 140, 'Cazorla'),
(449, 141, 'San Jose de Guaribe'),
(450, 141, 'Uveral'),
(451, 142, 'Santa Maria de Ipire'),
(452, 142, 'Altamira'),
(453, 143, 'El Calvario'),
(454, 143, 'El Rastro'),
(455, 143, 'Guardatinajas'),
(456, 143, 'Capital Urbana Calabozo'),
(457, 144, 'Quebrada Honda de Guache'),
(458, 144, 'Pio Tamayo'),
(459, 144, 'Yacambu'),
(460, 145, 'Freitez'),
(461, 145, 'Jose Maria Blanco'),
(462, 146, 'Catedral'),
(463, 146, 'Concepcion'),
(464, 146, 'El Cuji'),
(465, 146, 'Juan de Villegas'),
(466, 146, 'Santa Rosa'),
(467, 146, 'Tamaca'),
(468, 146, 'Union'),
(469, 146, 'Aguedo Felipe Alvarado'),
(470, 146, 'Buena Vista'),
(471, 146, 'Juarez'),
(472, 147, 'Juan Bautista Rodriguez'),
(473, 147, 'Cuara'),
(474, 147, 'Diego de Lozada'),
(475, 147, 'Paraiso de San Jose'),
(476, 147, 'San Miguel'),
(477, 147, 'Tintorero'),
(478, 147, 'Jose Bernardo Dorante'),
(479, 147, 'Coronel Mariano Peraza '),
(480, 148, 'Bolivar'),
(481, 148, 'Anzoategui'),
(482, 148, 'Guarico'),
(483, 148, 'Hilario Luna y Luna'),
(484, 148, 'Humocaro Alto'),
(485, 148, 'Humocaro Bajo'),
(486, 148, 'La Candelaria'),
(487, 148, 'Moran'),
(488, 149, 'Cabudare'),
(489, 149, 'Jose Gregorio Bastidas'),
(490, 149, 'Agua Viva'),
(491, 150, 'Sarare'),
(492, 150, 'Buria'),
(493, 150, 'Gustavo Vegas Leon'),
(494, 151, 'Trinidad Samuel'),
(495, 151, 'Antonio Diaz'),
(496, 151, 'Camacaro'),
(497, 151, 'Castañeda'),
(498, 151, 'Cecilio Zubillaga'),
(499, 151, 'Chiquinquira'),
(500, 151, 'El Blanco'),
(501, 151, 'Espinoza de los Monteros'),
(502, 151, 'Lara'),
(503, 151, 'Las Mercedes'),
(504, 151, 'Manuel Morillo'),
(505, 151, 'Montaña Verde'),
(506, 151, 'Montes de Oca'),
(507, 151, 'Torres'),
(508, 151, 'Heriberto Arroyo'),
(509, 151, 'Reyes Vargas'),
(510, 151, 'Altagracia'),
(511, 152, 'Siquisique'),
(512, 152, 'Moroturo'),
(513, 152, 'San Miguel'),
(514, 152, 'Xaguas'),
(515, 179, 'Presidente Betancourt'),
(516, 179, 'Presidente Paez'),
(517, 179, 'Presidente Romulo Gallegos'),
(518, 179, 'Gabriel Picon Gonzalez'),
(519, 179, 'Hector Amable Mora'),
(520, 179, 'Jose Nucete Sardi'),
(521, 179, 'Pulido Mendez'),
(522, 180, 'La Azulita'),
(523, 181, 'Santa Cruz de Mora'),
(524, 181, 'Mesa Bolivar'),
(525, 181, 'Mesa de Las Palmas'),
(526, 182, 'Aricagua'),
(527, 182, 'San Antonio'),
(528, 183, 'Canagua'),
(529, 183, 'Capuri'),
(530, 183, 'Chacanta'),
(531, 183, 'El Molino'),
(532, 183, 'Guaimaral'),
(533, 183, 'Mucutuy'),
(534, 183, 'Mucuchachi'),
(535, 184, 'Fernandez Peña'),
(536, 184, 'Matriz'),
(537, 184, 'Montalban'),
(538, 184, 'Acequias'),
(539, 184, 'Jaji'),
(540, 184, 'La Mesa'),
(541, 184, 'San Jose del Sur'),
(542, 185, 'Tucani'),
(543, 185, 'Florencio Ramirez'),
(544, 186, 'Santo Domingo'),
(545, 186, 'Las Piedras'),
(546, 187, 'Guaraque'),
(547, 187, 'Mesa de Quintero'),
(548, 187, 'Rio Negro'),
(549, 188, 'Arapuey'),
(550, 188, 'Palmira'),
(551, 189, 'San Cristobal de Torondoy'),
(552, 189, 'Torondoy'),
(553, 190, 'Antonio Spinetti Dini'),
(554, 190, 'Arias'),
(555, 190, 'Caracciolo Parra Perez'),
(556, 190, 'Domingo Peña'),
(557, 190, 'El Llano'),
(558, 190, 'Gonzalo Picon Febres'),
(559, 190, 'Jacinto Plaza'),
(560, 190, 'Juan Rodriguez Suarez'),
(561, 190, 'Lasso de la Vega'),
(562, 190, 'Mariano Picon Salas'),
(563, 190, 'Milla'),
(564, 190, 'Osuna Rodriguez'),
(565, 190, 'Sagrario'),
(566, 190, 'El Morro'),
(567, 190, 'Los Nevados'),
(568, 191, 'Andres Eloy Blanco'),
(569, 191, 'La Venta'),
(570, 191, 'Piñango'),
(571, 191, 'Timotes'),
(572, 192, 'Eloy Paredes'),
(573, 192, 'San Rafael de Alcazar'),
(574, 192, 'Santa Elena de Arenales'),
(575, 193, 'Santa Maria de Caparo'),
(576, 194, 'Pueblo Llano'),
(577, 195, 'Cacute'),
(578, 195, 'La Toma'),
(579, 195, 'Mucuchies'),
(580, 195, 'Mucuruba'),
(581, 195, 'San Rafael'),
(582, 196, 'Geronimo Maldonado'),
(583, 196, 'Bailadores'),
(584, 197, 'Tabay'),
(585, 198, 'Chiguara'),
(586, 198, 'Estanquez'),
(587, 198, 'Lagunillas'),
(588, 198, 'La Trampa'),
(589, 198, 'Pueblo Nuevo del Sur'),
(590, 198, 'San Juan'),
(591, 199, 'El Amparo'),
(592, 199, 'El Llano'),
(593, 199, 'San Francisco'),
(594, 199, 'Tovar'),
(595, 200, 'Independencia'),
(596, 200, 'Maria de la Concepcion Palacios Blanco'),
(597, 200, 'Nueva Bolivia'),
(598, 200, 'Santa Apolonia'),
(599, 201, 'Caño El Tigre'),
(600, 201, 'Zea'),
(601, 223, 'Aragüita'),
(602, 223, 'Arevalo Gonzalez'),
(603, 223, 'Capaya'),
(604, 223, 'Caucagua'),
(605, 223, 'Panaquire'),
(606, 223, 'Ribas'),
(607, 223, 'El Cafe'),
(608, 223, 'Marizapa'),
(609, 224, 'Cumbo'),
(610, 224, 'San Jose de Barlovento'),
(611, 225, 'El Cafetal'),
(612, 225, 'Las Minas'),
(613, 225, 'Nuestra Señora del Rosario'),
(614, 226, 'Higuerote'),
(615, 226, 'Curiepe'),
(616, 226, 'Tacarigua de Brion'),
(617, 227, 'Mamporal'),
(618, 228, 'Carrizal'),
(619, 229, 'Chacao'),
(620, 230, 'Charallave'),
(621, 230, 'Las Brisas'),
(622, 231, 'El Hatillo'),
(623, 232, 'Altagracia de la Montaña'),
(624, 232, 'Cecilio Acosta'),
(625, 232, 'Los Teques'),
(626, 232, 'El Jarillo'),
(627, 232, 'San Pedro'),
(628, 232, 'Tacata'),
(629, 232, 'Paracotos'),
(630, 233, 'Cartanal'),
(631, 233, 'Santa Teresa del Tuy'),
(632, 234, 'La Democracia'),
(633, 234, 'Ocumare del Tuy'),
(634, 234, 'Santa Barbara'),
(635, 235, 'San Antonio de los Altos'),
(636, 236, 'Rio Chico'),
(637, 236, 'El Guapo'),
(638, 236, 'Tacarigua de la Laguna'),
(639, 236, 'Paparo'),
(640, 236, 'San Fernando del Guapo'),
(641, 237, 'Santa Lucia del Tuy'),
(642, 238, 'Cupira'),
(643, 238, 'Machurucuto'),
(644, 239, 'Guarenas'),
(645, 240, 'San Antonio de Yare'),
(646, 240, 'San Francisco de Yare'),
(647, 241, 'Leoncio Martinez'),
(648, 241, 'Petare'),
(649, 241, 'Caucagüita'),
(650, 241, 'Filas de Mariche'),
(651, 241, 'La Dolorita'),
(652, 242, 'Cua'),
(653, 242, 'Nueva Cua'),
(654, 243, 'Guatire'),
(655, 243, 'Bolivar'),
(656, 258, 'San Antonio de Maturin'),
(657, 258, 'San Francisco de Maturin'),
(658, 259, 'Aguasay'),
(659, 260, 'Caripito'),
(660, 261, 'El Guacharo'),
(661, 261, 'La Guanota'),
(662, 261, 'Sabana de Piedra'),
(663, 261, 'San Agustin'),
(664, 261, 'Teresen'),
(665, 261, 'Caripe'),
(666, 262, 'Areo'),
(667, 262, 'Capital Cedeño'),
(668, 262, 'San Felix de Cantalicio'),
(669, 262, 'Viento Fresco'),
(670, 263, 'El Tejero'),
(671, 263, 'Punta de Mata'),
(672, 264, 'Chaguaramas'),
(673, 264, 'Las Alhuacas'),
(674, 264, 'Tabasca'),
(675, 264, 'Temblador'),
(676, 265, 'Alto de los Godos'),
(677, 265, 'Boqueron'),
(678, 265, 'Las Cocuizas'),
(679, 265, 'La Cruz'),
(680, 265, 'San Simon'),
(681, 265, 'El Corozo'),
(682, 265, 'El Furrial'),
(683, 265, 'Jusepin'),
(684, 265, 'La Pica'),
(685, 265, 'San Vicente'),
(686, 266, 'Aparicio'),
(687, 266, 'Aragua de Maturin'),
(688, 266, 'Chaguamal'),
(689, 266, 'El Pinto'),
(690, 266, 'Guanaguana'),
(691, 266, 'La Toscana'),
(692, 266, 'Taguaya'),
(693, 267, 'Cachipo'),
(694, 267, 'Quiriquire'),
(695, 268, 'Santa Barbara'),
(696, 269, 'Barrancas'),
(697, 269, 'Los Barrancos de Fajardo'),
(698, 270, 'Uracoa'),
(699, 271, 'Antolin del Campo'),
(700, 272, 'Arismendi'),
(701, 273, 'Garcia'),
(702, 273, 'Francisco Fajardo'),
(703, 274, 'Bolivar'),
(704, 274, 'Guevara'),
(705, 274, 'Matasiete'),
(706, 274, 'Santa Ana'),
(707, 274, 'Sucre'),
(708, 275, 'Aguirre'),
(709, 275, 'Maneiro'),
(710, 276, 'Adrian'),
(711, 276, 'Juan Griego'),
(712, 276, 'Yaguaraparo'),
(713, 277, 'Porlamar'),
(714, 278, 'San Francisco de Macanao'),
(715, 278, 'Boca de Rio'),
(716, 279, 'Tubores'),
(717, 279, 'Los Baleales'),
(718, 280, 'Vicente Fuentes'),
(719, 280, 'Villalba'),
(720, 281, 'San Juan Bautista'),
(721, 281, 'Zabala'),
(722, 283, 'Capital Araure'),
(723, 283, 'Rio Acarigua'),
(724, 284, 'Capital Esteller'),
(725, 284, 'Uveral'),
(726, 285, 'Guanare'),
(727, 285, 'Cordoba'),
(728, 285, 'San Jose de la Montaña'),
(729, 285, 'San Juan de Guanaguanare'),
(730, 285, 'Virgen de la Coromoto'),
(731, 286, 'Guanarito'),
(732, 286, 'Trinidad de la Capilla'),
(733, 286, 'Divina Pastora'),
(734, 287, 'Monseñor Jose Vicente de Unda'),
(735, 287, 'Peña Blanca'),
(736, 288, 'Capital Ospino'),
(737, 288, 'Aparicion'),
(738, 288, 'La Estacion'),
(739, 289, 'Paez'),
(740, 289, 'Payara'),
(741, 289, 'Pimpinela'),
(742, 289, 'Ramon Peraza'),
(743, 290, 'Papelon'),
(744, 290, 'Caño Delgadito'),
(745, 291, 'San Genaro de Boconoito'),
(746, 291, 'Antolin Tovar'),
(747, 292, 'San Rafael de Onoto'),
(748, 292, 'Santa Fe'),
(749, 292, 'Thermo Morles'),
(750, 293, 'Santa Rosalia'),
(751, 293, 'Florida'),
(752, 294, 'Sucre'),
(753, 294, 'Concepcion'),
(754, 294, 'San Rafael de Palo Alzado'),
(755, 294, 'Uvencio Antonio Velasquez'),
(756, 294, 'San Jose de Saguaz'),
(757, 294, 'Villa Rosa'),
(758, 295, 'Turen'),
(759, 295, 'Canelones'),
(760, 295, 'Santa Cruz'),
(761, 295, 'San Isidro Labrador'),
(762, 296, 'Mariño'),
(763, 296, 'Romulo Gallegos'),
(764, 297, 'San Jose de Aerocuar'),
(765, 297, 'Tavera Acosta'),
(766, 298, 'Rio Caribe'),
(767, 298, 'Antonio Jose de Sucre'),
(768, 298, 'El Morro de Puerto Santo'),
(769, 298, 'Puerto Santo'),
(770, 298, 'San Juan de las Galdonas'),
(771, 299, 'El Pilar'),
(772, 299, 'El Rincon'),
(773, 299, 'General Francisco Antonio Vaquez'),
(774, 299, 'Guaraunos'),
(775, 299, 'Tunapuicito'),
(776, 299, 'Union'),
(777, 300, 'Santa Catalina'),
(778, 300, 'Santa Rosa'),
(779, 300, 'Santa Teresa'),
(780, 300, 'Bolivar'),
(781, 300, 'Maracapana'),
(782, 302, 'Libertad'),
(783, 302, 'El Paujil'),
(784, 302, 'Yaguaraparo'),
(785, 303, 'Cruz Salmeron Acosta'),
(786, 303, 'Chacopata'),
(787, 303, 'Manicuare'),
(788, 304, 'Tunapuy'),
(789, 304, 'Campo Elias'),
(790, 305, 'Irapa'),
(791, 305, 'Campo Claro'),
(792, 305, 'Maraval'),
(793, 305, 'San Antonio de Irapa'),
(794, 305, 'Soro'),
(795, 306, 'Mejia'),
(796, 307, 'Cumanacoa'),
(797, 307, 'Arenas'),
(798, 307, 'Aricagua'),
(799, 307, 'Cogollar'),
(800, 307, 'San Fernando'),
(801, 307, 'San Lorenzo'),
(802, 308, 'Villa Frontado (Muelle de Cariaco)'),
(803, 308, 'Catuaro'),
(804, 308, 'Rendon'),
(805, 308, 'San Cruz'),
(806, 308, 'Santa Maria'),
(807, 309, 'Altagracia'),
(808, 309, 'Santa Ines'),
(809, 309, 'Valentin Valiente'),
(810, 309, 'Ayacucho'),
(811, 309, 'San Juan'),
(812, 309, 'Raul Leoni'),
(813, 309, 'Gran Mariscal'),
(814, 310, 'Cristobal Colon'),
(815, 310, 'Bideau'),
(816, 310, 'Punta de Piedras'),
(817, 310, 'Güiria'),
(818, 341, 'Andres Bello'),
(819, 342, 'Antonio Romulo Costa'),
(820, 343, 'Ayacucho'),
(821, 343, 'Rivas Berti'),
(822, 343, 'San Pedro del Rio'),
(823, 344, 'Bolivar'),
(824, 344, 'Palotal'),
(825, 344, 'General Juan Vicente Gomez'),
(826, 344, 'Isaias Medina Angarita'),
(827, 345, 'Cardenas'),
(828, 345, 'Amenodoro angel Lamus'),
(829, 345, 'La Florida'),
(830, 346, 'Cordoba'),
(831, 347, 'Fernandez Feo'),
(832, 347, 'Alberto Adriani'),
(833, 347, 'Santo Domingo'),
(834, 348, 'Francisco de Miranda'),
(835, 349, 'Garcia de Hevia'),
(836, 349, 'Boca de Grita'),
(837, 349, 'Jose Antonio Paez'),
(838, 350, 'Guasimos'),
(839, 351, 'Independencia'),
(840, 351, 'Juan German Roscio'),
(841, 351, 'Roman Cardenas'),
(842, 352, 'Jauregui'),
(843, 352, 'Emilio Constantino Guerrero'),
(844, 352, 'Monseñor Miguel Antonio Salas'),
(845, 353, 'Jose Maria Vargas'),
(846, 354, 'Junin'),
(847, 354, 'La Petrolea'),
(848, 354, 'Quinimari'),
(849, 354, 'Bramon'),
(850, 355, 'Libertad'),
(851, 355, 'Cipriano Castro'),
(852, 355, 'Manuel Felipe Rugeles'),
(853, 356, 'Libertador'),
(854, 356, 'Doradas'),
(855, 356, 'Emeterio Ochoa'),
(856, 356, 'San Joaquin de Navay'),
(857, 357, 'Lobatera'),
(858, 357, 'Constitucion'),
(859, 358, 'Michelena'),
(860, 359, 'Panamericano'),
(861, 359, 'La Palmita'),
(862, 360, 'Pedro Maria Ureña'),
(863, 360, 'Nueva Arcadia'),
(864, 361, 'Delicias'),
(865, 361, 'Pecaya'),
(866, 362, 'Samuel Dario Maldonado'),
(867, 362, 'Bocono'),
(868, 362, 'Hernandez'),
(869, 363, 'La Concordia'),
(870, 363, 'San Juan Bautista'),
(871, 363, 'Pedro Maria Morantes'),
(872, 363, 'San Sebastian'),
(873, 363, 'Dr. Francisco Romero Lobo'),
(874, 364, 'Seboruco'),
(875, 365, 'Simon Rodriguez'),
(876, 366, 'Sucre'),
(877, 366, 'Eleazar Lopez Contreras'),
(878, 366, 'San Pablo'),
(879, 367, 'Torbes'),
(880, 368, 'Uribante'),
(881, 368, 'Cardenas'),
(882, 368, 'Juan Pablo Peñalosa'),
(883, 368, 'Potosi'),
(884, 369, 'San Judas Tadeo'),
(885, 370, 'Araguaney'),
(886, 370, 'El Jaguito'),
(887, 370, 'La Esperanza'),
(888, 370, 'Santa Isabel'),
(889, 371, 'Bocono'),
(890, 371, 'El Carmen'),
(891, 371, 'Mosquey'),
(892, 371, 'Ayacucho'),
(893, 371, 'Burbusay'),
(894, 371, 'General Ribas'),
(895, 371, 'Guaramacal'),
(896, 371, 'Vega de Guaramacal'),
(897, 371, 'Monseñor Jauregui'),
(898, 371, 'Rafael Rangel'),
(899, 371, 'San Miguel'),
(900, 371, 'San Jose'),
(901, 372, 'Sabana Grande'),
(902, 372, 'Cheregüe'),
(903, 372, 'Granados'),
(904, 373, 'Arnoldo Gabaldon'),
(905, 373, 'Bolivia'),
(906, 373, 'Carrillo'),
(907, 373, 'Cegarra'),
(908, 373, 'Chejende'),
(909, 373, 'Manuel Salvador Ulloa'),
(910, 373, 'San Jose'),
(911, 374, 'Carache'),
(912, 374, 'La Concepcion'),
(913, 374, 'Cuicas'),
(914, 374, 'Panamericana'),
(915, 374, 'Santa Cruz'),
(916, 375, 'Escuque'),
(917, 375, 'La Union'),
(918, 375, 'Santa Rita'),
(919, 375, 'Sabana Libre'),
(920, 376, 'El Socorro'),
(921, 376, 'Los Caprichos'),
(922, 376, 'Antonio Jose de Sucre'),
(923, 377, 'Campo Elias'),
(924, 377, 'Arnoldo Gabaldon'),
(925, 378, 'Santa Apolonia'),
(926, 378, 'El Progreso'),
(927, 378, 'La Ceiba'),
(928, 378, 'Tres de Febrero'),
(929, 379, 'El Dividive'),
(930, 379, 'Agua Santa'),
(931, 379, 'Agua Caliente'),
(932, 379, 'El Cenizo'),
(933, 379, 'Valerita'),
(934, 380, 'Monte Carmelo'),
(935, 380, 'Buena Vista'),
(936, 380, 'Santa Maria del Horcon'),
(937, 381, 'Motatan'),
(938, 381, 'El Baño'),
(939, 381, 'Jalisco'),
(940, 382, 'Pampan'),
(941, 382, 'Flor de Patria'),
(942, 382, 'La Paz'),
(943, 382, 'Santa Ana'),
(944, 383, 'Pampanito'),
(945, 383, 'La Concepcion'),
(946, 383, 'Pampanito II'),
(947, 384, 'Betijoque'),
(948, 384, 'Jose Gregorio Hernandez'),
(949, 384, 'La Pueblita'),
(950, 384, 'Los Cedros'),
(951, 385, 'Carvajal'),
(952, 385, 'Campo Alegre'),
(953, 385, 'Antonio Nicolas Briceño'),
(954, 385, 'Jose Leonardo Suarez'),
(955, 386, 'Sabana de Mendoza'),
(956, 386, 'Junin'),
(957, 386, 'Valmore Rodriguez'),
(958, 386, 'El Paraiso'),
(959, 387, 'Andres Linares'),
(960, 387, 'Chiquinquira'),
(961, 387, 'Cristobal Mendoza'),
(962, 387, 'Cruz Carrillo'),
(963, 387, 'Matriz'),
(964, 387, 'Monseñor Carrillo'),
(965, 387, 'Tres Esquinas'),
(966, 388, 'Cabimbu'),
(967, 388, 'Jajo'),
(968, 388, 'La Mesa de Esnujaque'),
(969, 388, 'Santiago'),
(970, 388, 'Tuñame'),
(971, 388, 'La Quebrada'),
(972, 389, 'Juan Ignacio Montilla'),
(973, 389, 'La Beatriz'),
(974, 389, 'La Puerta'),
(975, 389, 'Mendoza del Valle de Momboy'),
(976, 389, 'Mercedes Diaz'),
(977, 389, 'San Luis'),
(978, 390, 'Caraballeda'),
(979, 390, 'Carayaca'),
(980, 390, 'Carlos Soublette'),
(981, 390, 'Caruao Chuspa'),
(982, 390, 'Catia La Mar'),
(983, 390, 'El Junko'),
(984, 390, 'La Guaira'),
(985, 390, 'Macuto'),
(986, 390, 'Maiquetia'),
(987, 390, 'Naiguata'),
(988, 390, 'Urimare'),
(989, 391, 'Aristides Bastidas'),
(990, 392, 'Bolivar'),
(991, 407, 'Chivacoa'),
(992, 407, 'Campo Elias'),
(993, 408, 'Cocorote'),
(994, 409, 'Independencia'),
(995, 410, 'Jose Antonio Paez'),
(996, 411, 'La Trinidad'),
(997, 412, 'Manuel Monge'),
(998, 413, 'Salom'),
(999, 413, 'Temerla'),
(1000, 413, 'Nirgua'),
(1001, 414, 'San Andres'),
(1002, 414, 'Yaritagua'),
(1003, 415, 'San Javier'),
(1004, 415, 'Albarico'),
(1005, 415, 'San Felipe'),
(1006, 416, 'Sucre'),
(1007, 417, 'Urachiche'),
(1008, 418, 'El Guayabo'),
(1009, 418, 'Farriar'),
(1010, 441, 'Isla de Toas'),
(1011, 441, 'Monagas'),
(1012, 442, 'San Timoteo'),
(1013, 442, 'General Urdaneta'),
(1014, 442, 'Libertador'),
(1015, 442, 'Marcelino Briceño'),
(1016, 442, 'Pueblo Nuevo'),
(1017, 442, 'Manuel Guanipa Matos'),
(1018, 443, 'Ambrosio'),
(1019, 443, 'Carmen Herrera'),
(1020, 443, 'La Rosa'),
(1021, 443, 'German Rios Linares'),
(1022, 443, 'San Benito'),
(1023, 443, 'Romulo Betancourt'),
(1024, 443, 'Jorge Hernandez'),
(1025, 443, 'Punta Gorda'),
(1026, 443, 'Aristides Calvani'),
(1027, 444, 'Encontrados'),
(1028, 444, 'Udon Perez'),
(1029, 445, 'Moralito'),
(1030, 445, 'San Carlos del Zulia'),
(1031, 445, 'Santa Cruz del Zulia'),
(1032, 445, 'Santa Barbara'),
(1033, 445, 'Urribarri'),
(1034, 446, 'Carlos Quevedo'),
(1035, 446, 'Francisco Javier Pulgar'),
(1036, 446, 'Simon Rodriguez'),
(1037, 446, 'Guamo-Gavilanes'),
(1038, 448, 'La Concepcion'),
(1039, 448, 'San Jose'),
(1040, 448, 'Mariano Parra Leon'),
(1041, 448, 'Jose Ramon Yepez'),
(1042, 449, 'Jesus Maria Semprun'),
(1043, 449, 'Bari'),
(1044, 450, 'Concepcion'),
(1045, 450, 'Andres Bello'),
(1046, 450, 'Chiquinquira'),
(1047, 450, 'El Carmelo'),
(1048, 450, 'Potreritos'),
(1049, 451, 'Libertad'),
(1050, 451, 'Alonso de Ojeda'),
(1051, 451, 'Venezuela'),
(1052, 451, 'Eleazar Lopez Contreras'),
(1053, 451, 'Campo Lara'),
(1054, 452, 'Bartolome de las Casas'),
(1055, 452, 'Libertad'),
(1056, 452, 'Rio Negro'),
(1057, 452, 'San Jose de Perija'),
(1058, 453, 'San Rafael'),
(1059, 453, 'La Sierrita'),
(1060, 453, 'Las Parcelas'),
(1061, 453, 'Luis de Vicente'),
(1062, 453, 'Monseñor Marcos Sergio Godoy'),
(1063, 453, 'Ricaurte'),
(1064, 453, 'Tamare'),
(1065, 454, 'Antonio Borjas Romero'),
(1066, 454, 'Bolivar'),
(1067, 454, 'Cacique Mara'),
(1068, 454, 'Carracciolo Parra Perez'),
(1069, 454, 'Cecilio Acosta'),
(1070, 454, 'Cristo de Aranza'),
(1071, 454, 'Coquivacoa'),
(1072, 454, 'Chiquinquira'),
(1073, 454, 'Francisco Eugenio Bustamante'),
(1074, 454, 'Idelfonzo Vasquez'),
(1075, 454, 'Juana de avila'),
(1076, 454, 'Luis Hurtado Higuera'),
(1077, 454, 'Manuel Dagnino'),
(1078, 454, 'Olegario Villalobos'),
(1079, 454, 'Raul Leoni'),
(1080, 454, 'Santa Lucia'),
(1081, 454, 'Venancio Pulgar'),
(1082, 454, 'San Isidro'),
(1083, 455, 'Altagracia'),
(1084, 455, 'Faria'),
(1085, 455, 'Ana Maria Campos'),
(1086, 455, 'San Antonio'),
(1087, 455, 'San Jose'),
(1088, 456, 'Donaldo Garcia'),
(1089, 456, 'El Rosario'),
(1090, 456, 'Sixto Zambrano'),
(1091, 457, 'San Francisco'),
(1092, 457, 'El Bajo'),
(1093, 457, 'Domitila Flores'),
(1094, 457, 'Francisco Ochoa'),
(1095, 457, 'Los Cortijos'),
(1096, 457, 'Marcial Hernandez'),
(1097, 458, 'Santa Rita'),
(1098, 458, 'El Mene'),
(1099, 458, 'Pedro Lucas Urribarri'),
(1100, 458, 'Jose Cenobio Urribarri'),
(1101, 459, 'Rafael Maria Baralt'),
(1102, 459, 'Manuel Manrique'),
(1103, 459, 'Rafael Urdaneta'),
(1104, 460, 'Bobures'),
(1105, 460, 'Gibraltar'),
(1106, 460, 'Heras'),
(1107, 460, 'Monseñor Arturo alvarez'),
(1108, 460, 'Romulo Gallegos'),
(1109, 460, 'El Batey'),
(1110, 461, 'Rafael Urdaneta'),
(1111, 461, 'La Victoria'),
(1112, 461, 'Raul Cuenca'),
(1113, 447, 'Sinamaica'),
(1114, 447, 'Alta Guajira'),
(1115, 447, 'Elias Sanchez Rubio'),
(1116, 447, 'Guajira'),
(1117, 462, 'Altagracia'),
(1118, 462, 'Antimano'),
(1119, 462, 'Caricuao'),
(1120, 462, 'Catedral'),
(1121, 462, 'Coche'),
(1122, 462, 'El Junquito'),
(1123, 462, 'El Paraiso'),
(1124, 462, 'El Recreo'),
(1125, 462, 'El Valle'),
(1126, 462, 'La Candelaria'),
(1127, 462, 'La Pastora'),
(1128, 462, 'La Vega'),
(1129, 462, 'Macarao'),
(1130, 462, 'San Agustin'),
(1131, 462, 'San Bernardino'),
(1132, 462, 'San Jose'),
(1133, 462, 'San Juan'),
(1134, 462, 'San Pedro'),
(1135, 462, 'Santa Rosalia'),
(1136, 462, 'Santa Teresa'),
(1137, 462, 'Sucre (Catia)'),
(1138, 462, '23 de enero'),
(1139, 463, 'Libertad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aad_ubicacion_provincias`
--

DROP TABLE IF EXISTS `aad_ubicacion_provincias`;
CREATE TABLE `aad_ubicacion_provincias` (
  `id_provincia` int NOT NULL,
  `id_pais` int NOT NULL DEFAULT '95',
  `provincia` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aad_ubicacion_provincias`
--

INSERT INTO `aad_ubicacion_provincias` (`id_provincia`, `id_pais`, `provincia`) VALUES
(1, 241, 'Amazonas'),
(2, 241, 'Anzoategui'),
(3, 241, 'Apure'),
(4, 241, 'Aragua'),
(5, 241, 'Barinas'),
(6, 241, 'Bolivar'),
(7, 241, 'Carabobo'),
(8, 241, 'Cojedes'),
(9, 241, 'Delta Amacuro'),
(10, 241, 'Falcon'),
(11, 241, 'Guarico'),
(12, 241, 'Lara'),
(13, 241, 'Merida'),
(14, 241, 'Miranda'),
(15, 241, 'Monagas'),
(16, 241, 'Nueva Esparta'),
(17, 241, 'Portuguesa'),
(18, 241, 'Sucre'),
(19, 241, 'Tachira'),
(20, 241, 'Trujillo'),
(21, 241, 'Vargas'),
(22, 241, 'Yaracuy'),
(23, 241, 'Zulia'),
(24, 241, 'Distrito Capital'),
(25, 241, 'Dependencias Federales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aad_ubicacion_punto_referencia`
--

DROP TABLE IF EXISTS `aad_ubicacion_punto_referencia`;
CREATE TABLE `aad_ubicacion_punto_referencia` (
  `id_punto_referencia` int NOT NULL,
  `punto_referencia` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aad_ubicacion_sectores`
--

DROP TABLE IF EXISTS `aad_ubicacion_sectores`;
CREATE TABLE `aad_ubicacion_sectores` (
  `id_sector` int NOT NULL,
  `id_parroquia` int NOT NULL DEFAULT '0',
  `id_municipio` int NOT NULL DEFAULT '0',
  `sector` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aad_ubicacion_sectores`
--

INSERT INTO `aad_ubicacion_sectores` (`id_sector`, `id_parroquia`, `id_municipio`, `sector`) VALUES
(1, 0, 0, 'Las Acacias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auto_profesion`
--

DROP TABLE IF EXISTS `auto_profesion`;
CREATE TABLE `auto_profesion` (
  `id_profesion` int NOT NULL,
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Tiempo del Sistema',
  `status_profesion` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'Activo',
  `nombre_profesion` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `auto_profesion`
--

INSERT INTO `auto_profesion` (`id_profesion`, `tiempo_registro`, `status_profesion`, `nombre_profesion`) VALUES
(1, '2026-04-27 14:16:25', 'Activo', 'Ing. Industrial'),
(2, '2026-04-27 14:16:25', 'Activo', 'Lic. Administracion'),
(3, '2026-04-28 09:57:00', 'Activo', 'SinProfesion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auto_religion`
--

DROP TABLE IF EXISTS `auto_religion`;
CREATE TABLE `auto_religion` (
  `id_religion` int NOT NULL,
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Tiempo del Sistema',
  `status_religion` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'Activo',
  `nombre_religion` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `auto_religion`
--

INSERT INTO `auto_religion` (`id_religion`, `tiempo_registro`, `status_religion`, `nombre_religion`) VALUES
(1, '2026-04-27 14:17:39', 'Activo', 'Catolico'),
(2, '2026-04-27 14:17:39', 'Activo', 'Cristiano'),
(3, '2026-04-28 09:57:00', 'Activo', 'SinReligion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_aaa_acceso_movil`
--

DROP TABLE IF EXISTS `tbl_aaa_acceso_movil`;
CREATE TABLE `tbl_aaa_acceso_movil` (
  `id_acceso_movil` int NOT NULL,
  `id_propietario` int NOT NULL DEFAULT '0',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Tiempo del Sistema',
  `id_ente` int NOT NULL DEFAULT '0',
  `cargoEnte` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'NoRegistrado',
  `numero_movil` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinMovil',
  `email_movil` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinEmail',
  `ubicacion_movil` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `plataforma_movil` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinPlataforma' COMMENT 'Sistema Operativo y Version'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_aaa_bitacora`
--

DROP TABLE IF EXISTS `tbl_aaa_bitacora`;
CREATE TABLE `tbl_aaa_bitacora` (
  `id_bitacora` int NOT NULL,
  `id_propietario` int NOT NULL DEFAULT '0',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Tiempo del Sistema',
  `id_ente_registro` int NOT NULL DEFAULT '0' COMMENT 'Id del Ente',
  `cargoEnte` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `tabla_operacion` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Tabla de la Operacion',
  `tipo_operacion` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'TipoOperacion' COMMENT 'Entrada, Salida, Insert, Select, Delete, Upgrade, Imprimio, Busco',
  `id_operacion` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0' COMMENT 'Id de la Operacion en la Tabla',
  `email_ente` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `token_session` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinToken',
  `origen_ip` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `origen_host` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `origen_url` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `registro_sql` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_aaa_bitacora`
--

INSERT INTO `tbl_aaa_bitacora` (`id_bitacora`, `id_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_registro`, `cargoEnte`, `tabla_operacion`, `tipo_operacion`, `id_operacion`, `email_ente`, `token_session`, `origen_ip`, `origen_host`, `origen_url`, `registro_sql`) VALUES
(1, 1, 1, '2026-04-27 13:01:19', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(2, 1, 1, '2026-04-27 13:28:53', 1, 'Demo', 'aaa_entes', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Paciente: '),
(3, 1, 1, '2026-04-27 13:28:53', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Registro Primera Vez: '),
(4, 1, 1, '2026-04-27 13:28:53', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Registro Ficha Vacunas: '),
(5, 1, 1, '2026-04-27 13:33:35', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(6, 1, 1, '2026-04-27 13:35:49', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(7, 1, 1, '2026-04-27 15:15:28', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(8, 1, 1, '2026-04-27 16:38:57', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(9, 1, 1, '2026-04-27 17:13:09', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(10, 1, 1, '2026-04-27 20:45:29', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(11, 1, 1, '2026-04-27 22:38:21', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(12, 1, 1, '2026-04-28 00:01:34', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(13, 1, 1, '2026-04-28 00:19:51', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(14, 1, 1, '2026-04-28 09:41:05', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(15, 1, 1, '2026-04-28 09:57:00', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(16, 1, 1, '2026-04-28 09:58:59', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(17, 1, 1, '2026-04-28 10:00:17', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(18, 1, 1, '2026-04-28 10:00:49', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(19, 1, 1, '2026-04-28 10:02:23', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(20, 1, 1, '2026-04-28 12:58:10', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(21, 1, 1, '2026-04-28 12:58:32', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(22, 1, 1, '2026-04-28 15:13:22', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(23, 1, 1, '2026-04-28 15:13:33', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(24, 1, 1, '2026-04-28 15:35:14', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 2'),
(25, 1, 1, '2026-04-28 15:49:10', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento/paciente_seguimiento_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 2'),
(26, 1, 1, '2026-04-28 15:49:10', 1, 'Demo', 'tbl_paci_segui_general', 'Insert', '25', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento: 2'),
(27, 1, 1, '2026-04-28 16:36:01', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(28, 1, 1, '2026-04-28 17:41:08', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(29, 1, 1, '2026-04-28 17:53:03', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(30, 1, 1, '2026-04-28 20:54:36', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(31, 1, 1, '2026-04-28 22:39:20', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(32, 1, 1, '2026-04-29 02:21:56', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(33, 1, 1, '2026-04-29 03:25:40', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(34, 1, 1, '2026-04-29 10:18:57', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(35, 1, 1, '2026-04-29 11:07:12', 1, 'Demo', 'aaa_entes', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Paciente: '),
(36, 1, 1, '2026-04-29 11:07:12', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Registro Primera Vez: '),
(37, 1, 1, '2026-04-29 11:07:12', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Registro Ficha Vacunas: '),
(38, 1, 1, '2026-04-29 11:49:55', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(39, 1, 1, '2026-04-29 14:38:43', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(40, 1, 1, '2026-04-29 15:00:41', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 3'),
(41, 1, 1, '2026-04-29 15:00:41', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '40', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 3'),
(42, 1, 1, '2026-04-29 15:13:27', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 3'),
(43, 1, 1, '2026-04-29 15:13:27', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '42', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 3'),
(44, 1, 1, '2026-04-29 15:43:26', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(45, 1, 1, '2026-04-29 17:40:42', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(46, 1, 1, '2026-04-29 18:04:45', 1, 'Demo', 'aaa_entes', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_sanitarios/ente_nuevo.php', 'Nuevo Paciente: '),
(47, 1, 1, '2026-04-29 18:04:45', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_sanitarios/ente_nuevo.php', 'Nuevo Registro Primera Vez: '),
(48, 1, 1, '2026-04-29 18:04:45', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_sanitarios/ente_nuevo.php', 'Nuevo Registro Ficha Vacunas: '),
(49, 1, 1, '2026-04-29 18:32:09', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(50, 1, 1, '2026-04-29 20:15:51', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(51, 1, 1, '2026-04-29 20:49:09', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento/paciente_seguimiento_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 3'),
(52, 1, 1, '2026-04-29 20:49:09', 1, 'Demo', 'tbl_paci_segui_general', 'Insert', '51', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento: 3'),
(53, 1, 1, '2026-04-29 21:08:27', 1, 'Demo', 'tbl_paci_agenda_citas', 'Printer', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aac_calendario/imprime_citas_mes_pdf.php?fecha_primero=2026-04-01&fecha_ultimo=2026-04-30', 'Imprimio Calendario del Mes: 2026-04-01 al 2026-04-30'),
(54, 1, 1, '2026-04-29 21:09:45', 1, 'Demo', 'tbl_paci_agenda_citas', 'Printer', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aac_calendario/imprime_citas_hoy_pdf.php', 'Imprimio Calendario del Dia: 2026-04-29'),
(55, 1, 1, '2026-04-29 21:11:20', 1, 'Demo', 'tbl_paci_agenda_citas', 'Printer', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aac_calendario/imprime_citas_semana_pdf.php?fecha_lunes=2026/04/27&fecha_domingo=2026/05/03', 'Imprimio Calendario de la Semana del: 2026/04/27 al 2026/05/03'),
(56, 1, 1, '2026-04-29 23:18:24', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(57, 1, 1, '2026-04-29 23:51:47', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(58, 1, 1, '2026-04-30 11:20:32', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(59, 1, 1, '2026-04-30 14:03:25', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(60, 1, 1, '2026-04-30 15:16:20', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(61, 1, 1, '2026-04-30 15:50:21', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(62, 1, 1, '2026-05-01 01:30:34', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(63, 1, 1, '2026-05-01 02:59:54', 1, 'Demo', 'tbl_exa_laboratorio', 'Update', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_resultado_guardar.php', 'Actualizo Examen Laboratorio: 5'),
(64, 1, 1, '2026-05-01 03:01:39', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(65, 1, 1, '2026-05-01 10:56:49', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(66, 1, 1, '2026-05-01 10:57:24', 1, 'Demo', 'tbl_exa_laboratorio', 'Update', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_resultado_guardar.php', 'Actualizo Examen Laboratorio: 5'),
(67, 1, 1, '2026-05-01 12:26:25', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(68, 1, 1, '2026-05-01 18:55:50', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(69, 1, 1, '2026-05-01 19:03:43', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(70, 1, 1, '2026-05-01 22:01:33', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(71, 1, 1, '2026-05-01 23:40:52', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(72, 1, 1, '2026-05-01 23:59:47', 1, 'Demo', 'tbl_paci_doc_consentimiento', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/consentimiento_guardar.php', 'Nuevo Registro Consentimiento: 2'),
(73, 1, 1, '2026-05-02 00:03:19', 1, 'Demo', 'tbl_paci_doc_consentimiento', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/consentimiento_guardar.php', 'Nuevo Registro Consentimiento: 2'),
(74, 1, 1, '2026-05-02 01:15:31', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(75, 1, 1, '2026-05-02 01:48:33', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(76, 1, 1, '2026-05-02 02:23:48', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(77, 1, 1, '2026-05-02 12:25:29', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(78, 1, 1, '2026-05-02 12:27:12', 1, 'Demo', 'tbl_paci_doc_constancia', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/constancia_guardar.php', 'Nuevo Registro Constancia: 2'),
(79, 1, 1, '2026-05-02 12:50:49', 1, 'Demo', 'tbl_paci_doc_consentimiento', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/consentimiento_guardar.php', 'Nuevo Registro Consentimiento: 2'),
(80, 1, 1, '2026-05-02 13:03:42', 1, 'Demo', 'tbl_paci_doc_constancia', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/constancia_guardar.php', 'Nuevo Registro Constancia: 3'),
(81, 1, 1, '2026-05-02 13:06:06', 1, 'Demo', 'tbl_paci_doc_consentimiento', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/consentimiento_guardar.php', 'Nuevo Registro Consentimiento: 3'),
(82, 1, 1, '2026-05-02 13:45:25', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(83, 1, 1, '2026-05-02 15:55:47', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(84, 1, 1, '2026-05-02 16:22:27', 1, 'Demo', 'tbl_paci_doc_constancia_nino_sano', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/constancia_nino_sano_guardar.php', 'Nuevo Registro Constancia: 2'),
(85, 1, 1, '2026-05-02 16:28:18', 1, 'Demo', 'tbl_paci_doc_constancia_nino_sano', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/constancia_nino_sano_guardar.php', 'Nuevo Registro Constancia: 2'),
(86, 1, 1, '2026-05-02 17:32:24', 1, 'Demo', 'tbl_paci_doc_informe', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/informe_paciente_guardar.php', 'Nuevo Registro Informe: 2'),
(87, 1, 1, '2026-05-02 17:39:17', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(88, 1, 1, '2026-05-02 20:49:15', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(89, 1, 1, '2026-05-02 21:06:15', 1, 'Demo', 'tbl_paci_doc_informe', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/informe_paciente_guardar.php', 'Nuevo Registro Informe: 2'),
(90, 1, 1, '2026-05-02 21:08:18', 1, 'Demo', 'tbl_paci_doc_informe', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/informe_paciente_guardar.php', 'Nuevo Registro Informe: 2'),
(91, 1, 1, '2026-05-02 21:12:04', 1, 'Demo', 'tbl_paci_doc_referencia', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/referencia_paciente_guardar.php', 'Nuevo Registro Referencia: 3'),
(92, 1, 1, '2026-05-02 21:16:34', 1, 'Demo', 'tbl_paci_doc_referencia', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/referencia_paciente_guardar.php', 'Nuevo Registro Referencia: 3'),
(93, 1, 1, '2026-05-02 21:26:59', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(94, 1, 1, '2026-05-02 21:27:33', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(95, 1, 1, '2026-05-02 21:30:18', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(96, 1, 1, '2026-05-02 21:32:31', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(97, 1, 1, '2026-05-02 21:35:53', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(98, 1, 1, '2026-05-02 21:38:10', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(99, 1, 1, '2026-05-02 21:38:29', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(100, 1, 1, '2026-05-02 23:20:34', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(101, 1, 1, '2026-05-02 23:20:46', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(102, 1, 1, '2026-05-02 23:24:03', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(103, 1, 1, '2026-05-02 23:24:45', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(104, 1, 1, '2026-05-02 23:26:10', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(105, 1, 1, '2026-05-02 23:26:39', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(106, 1, 1, '2026-05-02 23:27:07', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(107, 1, 1, '2026-05-02 23:38:29', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(108, 1, 1, '2026-05-02 23:42:26', 1, 'Demo', 'tbl_paci_doc_reposo', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/reposo_paciente_guardar.php', 'Nuevo Registro Reposo: 3'),
(109, 1, 1, '2026-05-03 00:18:43', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(110, 1, 1, '2026-05-03 18:37:45', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(111, 1, 1, '2026-05-03 18:57:12', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 2'),
(112, 1, 1, '2026-05-03 18:57:44', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 2'),
(113, 1, 1, '2026-05-03 19:11:13', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(114, 1, 1, '2026-05-03 19:50:09', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(115, 1, 1, '2026-05-03 20:05:17', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(116, 1, 1, '2026-05-03 20:29:52', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(117, 1, 1, '2026-05-03 20:30:51', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(118, 1, 1, '2026-05-03 20:32:33', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 2'),
(119, 1, 1, '2026-05-03 20:37:55', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(120, 1, 1, '2026-05-03 20:38:41', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(121, 1, 1, '2026-05-03 20:41:30', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(122, 1, 1, '2026-05-03 22:48:40', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(123, 1, 1, '2026-05-04 00:35:59', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(124, 1, 1, '2026-05-04 08:48:41', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(125, 1, 1, '2026-05-04 09:19:02', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(126, 1, 1, '2026-05-04 09:19:11', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(127, 1, 1, '2026-05-04 09:53:25', 1, 'Demo', 'tbl_exa_laboratorio', 'Update', '9', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_resultado_guardar.php', 'Actualizo Examen Laboratorio: 9'),
(128, 1, 1, '2026-05-04 10:00:58', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(129, 1, 1, '2026-05-04 12:53:02', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(130, 1, 1, '2026-05-04 14:11:26', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(131, 1, 1, '2026-05-04 14:15:14', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(132, 1, 1, '2026-05-04 14:16:41', 1, 'Demo', 'tbl_exa_laboratorio', 'Update', '10', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_resultado_guardar.php', 'Actualizo Examen Laboratorio: 10'),
(133, 1, 1, '2026-05-04 14:19:33', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(134, 1, 1, '2026-05-04 14:29:02', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(135, 1, 1, '2026-05-04 14:34:16', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(136, 1, 1, '2026-05-04 14:39:23', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(137, 1, 1, '2026-05-04 14:44:14', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(138, 1, 1, '2026-05-05 00:43:25', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(139, 1, 1, '2026-05-05 00:44:25', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(140, 1, 1, '2026-05-05 00:46:39', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(141, 1, 1, '2026-05-05 00:47:12', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(142, 1, 1, '2026-05-05 00:48:47', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(143, 1, 1, '2026-05-05 00:49:11', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(144, 1, 1, '2026-05-05 01:11:31', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(145, 1, 1, '2026-05-05 01:39:59', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(146, 1, 1, '2026-05-05 01:46:24', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(147, 1, 1, '2026-05-05 01:46:46', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(148, 1, 1, '2026-05-05 01:47:09', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(149, 1, 1, '2026-05-05 01:47:18', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(150, 1, 1, '2026-05-05 10:28:44', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(151, 1, 1, '2026-05-05 10:40:09', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 2'),
(152, 1, 1, '2026-05-05 10:48:19', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(153, 1, 1, '2026-05-05 10:48:29', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(154, 1, 1, '2026-05-05 11:36:22', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(155, 1, 1, '2026-05-05 15:45:42', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(156, 1, 1, '2026-05-05 15:45:52', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(157, 1, 1, '2026-05-05 15:47:20', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(158, 1, 1, '2026-05-05 15:52:33', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(159, 1, 1, '2026-05-05 15:53:59', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(160, 1, 1, '2026-05-05 22:46:54', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(161, 1, 1, '2026-05-05 22:56:49', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(162, 1, 1, '2026-05-05 22:58:53', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(163, 1, 1, '2026-05-05 22:59:24', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(164, 1, 1, '2026-05-05 22:59:27', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(165, 1, 1, '2026-05-05 23:27:27', 1, 'Demo', 'tbl_paci_doc_consentimiento', 'Insert', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/consentimiento_paciente_guardar.php', 'Nuevo Registro Consentimiento: 3'),
(166, 1, 1, '2026-05-05 23:33:08', 1, 'Demo', 'tbl_paci_doc_constancia', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/constancia_paciente_guardar.php', 'Nuevo Registro Constancia: 3'),
(167, 1, 1, '2026-05-05 23:38:28', 1, 'Demo', 'tbl_paci_doc_constancia_nino_sano', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/constancia_nino_sano_guardar.php', 'Nuevo Registro Constancia Niño Sano: 3'),
(168, 1, 1, '2026-05-05 23:42:05', 1, 'Demo', 'tbl_paci_doc_informe', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/informe_paciente_guardar.php', 'Nuevo Registro Informe: 3'),
(169, 1, 1, '2026-05-05 23:46:55', 1, 'Demo', 'tbl_paci_doc_referencia', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/referencia_paciente_guardar.php', 'Nuevo Registro Referencia: 3'),
(170, 1, 1, '2026-05-05 23:57:22', 1, 'Demo', 'tbl_paci_doc_reposo', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/reposo_paciente_guardar.php', 'Nuevo Registro Reposo: 3'),
(171, 1, 1, '2026-05-05 23:58:45', 1, 'Demo', 'tbl_paci_doc_reposo', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/reposo_paciente_guardar.php', 'Nuevo Registro Reposo: 3'),
(172, 1, 1, '2026-05-06 00:06:58', 1, 'Demo', 'tbl_exa_laboratorio', 'Insert', '11', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_guardar.php', 'Nuevo Registro Orden Laboratorio: 3'),
(173, 1, 1, '2026-05-06 00:09:08', 1, 'Demo', 'tbl_exa_laboratorio', 'Insert', '12', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_guardar.php', 'Nuevo Registro Orden Laboratorio: 3'),
(174, 1, 1, '2026-05-06 00:09:51', 1, 'Demo', 'tbl_exa_laboratorio', 'Insert', '13', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_guardar.php', 'Nuevo Registro Orden Laboratorio: 2'),
(175, 1, 1, '2026-05-06 00:21:45', 1, 'Demo', 'tbl_exa_laboratorio', 'Update', '13', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_resultado_guardar.php', 'Actualizo Examen Laboratorio: 13'),
(176, 1, 1, '2026-05-06 00:22:32', 1, 'Demo', 'tbl_exa_laboratorio', 'Update', '13', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_resultado_guardar.php', 'Actualizo Examen Laboratorio: 13'),
(177, 1, 1, '2026-05-06 00:25:28', 1, 'Demo', 'tbl_exa_laboratorio', 'Update', '13', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_resultado_guardar.php', 'Actualizo Examen Laboratorio: 13'),
(178, 1, 1, '2026-05-06 00:37:38', 1, 'Demo', 'tbl_exa_laboratorio', 'Update', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_resultado_guardar.php', 'Actualizo Examen Laboratorio: 2'),
(179, 1, 1, '2026-05-06 00:38:04', 1, 'Demo', 'tbl_exa_laboratorio', 'Update', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_resultado_guardar.php', 'Actualizo Examen Laboratorio: 2'),
(180, 1, 1, '2026-05-06 00:38:24', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(181, 1, 1, '2026-05-06 01:22:18', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(182, 1, 1, '2026-05-06 01:28:31', 1, 'Demo', 'tbl_exa_radiologia', 'Insert', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_guardar.php', 'Nuevo Registro Orden Radiologia: 3'),
(183, 1, 1, '2026-05-06 01:28:53', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(184, 1, 1, '2026-05-06 01:41:03', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(185, 1, 1, '2026-05-06 02:33:02', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 5'),
(186, 1, 1, '2026-05-06 02:49:34', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 5'),
(187, 1, 1, '2026-05-06 02:50:16', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 5'),
(188, 1, 1, '2026-05-06 02:51:29', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 5'),
(189, 1, 1, '2026-05-06 02:53:19', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 5'),
(190, 1, 1, '2026-05-06 02:53:49', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 5'),
(191, 1, 1, '2026-05-06 02:56:13', 1, 'Demo', 'tbl_exa_laboratorio', 'Update', '12', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_resultado_guardar.php', 'Actualizo Examen Laboratorio: 12'),
(192, 1, 1, '2026-05-06 02:59:49', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 4'),
(193, 1, 1, '2026-05-06 03:00:12', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 2'),
(194, 1, 1, '2026-05-06 03:01:01', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 1'),
(195, 1, 1, '2026-05-06 03:01:07', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 1'),
(196, 1, 1, '2026-05-06 03:01:40', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(197, 1, 1, '2026-05-06 09:11:44', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(198, 1, 1, '2026-05-06 09:12:02', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 5'),
(199, 1, 1, '2026-05-06 09:13:25', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 2');
INSERT INTO `tbl_aaa_bitacora` (`id_bitacora`, `id_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_registro`, `cargoEnte`, `tabla_operacion`, `tipo_operacion`, `id_operacion`, `email_ente`, `token_session`, `origen_ip`, `origen_host`, `origen_url`, `registro_sql`) VALUES
(200, 1, 1, '2026-05-06 09:13:46', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 2'),
(201, 1, 1, '2026-05-06 09:15:34', 1, 'Demo', 'tbl_exa_radiologia', 'Insert', '6', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_guardar.php', 'Nuevo Registro Orden Radiologia: 3'),
(202, 1, 1, '2026-05-06 09:22:43', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '6', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 6'),
(203, 1, 1, '2026-05-06 09:26:54', 1, 'Demo', 'tbl_exa_radiologia', 'Insert', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_guardar.php', 'Nuevo Registro Orden Radiologia: 3'),
(204, 1, 1, '2026-05-06 09:29:52', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 5'),
(205, 1, 1, '2026-05-06 09:33:31', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '6', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 6'),
(206, 1, 1, '2026-05-06 09:34:00', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(207, 1, 1, '2026-05-06 09:35:08', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(208, 1, 1, '2026-05-06 09:35:24', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(209, 1, 1, '2026-05-06 09:38:01', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(210, 1, 1, '2026-05-06 09:38:09', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(211, 1, 1, '2026-05-06 09:41:14', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(212, 1, 1, '2026-05-06 09:41:35', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(213, 1, 1, '2026-05-06 09:41:38', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(214, 1, 1, '2026-05-06 09:41:57', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(215, 1, 1, '2026-05-06 09:45:03', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(216, 1, 1, '2026-05-06 09:45:31', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(217, 1, 1, '2026-05-06 09:48:49', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(218, 1, 1, '2026-05-06 09:49:25', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 7'),
(219, 1, 1, '2026-05-06 10:08:52', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 4'),
(220, 1, 1, '2026-05-06 12:22:39', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(221, 1, 1, '2026-05-06 12:35:45', 1, 'Demo', 'tbl_exa_biopsia', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_guardar.php', 'Nuevo Registro Orden Biopsia: 2'),
(222, 1, 1, '2026-05-06 13:25:06', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(223, 1, 1, '2026-05-06 18:44:56', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(224, 1, 1, '2026-05-06 18:46:11', 1, 'Demo', 'tbl_exa_biopsia', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_guardar.php', 'Nuevo Registro Orden Biopsia: 3'),
(225, 1, 1, '2026-05-06 18:57:32', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(226, 1, 1, '2026-05-06 23:36:11', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(227, 1, 1, '2026-05-07 00:25:04', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(228, 1, 1, '2026-05-07 00:26:22', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(229, 1, 1, '2026-05-07 00:26:41', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(230, 1, 1, '2026-05-07 00:30:21', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(231, 1, 1, '2026-05-07 00:30:59', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(232, 1, 1, '2026-05-07 00:31:10', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(233, 1, 1, '2026-05-07 00:31:44', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(234, 1, 1, '2026-05-07 00:34:35', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(235, 1, 1, '2026-05-07 00:35:30', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(236, 1, 1, '2026-05-07 00:39:32', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 3'),
(237, 1, 1, '2026-05-07 00:39:59', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 3'),
(238, 1, 1, '2026-05-07 00:42:28', 1, 'Demo', 'tbl_exa_radiologia', 'Update', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_radiologia/examen_radiologia_resultado_guardar.php', 'Actualizo Examen Radiologia: 3'),
(239, 1, 1, '2026-05-07 01:01:51', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(240, 1, 1, '2026-05-07 01:02:41', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(241, 1, 1, '2026-05-07 01:02:43', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(242, 1, 1, '2026-05-07 01:03:45', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 1'),
(243, 1, 1, '2026-05-07 01:05:59', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 2'),
(244, 1, 1, '2026-05-07 09:02:54', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(245, 1, 1, '2026-05-07 09:27:25', 1, 'Demo', 'tbl_exa_especiales', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_especiales/examen_especiales_guardar.php', 'Nuevo Registro Orden Especiales: 3'),
(246, 1, 1, '2026-05-07 09:43:06', 1, 'Demo', 'tbl_exa_especiales', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_especiales/examen_especiales_guardar.php', 'Nuevo Registro Orden Especiales: 3'),
(247, 1, 1, '2026-05-07 10:26:46', 1, 'Demo', 'tbl_exa_especiales', 'Update', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_especiales/examen_especiales_resultado_guardar.php', 'Actualizo Examen Especiales: 2'),
(248, 1, 1, '2026-05-07 10:27:01', 1, 'Demo', 'tbl_exa_especiales', 'Update', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_especiales/examen_especiales_resultado_guardar.php', 'Actualizo Examen Especiales: 2'),
(249, 1, 1, '2026-05-07 10:27:14', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(250, 1, 1, '2026-05-07 12:28:25', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(251, 1, 1, '2026-05-07 13:08:12', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(252, 1, 1, '2026-05-07 13:08:22', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(253, 1, 1, '2026-05-07 13:09:26', 1, 'Demo', 'aaa_entes', 'Insert', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Paciente: '),
(254, 1, 1, '2026-05-07 13:09:26', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Registro Primera Vez: '),
(255, 1, 1, '2026-05-07 13:09:26', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Insert', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Registro Ficha Vacunas: '),
(256, 1, 1, '2026-05-07 13:10:29', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 7'),
(257, 1, 1, '2026-05-07 13:11:08', 1, 'Demo', 'tbl_exa_laboratorio', 'Insert', '14', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_guardar.php', 'Nuevo Registro Orden Laboratorio: 7'),
(258, 1, 1, '2026-05-07 13:11:26', 1, 'Demo', 'tbl_exa_laboratorio', 'Update', '14', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_resultado_guardar.php', 'Actualizo Examen Laboratorio: 14'),
(259, 1, 1, '2026-05-07 13:12:16', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 7'),
(260, 1, 1, '2026-05-07 13:25:23', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(261, 1, 1, '2026-05-07 13:41:49', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(262, 1, 1, '2026-05-07 14:37:02', 1, 'Demo', 'tbl_exa_micologia_enfer_tropi', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_micologia_tropicales/examen_micologia_tropicales_guardar.php', 'Nuevo Registro Orden Micologia y Enfermedades Tropicales: 7'),
(263, 1, 1, '2026-05-07 15:20:50', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(264, 1, 1, '2026-05-07 16:47:26', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(265, 1, 1, '2026-05-07 16:48:33', 1, 'Demo', 'tbl_exa_micologia_enfer_tropi', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_micologia_tropicales/examen_micologia_tropicales_guardar.php', 'Nuevo Registro Orden Micologia y Enfermedades Tropicales: 7'),
(266, 1, 1, '2026-05-07 17:57:27', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(267, 1, 1, '2026-05-07 18:34:39', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(268, 1, 1, '2026-05-07 23:12:15', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(269, 1, 1, '2026-05-07 23:31:16', 1, 'Demo', 'tbl_exa_micologia_enfer_tropi', 'Update', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_micologia_tropicales/examen_micologia_tropicales_resultado_guardar.php', 'Actualizo Examen Micologia y Enfermedades Tropicales: 2'),
(270, 1, 1, '2026-05-07 23:40:44', 1, 'Demo', 'tbl_exa_micologia_enfer_tropi', 'Update', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_micologia_tropicales/examen_micologia_tropicales_resultado_guardar.php', 'Actualizo Examen Micologia y Enfermedades Tropicales: 2'),
(271, 1, 1, '2026-05-08 00:11:21', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(272, 1, 1, '2026-05-08 23:53:05', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(273, 1, 1, '2026-05-09 01:28:11', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(274, 1, 1, '2026-05-09 09:22:11', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(275, 1, 1, '2026-05-09 10:54:22', 1, 'Demo', 'tbl_paci_doc_recipe', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_recipe_medico/recipe_paciente_guardar.php', 'Nuevo Registro Recipe Medico: 3'),
(276, 1, 1, '2026-05-09 11:24:44', 1, 'Demo', 'tbl_paci_doc_recipe', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_recipe_medico/recipe_paciente_guardar.php', 'Nuevo Registro Recipe Medico: 7'),
(277, 1, 1, '2026-05-09 11:38:15', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(278, 1, 1, '2026-05-09 11:38:58', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(279, 1, 1, '2026-05-09 12:25:59', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(280, 1, 1, '2026-05-09 12:42:48', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(281, 1, 1, '2026-05-09 13:06:19', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 3'),
(282, 1, 1, '2026-05-09 14:03:15', 1, 'Demo', 'tbl_paci_doc_recipe', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_recipe_medico/recipe_paciente_guardar.php', 'Nuevo Registro Recipe Medico: 3'),
(283, 1, 1, '2026-05-09 14:03:57', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(284, 1, 1, '2026-05-09 22:43:06', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(285, 1, 1, '2026-05-09 23:10:41', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(286, 1, 1, '2026-05-10 00:00:42', 1, 'Demo', 'tbl_paci_segui_psicologia', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_psicologo/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento Psicologo: 3'),
(287, 1, 1, '2026-05-10 00:58:00', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(288, 1, 1, '2026-05-10 09:54:15', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(289, 1, 1, '2026-05-10 11:37:24', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(290, 1, 1, '2026-05-10 12:12:30', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(291, 1, 1, '2026-05-10 13:35:06', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(292, 1, 1, '2026-05-10 13:35:25', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(293, 1, 1, '2026-05-10 13:58:56', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(294, 1, 1, '2026-05-10 13:59:16', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(295, 1, 1, '2026-05-10 14:09:20', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(296, 1, 1, '2026-05-10 14:09:36', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(297, 1, 1, '2026-05-10 14:10:50', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(298, 1, 1, '2026-05-10 16:59:03', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(299, 1, 1, '2026-05-10 17:00:19', 1, 'Demo', 'tbl_paci_segui_pediatra', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_pediatra/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento Pediatra: 2'),
(300, 1, 1, '2026-05-10 17:13:13', 1, 'Demo', 'tbl_paci_segui_pediatra', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_pediatra/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento Pediatra: 2'),
(301, 1, 1, '2026-05-10 17:17:44', 1, 'Demo', 'tbl_paci_segui_pediatra', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_pediatra/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento Pediatra: 2'),
(302, 1, 1, '2026-05-10 17:30:29', 1, 'Demo', 'tbl_paci_segui_pediatra', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_pediatra/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento Pediatra: 2'),
(303, 1, 1, '2026-05-10 17:38:31', 1, 'Demo', 'tbl_paci_segui_pediatra', 'Insert', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_pediatra/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento Pediatra: 2'),
(304, 1, 1, '2026-05-10 18:30:34', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(305, 1, 1, '2026-05-10 18:31:04', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(306, 1, 1, '2026-05-10 18:31:54', 1, 'Demo', 'tbl_exa_biopsia', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_guardar.php', 'Nuevo Registro Orden Biopsia: 7'),
(307, 1, 1, '2026-05-10 18:44:00', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(308, 1, 1, '2026-05-10 18:44:52', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(309, 1, 1, '2026-05-10 19:16:01', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(310, 1, 1, '2026-05-10 19:16:24', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(311, 1, 1, '2026-05-10 19:27:04', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(312, 1, 1, '2026-05-10 19:27:57', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(313, 1, 1, '2026-05-10 19:54:00', 1, 'Demo', 'tbl_exa_biopsia', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_guardar.php', 'Nuevo Registro Orden Biopsia: 3'),
(314, 1, 1, '2026-05-10 19:55:24', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(315, 1, 1, '2026-05-11 00:54:38', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(316, 1, 1, '2026-05-11 01:01:22', 1, 'Demo', 'tbl_paci_segui_pediatra', 'Insert', '6', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_pediatra/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento Pediatra: 7'),
(317, 1, 1, '2026-05-11 01:05:14', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(318, 1, 1, '2026-05-11 01:07:21', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(319, 1, 1, '2026-05-11 01:08:12', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(320, 1, 1, '2026-05-11 09:56:26', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(321, 1, 1, '2026-05-11 14:27:30', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(322, 1, 1, '2026-05-11 15:08:11', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(323, 1, 1, '2026-05-11 15:16:08', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(324, 1, 1, '2026-05-11 15:17:03', 1, 'Demo', 'aaa_entes', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Paciente: '),
(325, 1, 1, '2026-05-11 15:17:03', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Registro Primera Vez: '),
(326, 1, 1, '2026-05-11 15:17:03', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Registro Ficha Vacunas: '),
(327, 1, 1, '2026-05-11 15:17:21', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 8'),
(328, 1, 1, '2026-05-11 15:18:15', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 8'),
(329, 1, 1, '2026-05-11 15:40:01', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(330, 1, 1, '2026-05-11 18:45:59', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(331, 1, 1, '2026-05-11 19:08:54', 1, 'Demo', 'tbl_paci_segui_pediatra', 'Insert', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_pediatra/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento Pediatra: 8'),
(332, 1, 1, '2026-05-11 19:23:48', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(333, 1, 1, '2026-05-11 20:51:35', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(334, 1, 1, '2026-05-11 21:25:51', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(335, 1, 1, '2026-05-11 23:33:28', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(336, 1, 1, '2026-05-11 23:44:34', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(337, 1, 1, '2026-05-12 02:27:31', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(338, 1, 1, '2026-05-12 02:33:05', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 8'),
(339, 1, 1, '2026-05-12 02:33:05', 1, 'Demo', 'tbl_paci_segui_general', 'Insert', '338', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento General: 8'),
(340, 1, 1, '2026-05-12 02:37:00', 1, 'Demo', 'tbl_paci_segui_general', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento General: 8'),
(341, 1, 1, '2026-05-12 03:48:56', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 8'),
(342, 1, 1, '2026-05-12 04:16:06', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(343, 1, 1, '2026-05-12 09:31:40', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(344, 1, 1, '2026-05-12 11:23:44', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(345, 1, 1, '2026-05-12 13:39:51', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(346, 1, 1, '2026-05-12 14:31:06', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(347, 1, 1, '2026-05-12 15:07:02', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(348, 1, 1, '2026-05-12 15:10:19', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '6', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 2'),
(349, 1, 1, '2026-05-12 15:10:19', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '348', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 2'),
(350, 1, 1, '2026-05-12 15:16:54', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 2'),
(351, 1, 1, '2026-05-12 15:34:18', 1, 'Demo', 'tbl_paci_segui_psicologia', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_psicologo/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento Psicologo: 7'),
(352, 1, 1, '2026-05-12 15:50:35', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(353, 1, 1, '2026-05-12 17:32:15', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(354, 1, 1, '2026-05-12 17:52:01', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(355, 1, 1, '2026-05-12 18:03:14', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(356, 1, 1, '2026-05-12 19:00:37', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(357, 1, 1, '2026-05-12 19:36:41', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(358, 1, 1, '2026-05-12 19:37:40', 1, 'Demo', 'tbl_paci_segui_psiquiatra', 'Insert', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_psiquiatra/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento General: 3'),
(359, 1, 1, '2026-05-12 19:48:49', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(360, 1, 1, '2026-05-12 20:30:45', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(361, 1, 1, '2026-05-12 20:54:44', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(362, 1, 1, '2026-05-12 20:55:00', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(363, 1, 1, '2026-05-12 20:55:17', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(364, 1, 1, '2026-05-12 20:55:50', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(365, 1, 1, '2026-05-12 20:57:49', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(366, 1, 1, '2026-05-12 20:57:59', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(367, 1, 1, '2026-05-12 20:58:32', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(368, 1, 1, '2026-05-12 21:04:27', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(369, 1, 1, '2026-05-12 21:07:11', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(370, 1, 1, '2026-05-12 21:08:47', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(371, 1, 1, '2026-05-12 21:27:00', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(372, 1, 1, '2026-05-12 21:28:46', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(373, 1, 1, '2026-05-12 21:41:59', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(374, 1, 1, '2026-05-13 01:39:28', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(375, 1, 1, '2026-05-13 01:51:00', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(376, 1, 1, '2026-05-13 02:26:43', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(377, 1, 1, '2026-05-13 02:30:00', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(378, 1, 1, '2026-05-13 02:30:16', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(379, 1, 1, '2026-05-13 03:04:22', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 7'),
(380, 1, 1, '2026-05-13 03:04:27', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 7'),
(381, 1, 1, '2026-05-13 03:04:49', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 7'),
(382, 1, 1, '2026-05-13 03:07:43', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(383, 1, 1, '2026-05-13 03:07:46', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(384, 1, 1, '2026-05-13 03:10:23', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(385, 1, 1, '2026-05-13 08:24:35', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(386, 1, 1, '2026-05-13 08:24:46', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 8'),
(387, 1, 1, '2026-05-13 08:24:51', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 8'),
(388, 1, 1, '2026-05-13 08:25:17', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 8'),
(389, 1, 1, '2026-05-13 08:28:36', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 8'),
(390, 1, 1, '2026-05-13 08:32:56', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 8'),
(391, 1, 1, '2026-05-13 08:34:46', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 8'),
(392, 1, 1, '2026-05-13 08:34:55', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 8'),
(393, 1, 1, '2026-05-13 08:35:13', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(394, 1, 1, '2026-05-13 08:35:31', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(395, 1, 1, '2026-05-13 08:36:40', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3');
INSERT INTO `tbl_aaa_bitacora` (`id_bitacora`, `id_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_registro`, `cargoEnte`, `tabla_operacion`, `tipo_operacion`, `id_operacion`, `email_ente`, `token_session`, `origen_ip`, `origen_host`, `origen_url`, `registro_sql`) VALUES
(396, 1, 1, '2026-05-13 09:19:14', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(397, 1, 1, '2026-05-13 10:51:23', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(398, 1, 1, '2026-05-13 11:09:06', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '7', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_nota_operatoria_general/paciente_nota_operatoria_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 7'),
(399, 1, 1, '2026-05-13 11:09:06', 1, 'Demo', 'tbl_paci_nota_operatoria', 'Insert', '398', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_nota_operatoria_general/paciente_nota_operatoria_guardar.php', 'Nuevo Registro Nota Operatoria General: 7'),
(400, 1, 1, '2026-05-13 11:13:52', 1, 'Demo', 'tbl_paci_nota_operatoria', 'Insert', '2', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_nota_operatoria_general/paciente_nota_operatoria_guardar.php', 'Nuevo Registro Nota Operatoria General: 7'),
(401, 1, 1, '2026-05-13 11:17:28', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(402, 1, 1, '2026-05-13 11:40:50', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(403, 1, 1, '2026-05-13 12:03:10', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(404, 1, 1, '2026-05-13 13:43:18', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(405, 1, 1, '2026-05-13 13:45:50', 1, 'Demo', 'aaa_entes', 'Insert', '9', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_instituciones/ente_nuevo.php', 'Nuevo Paciente: '),
(406, 1, 1, '2026-05-13 13:45:50', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '9', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_instituciones/ente_nuevo.php', 'Nuevo Registro Primera Vez: '),
(407, 1, 1, '2026-05-13 13:45:50', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Insert', '9', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_instituciones/ente_nuevo.php', 'Nuevo Registro Ficha Vacunas: '),
(408, 1, 1, '2026-05-13 13:54:50', 1, 'Demo', 'aaa_entes', 'Insert', '10', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Paciente: '),
(409, 1, 1, '2026-05-13 13:54:50', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '10', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Registro Primera Vez: '),
(410, 1, 1, '2026-05-13 13:54:50', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Insert', '10', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Registro Ficha Vacunas: '),
(411, 1, 1, '2026-05-13 13:56:53', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '10', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 10'),
(412, 1, 1, '2026-05-13 14:14:41', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '6', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 10'),
(413, 1, 1, '2026-05-13 14:19:50', 1, 'Demo', 'tbl_paci_segui_psicologia', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_psicologo/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento Psicologo: 10'),
(414, 1, 1, '2026-05-13 14:21:22', 1, 'Demo', 'tbl_exa_laboratorio', 'Insert', '15', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_guardar.php', 'Nuevo Registro Orden Laboratorio: 10'),
(415, 1, 1, '2026-05-13 14:21:53', 1, 'Demo', 'tbl_exa_laboratorio', 'Update', '15', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_laboratorio/examen_laboratorio_resultado_guardar.php', 'Actualizo Examen Laboratorio: 15'),
(416, 1, 1, '2026-05-13 14:57:54', 1, 'Demo', 'tbl_exa_especiales', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_especiales/examen_especiales_guardar.php', 'Nuevo Registro Orden Especiales: 7'),
(417, 1, 1, '2026-05-13 14:59:30', 1, 'Demo', 'tbl_exa_especiales', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_especiales/examen_especiales_guardar.php', 'Nuevo Registro Orden Especiales: 7'),
(418, 1, 1, '2026-05-13 15:04:06', 1, 'Demo', 'tbl_exa_especiales', 'Update', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_especiales/examen_especiales_resultado_guardar.php', 'Actualizo Examen Especiales: 4'),
(419, 1, 1, '2026-05-13 15:04:32', 1, 'Demo', 'tbl_exa_especiales', 'Update', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_especiales/examen_especiales_resultado_guardar.php', 'Actualizo Examen Especiales: 4'),
(420, 1, 1, '2026-05-13 15:05:13', 1, 'Demo', 'tbl_exa_biopsia', 'Insert', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_guardar.php', 'Nuevo Registro Orden Biopsia: 7'),
(421, 1, 1, '2026-05-13 15:06:28', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 5'),
(422, 1, 1, '2026-05-13 15:06:30', 1, 'Demo', 'tbl_exa_biopsia', 'Update', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_biopsia/examen_biopsia_resultado_guardar.php', 'Actualizo Examen Biopsia: 5'),
(423, 1, 1, '2026-05-13 15:07:38', 1, 'Demo', 'tbl_exa_micologia_enfer_tropi', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_micologia_tropicales/examen_micologia_tropicales_guardar.php', 'Nuevo Registro Orden Micologia y Enfermedades Tropicales: 7'),
(424, 1, 1, '2026-05-13 15:17:49', 1, 'Demo', 'tbl_exa_micologia_enfer_tropi', 'Update', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_micologia_tropicales/examen_micologia_tropicales_resultado_guardar.php', 'Actualizo Examen Micologia y Enfermedades Tropicales: 3'),
(425, 1, 1, '2026-05-13 15:22:35', 1, 'Demo', 'tbl_exa_micologia_enfer_tropi', 'Update', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_examenes_micologia_tropicales/examen_micologia_tropicales_resultado_guardar.php', 'Actualizo Examen Micologia y Enfermedades Tropicales: 3'),
(426, 1, 1, '2026-05-13 15:26:15', 1, 'Demo', 'tbl_paci_doc_consentimiento', 'Insert', '6', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/consentimiento_paciente_guardar.php', 'Nuevo Registro Consentimiento: 7'),
(427, 1, 1, '2026-05-13 15:28:39', 1, 'Demo', 'tbl_paci_doc_constancia', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/constancia_paciente_guardar.php', 'Nuevo Registro Constancia: 7'),
(428, 1, 1, '2026-05-13 15:29:11', 1, 'Demo', 'tbl_paci_doc_constancia_nino_sano', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/constancia_nino_sano_guardar.php', 'Nuevo Registro Constancia Niño Sano: 7'),
(429, 1, 1, '2026-05-13 15:30:17', 1, 'Demo', 'tbl_paci_doc_informe', 'Insert', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/informe_paciente_guardar.php', 'Nuevo Registro Informe: 7'),
(430, 1, 1, '2026-05-13 15:31:49', 1, 'Demo', 'tbl_paci_doc_referencia', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/referencia_paciente_guardar.php', 'Nuevo Registro Referencia: 7'),
(431, 1, 1, '2026-05-13 15:33:54', 1, 'Demo', 'tbl_paci_doc_reposo', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/reposo_paciente_guardar.php', 'Nuevo Registro Reposo: 7'),
(432, 1, 1, '2026-05-13 15:40:39', 1, 'Demo', 'tbl_paci_doc_reposo', 'Insert', '5', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/reposo_paciente_guardar.php', 'Nuevo Registro Reposo: 10'),
(433, 1, 1, '2026-05-13 15:43:25', 1, 'Demo', 'tbl_paci_doc_recipe', 'Insert', '4', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_recipe_medico/recipe_paciente_guardar.php', 'Nuevo Registro Recipe Medico: 10'),
(434, 1, 1, '2026-05-13 15:44:02', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Update', '0', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_paciente_documentos/vacunas_paciente_guardar.php', 'Actualizo Registro Vacunas: 10'),
(435, 1, 1, '2026-05-13 15:55:32', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(436, 1, 1, '2026-05-13 16:56:10', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(437, 1, 1, '2026-05-13 16:58:09', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(438, 1, 1, '2026-05-13 16:58:42', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(439, 1, 1, '2026-05-13 16:59:44', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(440, 1, 1, '2026-05-13 16:59:58', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(441, 1, 1, '2026-05-13 17:06:18', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(442, 1, 1, '2026-05-14 12:10:11', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(443, 1, 1, '2026-05-14 12:15:58', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(444, 1, 1, '2026-05-14 13:19:21', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(445, 1, 1, '2026-05-14 13:19:40', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(446, 1, 1, '2026-05-14 13:19:52', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(447, 1, 1, '2026-05-14 14:04:35', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(448, 1, 1, '2026-05-14 14:16:46', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(449, 1, 1, '2026-05-14 14:25:45', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '8', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_psiquiatra/paciente_seguimiento_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 10'),
(450, 1, 1, '2026-05-14 14:25:45', 1, 'Demo', 'tbl_paci_segui_psiquiatra', 'Insert', '449', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_psiquiatra/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento General: 10'),
(451, 1, 1, '2026-05-14 14:31:46', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '9', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_psicologo/paciente_seguimiento_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 10'),
(452, 1, 1, '2026-05-14 14:31:46', 1, 'Demo', 'tbl_paci_segui_psicologia', 'Insert', '451', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_psicologo/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento Psicologo: 10'),
(453, 1, 1, '2026-05-14 15:00:06', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '10', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_nota_operatoria_general/paciente_nota_operatoria_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 10'),
(454, 1, 1, '2026-05-14 15:00:06', 1, 'Demo', 'tbl_paci_nota_operatoria', 'Insert', '453', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_nota_operatoria_general/paciente_nota_operatoria_guardar.php', 'Nuevo Registro Nota Operatoria General: 10'),
(455, 1, 1, '2026-05-14 15:18:26', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '11', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 10'),
(456, 1, 1, '2026-05-14 15:18:26', 1, 'Demo', 'tbl_paci_segui_general', 'Insert', '455', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento General: 10'),
(457, 1, 1, '2026-05-14 15:24:08', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '12', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 10'),
(458, 1, 1, '2026-05-14 15:24:08', 1, 'Demo', 'tbl_paci_segui_general', 'Insert', '457', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento General: 10'),
(459, 1, 1, '2026-05-14 15:31:18', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '13', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 10'),
(460, 1, 1, '2026-05-14 15:31:18', 1, 'Demo', 'tbl_paci_segui_general', 'Insert', '459', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento General: 10'),
(461, 1, 1, '2026-05-14 15:33:33', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '14', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 10'),
(462, 1, 1, '2026-05-14 15:33:33', 1, 'Demo', 'tbl_paci_segui_general', 'Insert', '461', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento General: 10'),
(463, 1, 1, '2026-05-14 15:36:40', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '15', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 10'),
(464, 1, 1, '2026-05-14 15:36:40', 1, 'Demo', 'tbl_paci_segui_general', 'Insert', '463', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_seguimiento_general/paciente_seguimiento_guardar.php', 'Nuevo Registro Seguimiento General: 10'),
(465, 1, 1, '2026-05-14 15:38:04', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(466, 1, 1, '2026-05-14 16:49:36', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(467, 1, 1, '2026-05-14 16:51:09', 1, 'Demo', 'aaa_entes', 'Insert', '11', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Paciente: '),
(468, 1, 1, '2026-05-14 16:51:09', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '11', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Registro Primera Vez: '),
(469, 1, 1, '2026-05-14 16:51:09', 1, 'Demo', 'tbl_paci_doc_vacuna', 'Insert', '11', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes/ente_nuevo.php', 'Nuevo Registro Ficha Vacunas: '),
(470, 1, 1, '2026-05-14 16:52:04', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '11', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 11'),
(471, 1, 1, '2026-05-14 16:57:46', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '16', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 11'),
(472, 1, 1, '2026-05-14 16:57:46', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '471', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 11'),
(473, 1, 1, '2026-05-14 16:59:31', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '17', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_nota_operatoria_general/paciente_nota_operatoria_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 11'),
(474, 1, 1, '2026-05-14 16:59:31', 1, 'Demo', 'tbl_paci_nota_operatoria', 'Insert', '473', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_nota_operatoria_general/paciente_nota_operatoria_guardar.php', 'Nuevo Registro Nota Operatoria General: 11'),
(475, 1, 1, '2026-05-14 17:01:28', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '18', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 11'),
(476, 1, 1, '2026-05-14 17:01:28', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '475', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 11'),
(477, 1, 1, '2026-05-14 17:07:07', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '11', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 11'),
(478, 1, 1, '2026-05-14 17:07:55', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '19', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 11'),
(479, 1, 1, '2026-05-14 17:07:55', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '478', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 11'),
(480, 1, 1, '2026-05-14 17:11:22', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '20', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 11'),
(481, 1, 1, '2026-05-14 17:11:22', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '480', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 11'),
(482, 1, 1, '2026-05-14 17:13:53', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(483, 1, 1, '2026-05-14 21:09:19', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(484, 1, 1, '2026-05-14 21:13:06', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1'),
(485, 1, 1, '2026-05-15 01:31:00', 1, NULL, 'aaa_entes', 'Start', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aab_portal/ingresar.php', 'Inicio Sesion del Usuario'),
(486, 1, 1, '2026-05-15 01:31:50', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '21', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 11'),
(487, 1, 1, '2026-05-15 01:31:50', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '486', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 11'),
(488, 1, 1, '2026-05-15 01:39:12', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '22', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 11'),
(489, 1, 1, '2026-05-15 01:39:12', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '488', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 11'),
(490, 1, 1, '2026-05-15 01:46:19', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '23', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 11'),
(491, 1, 1, '2026-05-15 01:46:19', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '490', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 11'),
(492, 1, 1, '2026-05-15 01:48:42', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '24', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 11'),
(493, 1, 1, '2026-05-15 01:48:42', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '492', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 11'),
(494, 1, 1, '2026-05-15 02:00:38', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '25', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 11'),
(495, 1, 1, '2026-05-15 02:00:38', 1, 'Demo', 'tbl_paci_emergencia_triage', 'Insert', '494', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_emergencia/paciente_emergencia_guardar.php', 'Nuevo Registro Emergencia Triage: 11'),
(496, 1, 1, '2026-05-15 02:02:16', 1, 'Demo', 'tbl_paci_agenda_citas', 'Insert', '26', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_nota_operatoria_general/paciente_nota_operatoria_guardar.php', 'Nuevo Registro Cita Medica del Paciente: 11'),
(497, 1, 1, '2026-05-15 02:02:16', 1, 'Demo', 'tbl_paci_nota_operatoria', 'Insert', '496', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_nota_operatoria_general/paciente_nota_operatoria_guardar.php', 'Nuevo Registro Nota Operatoria General: 11'),
(498, 1, 1, '2026-05-15 02:16:00', 1, 'Demo', 'tbl_paci_primera_vez', 'Insert', '3', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/modulo_pacientes_primera_vez/paciente_primera_vez_actualizar.php', 'Actualizo Registro Primera Vez: 3'),
(499, 1, 1, '2026-05-15 02:28:39', 1, 'Demo', 'SinTabla', 'Close', '1', 'demo@demo.ws', 'SinToken', '::1', 'localhost', '/html_public/WebPaciente_Ver_6_Estructurado/aaa_funciones/cierra_sesion.php', 'Sesion Cerrada Por: 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_exa_biopsia`
--

DROP TABLE IF EXISTS `tbl_exa_biopsia`;
CREATE TABLE `tbl_exa_biopsia` (
  `id_exa_biopsia` int NOT NULL COMMENT 'Id de biopsia del Paciente',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `fecha_emision` date DEFAULT NULL,
  `hora_emision` time DEFAULT NULL,
  `numero_orden` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tipo_evaluacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `biopsia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros biopsia',
  `estudio` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Numero',
  `numero_solicitud` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Numero',
  `fecha_resultado` date DEFAULT NULL,
  `hora_resultado` time DEFAULT NULL,
  `especimen_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros biopsia Resultado',
  `diagnostico_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros biopsia Resultado',
  `descrip_microspica_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros biopsia Resultado',
  `referencia_biopsia` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Numero',
  `tipo_biopsia` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Tipo Muestra Biopsia',
  `fecha_1er_dia_regla` date DEFAULT NULL COMMENT 'Primer Dia de la Regla',
  `fecha_21_dias_endometrio` date DEFAULT NULL COMMENT 'Fecha Veintiun Dias Endometrio',
  `fecha_23_dias_endometrio` date DEFAULT NULL COMMENT 'Fecha Veintitres Dias Endometrio',
  `fecha_suger_cuello_otro` date DEFAULT NULL COMMENT 'Fecha Sugerida Biopsia Cuello_Otro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Examenes de biopsia';

--
-- Volcado de datos para la tabla `tbl_exa_biopsia`
--

INSERT INTO `tbl_exa_biopsia` (`id_exa_biopsia`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `fecha_emision`, `hora_emision`, `numero_orden`, `tipo_evaluacion`, `biopsia`, `estudio`, `numero_solicitud`, `fecha_resultado`, `hora_resultado`, `especimen_resultado`, `diagnostico_resultado`, `descrip_microspica_resultado`, `referencia_biopsia`, `tipo_biopsia`, `fecha_1er_dia_regla`, `fecha_21_dias_endometrio`, `fecha_23_dias_endometrio`, `fecha_suger_cuello_otro`) VALUES
(1, 1, 'Demo', 1, '2026-05-06 12:35:45', 1, '2026-05-07 01:03:45', 1, 'Activo', 2, 0, 3, 13, 6, 0.260, '2026-05-06', '08:35:30', '2026-11', NULL, 'Tumor de Biopsia', '2026-11-111', NULL, '2026-05-06', '21:02:44', 'ESESES', 'DIDIDI', 'DEDEDE', '5478121', NULL, NULL, NULL, NULL, NULL),
(2, 1, 'Demo', 1, '2026-05-06 18:46:11', 1, '2026-05-07 01:05:59', 1, 'Activo', 3, 37, 9, 1972, 21, 37.805, '2026-05-06', '14:45:27', '2026-13', NULL, 'Biopsia de glandula', '', NULL, '2026-05-06', '21:05:57', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(3, 1, 'Demo', 1, '2026-05-10 18:31:54', 1, NULL, 0, 'Activo', 7, 24, 2, 1263, 18, 24.217, '2026-05-10', '14:31:24', '45678', NULL, 'Lunar de espalda Baja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 'Demo', 1, '2026-05-10 19:54:00', 1, NULL, 0, 'Activo', 3, 37, 9, 3, 3, 37.816, '2026-05-10', '15:53:33', '909090', NULL, 'Revision Biopsia 121212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 'Demo', 1, '2026-05-13 15:05:13', 1, '2026-05-13 15:06:30', 1, 'Activo', 7, 24, 2, 3, 2, 24.225, '2026-05-13', '11:04:52', '2344', NULL, 'Biopsia Polipos', '12345', NULL, '2026-05-13', '11:06:28', 'blando', 'presencia de plaquetas', 'oscura', 'Quirofano', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_exa_biopsia_imagenes`
--

DROP TABLE IF EXISTS `tbl_exa_biopsia_imagenes`;
CREATE TABLE `tbl_exa_biopsia_imagenes` (
  `id_exa_biopsia_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_exa_biopsia` int NOT NULL DEFAULT '0' COMMENT 'La Identificacion de la Orden de Radiologia',
  `ruta_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_exa_especiales`
--

DROP TABLE IF EXISTS `tbl_exa_especiales`;
CREATE TABLE `tbl_exa_especiales` (
  `id_exa_especiales` int NOT NULL COMMENT 'Id de Laboratorio del Paciente',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `fecha_emision` date DEFAULT NULL,
  `hora_emision` time DEFAULT NULL,
  `numero_orden` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tipo_evaluacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `endodigessupegastro1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `endodigessupegastro1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'RX Torax P-A Resultado',
  `endodigesinfecolono1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `endodigesinfecolono1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `ecoabdomi1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `ecoabdomi1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'RX Torax P-A Resultado',
  `evacardipreope1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Abdomen A-P',
  `evacardipreope1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'RX Abdomen A-PResultado',
  `ecomamario1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ecosonograma Mamaria',
  `ecomamario1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Ecosonograma Mamaria Resultado',
  `ecopelvico1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ecosonograma Pelvico',
  `ecopelvico1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Ecosonograma Pelvico Resultado',
  `elctroencefalograma` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `elctroencefalograma_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `densitometria_osea` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `densitometria_osea_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `press_miembro_superior` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `press_miembro_superior_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `press_miembro_inferior` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `press_miembro_inferior_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `electromiografia_miembro_superior` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `electromiografia_miembro_superior_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `electromiografia_miembro_inferior` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `electromiografia_miembro_inferior_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `gammagrama` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `gammagrama_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `otrosexamenespecial1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `otrosexamenespecial1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Examenes Especiales';

--
-- Volcado de datos para la tabla `tbl_exa_especiales`
--

INSERT INTO `tbl_exa_especiales` (`id_exa_especiales`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `fecha_emision`, `hora_emision`, `numero_orden`, `tipo_evaluacion`, `endodigessupegastro1`, `endodigessupegastro1resultado`, `endodigesinfecolono1`, `endodigesinfecolono1resultado`, `ecoabdomi1`, `ecoabdomi1resultado`, `evacardipreope1`, `evacardipreope1resultado`, `ecomamario1`, `ecomamario1resultado`, `ecopelvico1`, `ecopelvico1resultado`, `elctroencefalograma`, `elctroencefalograma_resultado`, `densitometria_osea`, `densitometria_osea_resultado`, `press_miembro_superior`, `press_miembro_superior_resultado`, `press_miembro_inferior`, `press_miembro_inferior_resultado`, `electromiografia_miembro_superior`, `electromiografia_miembro_superior_resultado`, `electromiografia_miembro_inferior`, `electromiografia_miembro_inferior_resultado`, `gammagrama`, `gammagrama_resultado`, `otrosexamenespecial1`, `otrosexamenespecial1resultado`) VALUES
(1, 1, 'Demo', 1, '2026-05-07 09:27:25', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 22, 37.808, '2026-05-07', '05:26:48', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'SI', NULL, '', NULL, '', NULL, '', NULL, 'SI', NULL, '', NULL, '', NULL, '', NULL, 'Uno Mas...', NULL),
(2, 1, 'Demo', 1, '2026-05-07 09:43:06', 1, '2026-05-07 10:27:01', 1, 'Activo', 3, 37, 9, 1972, 22, 37.808, '2026-05-07', '05:33:10', NULL, NULL, '', '', '', '', '', '', '', '', 'SI', 'MMM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'RX de espalda alta.', 'DDD'),
(3, 1, 'Demo', 1, '2026-05-13 14:57:54', 1, NULL, 0, 'Activo', 7, 24, 2, 3, 2, 24.225, '2026-05-13', '10:56:13', NULL, NULL, '', NULL, 'SI', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(4, 1, 'Demo', 1, '2026-05-13 14:59:30', 1, '2026-05-13 15:04:32', 1, 'Activo', 7, 24, 2, 3, 2, 24.225, '2026-05-13', '10:57:55', NULL, NULL, 'SI', 'Presencia de Polipos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_exa_especiales_imagenes`
--

DROP TABLE IF EXISTS `tbl_exa_especiales_imagenes`;
CREATE TABLE `tbl_exa_especiales_imagenes` (
  `id_exa_especiales_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_exa_especiales` int NOT NULL DEFAULT '0' COMMENT 'La Identificacion de la Orden de Espaeciales',
  `ruta_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Fotos de la Orden de Especiales';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_exa_laboratorio`
--

DROP TABLE IF EXISTS `tbl_exa_laboratorio`;
CREATE TABLE `tbl_exa_laboratorio` (
  `id_exa_laboratorio` int NOT NULL COMMENT 'Id de Laboratorio del Paciente',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `fecha_emision` date DEFAULT NULL,
  `hora_emision` time DEFAULT NULL,
  `numero_orden` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tipo_evaluacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `hematologiacompleta1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `hemoglobina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `hemoglobina1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `hemoglobina1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `hematocrito1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `hematocrito1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `hematocrito1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `cuenta1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `cuenta1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `cuenta1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `formula1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `formula1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `formula1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `plaquetas1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `plaquetas1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `plaquetas1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `tiemposangria1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `tiemposangria1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `tiemposangria1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `tiempocoagulacion1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `tiempocoagulacion1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `tiempocoagulacion1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `pt1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `pt1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `pt1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `ptt1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `ptt1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `ptt1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `descripfrotis1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `descripfrotis1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `descripfrotis1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `gruposanguineo1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `gruposanguineo1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `gruposanguineo1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `eritrosedimentacion1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `eritrosedimentacion1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `eritrosedimentacion1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `inr1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `inr1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `inr1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `coombsdirecto1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `coombsdirecto1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `coombsdirecto1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `coombsindirecto1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `coombsindirecto1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `coombsindirecto1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `eosinofilos1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `eosinofilos1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `eosinofilos1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `chcm1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `chcm1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `chcm1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `hcm1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `hcm1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `hcm1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `vcm1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion de Laboratorio',
  `vcm1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `vcm1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `leucocito1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `leucocito1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `leucocito1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `segmentado1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `segmentado1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `segmentado1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `linfocito1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `linfocito1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `linfocito1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `glicemia1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `glicemia1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `glicemia1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `urea1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `urea1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `urea1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `creatinina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `creatinina1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `creatinina1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `colesterol1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `colesterol1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `colesterol1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `triglicerido1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `triglicerido1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `triglicerido1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `acidourico1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `acidourico1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `acidourico1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `hdlcolesterol1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `hdlcolesterol1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `hdlcolesterol1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `ldlcolesterol1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `ldlcolesterol1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `ldlcolesterol1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `vldlcolesterol1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `vldlcolesterol1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `vldlcolesterol1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `bilirrubinatotal1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `bilirrubinatotal1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `bilirrubinatotal1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `bilirrubinafracion1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `bilirrubinafracion1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `bilirrubinafracion1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `tgo1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `tgo1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `tgo1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `tgp1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `tgp1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `tgp1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `calcio1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `calcio1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `calcio1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `fosforo1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `fosforo1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `fosforo1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `proteinastotal1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `proteinastotal1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `proteinastotal1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `proteinasfraccion1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `proteinasfraccion1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `proteinasfraccion1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `fosfatasaalcalina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `fosfatasaalcalina1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `fosfatasaalcalina1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `amilasa1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `amilasa1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `amilasa1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `potasio1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `potasio1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `potasio1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `sodio1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `sodio1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `sodio1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `cloro1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `cloro1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `cloro1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `hierro1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `hierro1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `hierro1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `insulayuna1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `insulayuna1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `insulayuna1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `orinageneral1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `colororina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `olororina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `aspectorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `densidadorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `phporina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `glucosaorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `hemogloborina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `nitritoorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `proteinaorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `bilirrubinaorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `urobilinogenoorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `pigbiliarorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `cuerposcetonicorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `leucocitoorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `hematiesorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `bacteriasorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `celepitelialorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `mucinaorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `cristalesorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `cilindrosorina1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `otrosorina1` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `creatininaorina24h1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `creatininaorina24h1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `creatininaorina24h1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `ureaorina24h1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `ureaorina24h1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `ureaorina24h1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `proteinuria24h1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `proteinuria24h1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `proteinuria24h1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `calcioorina24h1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `calcioorina24h1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `calcioorina24h1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `fosforoorina24h1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `fosforoorina24h1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `fosforoorina24h1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `acidouricoorina24h1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `acidouricoorina24h1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `acidouricoorina24h1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `relacioncalciocreatinina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `relacioncalciocreatinina1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `relacioncalciocreatinina1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `relacionacidouricocreatinina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `relacionacidouricocreatinina1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `relacionacidouricocreatinina1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `depuracioncreatinina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `depuracioncreatinina1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `depuracioncreatinina1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `heces1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `colorheces1` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `olorheces1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `phheces1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `aspectoheces1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `consistenciaheces1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `sangreheces1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `mocoheces1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `protozheces1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `helmintosheces1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `observacionesheces1` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `investoxiuros1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `investoxiuros1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Resultado de Laboratorio',
  `sangreocultaheces1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `sangreocultaheces1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Resultado de Laboratorio',
  `vdrl1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `vdrl1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `vdrl1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `proteinacreactiva1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `proteinacreactiva1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `proteinacreactiva1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `ratest1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `ratest1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `ratest1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `asto1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `asto1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `asto1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `hiv1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `hiv1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `hiv1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `toxoplasmosis1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `toxoplasmosis1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `toxoplasmosis1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `monotest1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `monotest1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `monotest1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `ck1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `ck1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `ck1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `ckmb1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `ckmb1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `ckmb1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `gram1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `gram1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `gram1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `bk1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `bk1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `bk1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `embarazosangre1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `embarazosangre1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `embarazosangre1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `psa1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `psa1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `psa1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `hemoglobinaglicosilada1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `hemoglobinaglicosilada1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `hemoglobinaglicosilada1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `cultivos1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Resultado Laboratorio',
  `cultivos1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Escala Laboratorio',
  `otroslaboratorio1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes de Laboratorio',
  `otroslaboratorio1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Resultado de Laboratorio',
  `observacioneslaboratorio1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Observaciones de Laboratorio',
  `velsegmglob1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `velsegmglob1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `velsegmglob1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `leucogramafecal1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `leucogramafecal1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Resultado de Laboratorio',
  `phheces2` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `phheces2resultado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `adenov_rotav1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `adenov_rotav1resultado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `criptosporidium1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `criptosporidium1resultado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `azucaresreductores1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `azucaresreductores1resultado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `sudamiii1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `sudamiii1resultado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `parasitos1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `parasitos1resultado` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `electrolitsericos1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `electrolitsericos1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Resultado Laboratorio',
  `relacionalbuminacreatinina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `relacionalbuminacreatinina1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `relacionalbuminacreatinina1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `electrolitosurinarios1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `electrolitosurinarios1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Resultado Laboratorio',
  `gasesvenosos1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `gasesvenosos1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Resultado Laboratorio',
  `proteina_t1` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `proteina_t1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `proteina_t1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `proteina_fx1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `proteina_fx1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `proteina_fx1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `bt1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `bt1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `bt1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `bfx1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `bfx1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `bfx1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `transaminasas1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `transaminasas1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `transaminasas1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `detplomoserico1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `detplomoserico1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Resultado Laboratorio',
  `detmercurioserico1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `detmercurioserico1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Resultado Laboratorio',
  `pesquisaneonatal1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `pesquisaneonatal1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Resultado Laboratorio',
  `iga_secretora1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `iga_secretora1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `iga_secretora1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `ig_e1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `ig_e1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resltado Laboratorio',
  `ig_e1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `ig_m1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `ig_m1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `ig_m1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `ig_g1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `ig_g1valor` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Resultado Laboratorio',
  `ig_g1escala` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Escala Laboratorio',
  `perfiltiroideo1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Seleccion Laboratorio',
  `perfiltiroideo1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Resultado Laboratorio',
  `glicemiaayunas1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `glicemiaayunas1valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `glicemiaayunas1escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `colesteroltotal1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `colesteroltotal1valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `colesteroltotal1escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `colesterolfracion1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `colesterolfracion1valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `colesterolfracion1escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `insulinabasal1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `insulinabasal1valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `insulinabasal1escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `ig_gcuantif1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `ig_gcuantif1valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `ig_gcuantif1escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `ig_mcuantif1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `ig_mcuantif1valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `ig_mcuantif1escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fsh1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fsh1valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fsh1escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `lh1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `lh1valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `lh1escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tsh1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tsh1valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tsh1escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `t31` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `t31valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `t31escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `t41` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `t41valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `t41escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `estrogenoserico1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `estrogenoserico1valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `estrogenoserico1escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `progesteronaserica1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `progesteronaserica1valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `progesteronaserica1escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `prolactinaseriada1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `prolactinaseriada1valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `prolactinaseriada1escala` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Examenes de Laboratorio';

--
-- Volcado de datos para la tabla `tbl_exa_laboratorio`
--

INSERT INTO `tbl_exa_laboratorio` (`id_exa_laboratorio`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `fecha_emision`, `hora_emision`, `numero_orden`, `tipo_evaluacion`, `hematologiacompleta1`, `hemoglobina1`, `hemoglobina1valor`, `hemoglobina1escala`, `hematocrito1`, `hematocrito1valor`, `hematocrito1escala`, `cuenta1`, `cuenta1valor`, `cuenta1escala`, `formula1`, `formula1valor`, `formula1escala`, `plaquetas1`, `plaquetas1valor`, `plaquetas1escala`, `tiemposangria1`, `tiemposangria1valor`, `tiemposangria1escala`, `tiempocoagulacion1`, `tiempocoagulacion1valor`, `tiempocoagulacion1escala`, `pt1`, `pt1valor`, `pt1escala`, `ptt1`, `ptt1valor`, `ptt1escala`, `descripfrotis1`, `descripfrotis1valor`, `descripfrotis1escala`, `gruposanguineo1`, `gruposanguineo1valor`, `gruposanguineo1escala`, `eritrosedimentacion1`, `eritrosedimentacion1valor`, `eritrosedimentacion1escala`, `inr1`, `inr1valor`, `inr1escala`, `coombsdirecto1`, `coombsdirecto1valor`, `coombsdirecto1escala`, `coombsindirecto1`, `coombsindirecto1valor`, `coombsindirecto1escala`, `eosinofilos1`, `eosinofilos1valor`, `eosinofilos1escala`, `chcm1`, `chcm1valor`, `chcm1escala`, `hcm1`, `hcm1valor`, `hcm1escala`, `vcm1`, `vcm1valor`, `vcm1escala`, `leucocito1`, `leucocito1valor`, `leucocito1escala`, `segmentado1`, `segmentado1valor`, `segmentado1escala`, `linfocito1`, `linfocito1valor`, `linfocito1escala`, `glicemia1`, `glicemia1valor`, `glicemia1escala`, `urea1`, `urea1valor`, `urea1escala`, `creatinina1`, `creatinina1valor`, `creatinina1escala`, `colesterol1`, `colesterol1valor`, `colesterol1escala`, `triglicerido1`, `triglicerido1valor`, `triglicerido1escala`, `acidourico1`, `acidourico1valor`, `acidourico1escala`, `hdlcolesterol1`, `hdlcolesterol1valor`, `hdlcolesterol1escala`, `ldlcolesterol1`, `ldlcolesterol1valor`, `ldlcolesterol1escala`, `vldlcolesterol1`, `vldlcolesterol1valor`, `vldlcolesterol1escala`, `bilirrubinatotal1`, `bilirrubinatotal1valor`, `bilirrubinatotal1escala`, `bilirrubinafracion1`, `bilirrubinafracion1valor`, `bilirrubinafracion1escala`, `tgo1`, `tgo1valor`, `tgo1escala`, `tgp1`, `tgp1valor`, `tgp1escala`, `calcio1`, `calcio1valor`, `calcio1escala`, `fosforo1`, `fosforo1valor`, `fosforo1escala`, `proteinastotal1`, `proteinastotal1valor`, `proteinastotal1escala`, `proteinasfraccion1`, `proteinasfraccion1valor`, `proteinasfraccion1escala`, `fosfatasaalcalina1`, `fosfatasaalcalina1valor`, `fosfatasaalcalina1escala`, `amilasa1`, `amilasa1valor`, `amilasa1escala`, `potasio1`, `potasio1valor`, `potasio1escala`, `sodio1`, `sodio1valor`, `sodio1escala`, `cloro1`, `cloro1valor`, `cloro1escala`, `hierro1`, `hierro1valor`, `hierro1escala`, `insulayuna1`, `insulayuna1valor`, `insulayuna1escala`, `orinageneral1`, `colororina1`, `olororina1`, `aspectorina1`, `densidadorina1`, `phporina1`, `glucosaorina1`, `hemogloborina1`, `nitritoorina1`, `proteinaorina1`, `bilirrubinaorina1`, `urobilinogenoorina1`, `pigbiliarorina1`, `cuerposcetonicorina1`, `leucocitoorina1`, `hematiesorina1`, `bacteriasorina1`, `celepitelialorina1`, `mucinaorina1`, `cristalesorina1`, `cilindrosorina1`, `otrosorina1`, `creatininaorina24h1`, `creatininaorina24h1valor`, `creatininaorina24h1escala`, `ureaorina24h1`, `ureaorina24h1valor`, `ureaorina24h1escala`, `proteinuria24h1`, `proteinuria24h1valor`, `proteinuria24h1escala`, `calcioorina24h1`, `calcioorina24h1valor`, `calcioorina24h1escala`, `fosforoorina24h1`, `fosforoorina24h1valor`, `fosforoorina24h1escala`, `acidouricoorina24h1`, `acidouricoorina24h1valor`, `acidouricoorina24h1escala`, `relacioncalciocreatinina1`, `relacioncalciocreatinina1valor`, `relacioncalciocreatinina1escala`, `relacionacidouricocreatinina1`, `relacionacidouricocreatinina1valor`, `relacionacidouricocreatinina1escala`, `depuracioncreatinina1`, `depuracioncreatinina1valor`, `depuracioncreatinina1escala`, `heces1`, `colorheces1`, `olorheces1`, `phheces1`, `aspectoheces1`, `consistenciaheces1`, `sangreheces1`, `mocoheces1`, `protozheces1`, `helmintosheces1`, `observacionesheces1`, `investoxiuros1`, `investoxiuros1resultado`, `sangreocultaheces1`, `sangreocultaheces1resultado`, `vdrl1`, `vdrl1valor`, `vdrl1escala`, `proteinacreactiva1`, `proteinacreactiva1valor`, `proteinacreactiva1escala`, `ratest1`, `ratest1valor`, `ratest1escala`, `asto1`, `asto1valor`, `asto1escala`, `hiv1`, `hiv1valor`, `hiv1escala`, `toxoplasmosis1`, `toxoplasmosis1valor`, `toxoplasmosis1escala`, `monotest1`, `monotest1valor`, `monotest1escala`, `ck1`, `ck1valor`, `ck1escala`, `ckmb1`, `ckmb1valor`, `ckmb1escala`, `gram1`, `gram1valor`, `gram1escala`, `bk1`, `bk1valor`, `bk1escala`, `embarazosangre1`, `embarazosangre1valor`, `embarazosangre1escala`, `psa1`, `psa1valor`, `psa1escala`, `hemoglobinaglicosilada1`, `hemoglobinaglicosilada1valor`, `hemoglobinaglicosilada1escala`, `cultivos1`, `cultivos1resultado`, `otroslaboratorio1`, `otroslaboratorio1resultado`, `observacioneslaboratorio1`, `velsegmglob1`, `velsegmglob1valor`, `velsegmglob1escala`, `leucogramafecal1`, `leucogramafecal1resultado`, `phheces2`, `phheces2resultado`, `adenov_rotav1`, `adenov_rotav1resultado`, `criptosporidium1`, `criptosporidium1resultado`, `azucaresreductores1`, `azucaresreductores1resultado`, `sudamiii1`, `sudamiii1resultado`, `parasitos1`, `parasitos1resultado`, `electrolitsericos1`, `electrolitsericos1resultado`, `relacionalbuminacreatinina1`, `relacionalbuminacreatinina1valor`, `relacionalbuminacreatinina1escala`, `electrolitosurinarios1`, `electrolitosurinarios1resultado`, `gasesvenosos1`, `gasesvenosos1resultado`, `proteina_t1`, `proteina_t1valor`, `proteina_t1escala`, `proteina_fx1`, `proteina_fx1valor`, `proteina_fx1escala`, `bt1`, `bt1valor`, `bt1escala`, `bfx1`, `bfx1valor`, `bfx1escala`, `transaminasas1`, `transaminasas1valor`, `transaminasas1escala`, `detplomoserico1`, `detplomoserico1resultado`, `detmercurioserico1`, `detmercurioserico1resultado`, `pesquisaneonatal1`, `pesquisaneonatal1resultado`, `iga_secretora1`, `iga_secretora1valor`, `iga_secretora1escala`, `ig_e1`, `ig_e1valor`, `ig_e1escala`, `ig_m1`, `ig_m1valor`, `ig_m1escala`, `ig_g1`, `ig_g1valor`, `ig_g1escala`, `perfiltiroideo1`, `perfiltiroideo1resultado`, `glicemiaayunas1`, `glicemiaayunas1valor`, `glicemiaayunas1escala`, `colesteroltotal1`, `colesteroltotal1valor`, `colesteroltotal1escala`, `colesterolfracion1`, `colesterolfracion1valor`, `colesterolfracion1escala`, `insulinabasal1`, `insulinabasal1valor`, `insulinabasal1escala`, `ig_gcuantif1`, `ig_gcuantif1valor`, `ig_gcuantif1escala`, `ig_mcuantif1`, `ig_mcuantif1valor`, `ig_mcuantif1escala`, `fsh1`, `fsh1valor`, `fsh1escala`, `lh1`, `lh1valor`, `lh1escala`, `tsh1`, `tsh1valor`, `tsh1escala`, `t31`, `t31valor`, `t31escala`, `t41`, `t41valor`, `t41escala`, `estrogenoserico1`, `estrogenoserico1valor`, `estrogenoserico1escala`, `progesteronaserica1`, `progesteronaserica1valor`, `progesteronaserica1escala`, `prolactinaseriada1`, `prolactinaseriada1valor`, `prolactinaseriada1escala`) VALUES
(1, 1, 'Demo', 1, '2026-04-28 13:57:46', 1, NULL, NULL, 'Activo', 2, 0, 2, 12, 28, 0.238, NULL, NULL, NULL, NULL, 'SI', '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'SI', NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', 'SI', NULL, NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 'Demo', 1, '2026-04-28 15:14:39', 1, '2026-05-06 00:38:04', 1, 'Activo', 2, 0, 2, 12, 28, 0.238, NULL, NULL, NULL, NULL, 'SI', '', '', '11,5 - 15,5', '', '42.68', '34 - 47', '', '', '', '', '', '', '', '', '150000 - 450000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '< 3%', '', '39.87', '32 - 36', '', '', '', '', '', '', '', '', '4000 - 12000', '', '', '40% - 60%', '', '', '35% - 60%', 'SI', '', '60 - 110', 'SI', '', '7 - 22', 'SI', '', '0,4 - 0,7', 'SI', '', '< 170', 'SI', '', '35 - 100', 'SI', '', '2,5 - 5,5', 'SI', '', '', 'SI', '', '< 110', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 'Demo', 1, '2026-04-29 21:22:37', 1, NULL, 0, 'Activo', 3, 37, 9, 1971, 13, 37.786, NULL, NULL, NULL, NULL, 'SI', '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'SI', NULL, '', NULL, NULL, 'SI', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', 'SI', NULL, NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, '', NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 'Demo', 1, '2026-05-01 01:51:17', 1, '2026-05-01 02:27:26', 1, 'Activo', 3, 37, 9, 1971, 14, 37.789, NULL, NULL, NULL, NULL, 'SI', 'SI', '', '11,5 - 15,5', 'SI', '', '34 - 47', '', '', '', '', '', '', 'SI', '', '150000 - 450000', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '< 3%', 'SI', '', '32 - 36', 'SI', '', '', 'SI', '', '', 'SI', '', '4000 - 12000', 'SI', '', '40% - 60%', 'SI', '', '35% - 60%', 'SI', '', '60 - 110', 'SI', '', '7 - 22', 'SI', '', '0,4 - 0,7', 'SI', '', '< 170', 'SI', '', '35 - 100', 'SI', '', '2,5 - 5,5', 'SI', '', '', 'SI', '', '< 110', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '8,8 - 10,8', 'SI', '', '', 'SI', '', '≥ 5', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '50 - 120', 'SI', '', '4 - 16,7', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', 'SI', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', 'SI', '      ', 'SI', '      ', 'SI', '', '', 'SI', '', '', '', '', '', 'SI', '', '', 'SI', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', 'Prueba para Miscelanios...', '      ', '   Prueba para Observaciones...   ', 'SI', '', '', 'SI', '      ', 'SI', '      ', 'SI', '      ', 'SI', '      ', 'SI', '      ', 'SI', '      ', 'SI', '      ', 'SI', '      ', 'SI', '', '', 'SI', '      ', 'SI', '      ', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '      ', 'SI', '      ', 'SI', '      ', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '', '', 'SI', '      ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 'Demo', 1, '2026-05-01 02:29:37', 1, '2026-05-01 10:57:24', 1, 'Activo', 3, 37, 9, 1971, 14, 37.789, NULL, NULL, NULL, NULL, 'SI', '', '17', '11,5 - 15,5', '', '18', '34 - 47', '', '', '', '', '', '', '', '', '150000 - 450000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '< 3%', '', '33', '32 - 36', '', '', '', '', '', '', '', '', '4000 - 12000', '', '', '40% - 60%', '', '', '35% - 60%', 'SI', '', '60 - 110', 'SI', '', '7 - 22', 'SI', '', '0,4 - 0,7', 'SI', '', '< 170', 'SI', '', '35 - 100', 'SI', '3.2', '2,5 - 5,5', 'SI', '', '', 'SI', '', '< 110', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 'Demo', 1, '2026-05-01 02:43:20', 1, '2026-05-01 02:53:57', 1, 'Activo', 3, 37, 9, 1971, 14, 37.789, NULL, NULL, NULL, NULL, '', 'SI', '25', '11,5 - 15,5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 'Demo', 1, '2026-05-04 09:38:10', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 19, 37.800, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, 'SI', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, 'Falta Uno.', NULL, 'Sin Observaciones.', '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 'Demo', 1, '2026-05-04 09:46:45', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 19, 37.800, '1000-01-01', '00:00:00', NULL, NULL, 'SI', '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 'Demo', 1, '2026-05-04 09:52:57', 1, '2026-05-04 09:53:25', 1, 'Activo', 3, 37, 9, 1972, 19, 37.800, '2026-05-04', '05:52:48', NULL, NULL, 'SI', '', '', '11,5 - 15,5', '', '', '34 - 47', '', '', '', '', '', '', '', '', '150000 - 450000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '< 3%', '', '', '32 - 36', '', '', '', '', '', '', '', '', '4000 - 12000', '', '', '40% - 60%', '', '', '35% - 60%', 'SI', '', '60 - 110', 'SI', '', '7 - 22', 'SI', '', '0,4 - 0,7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '  ', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', 'SI', '  ', 'SI', '  ', 'SI', '  ', 'SI', '  ', 'SI', '  ', 'SI', '  ', 'SI', '  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, 'Demo', 1, '2026-05-04 14:16:06', 1, '2026-05-04 14:16:41', 1, 'Activo', 3, 37, 9, 1972, 19, 37.800, '2026-05-04', '10:15:46', NULL, NULL, 'SI', '', '16', '11,5 - 15,5', '', '', '34 - 47', '', '', '', '', '', '', '', '', '150000 - 450000', '', '', '', '', '', '', 'SI', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '< 3%', '', '', '32 - 36', '', '', '', '', '', '', '', '', '4000 - 12000', '', '', '40% - 60%', '', '', '35% - 60%', 'SI', '', '60 - 110', 'SI', '', '7 - 22', 'SI', '', '0,4 - 0,7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 'Demo', 1, '2026-05-06 00:06:58', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 20, 37.802, '2026-05-05', '20:06:46', NULL, NULL, '', '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, 'SI', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'SI', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 'SI', NULL, 'SI', NULL, NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, 'SI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, 'Demo', 1, '2026-05-06 00:09:08', 1, '2026-05-06 02:56:13', 1, 'Activo', 3, 37, 9, 1972, 20, 37.802, '2026-05-05', '20:08:59', NULL, NULL, 'SI', '', '', '11,5 - 15,5', '', '', '34 - 47', '', '', '', '', '', '', '', '', '150000 - 450000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '< 3%', '', '', '32 - 36', '', '', '', '', '', '', '', '', '4000 - 12000', '', '', '40% - 60%', '', '', '35% - 60%', 'SI', '', '60 - 110', 'SI', '', '7 - 22', 'SI', '', '0,4 - 0,7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '  ', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', 'SI', '  ', 'SI', '  ', 'SI', '  ', 'SI', '  ', 'SI', '  ', 'SI', '  ', 'SI', '  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, 'Demo', 1, '2026-05-06 00:09:51', 1, '2026-05-06 00:25:28', 1, 'Activo', 2, 0, 3, 13, 5, 0.257, '2026-05-05', '20:09:43', NULL, NULL, 'SI', '', '', '11,5 - 15,5', '', '36.54', '34 - 47', '', '', '', '', '', '', '', '', '150000 - 450000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '< 3%', '', '39.87', '32 - 36', '', '', '', '', '', '', '', '7896.12', '4000 - 12000', '', '', '40% - 60%', '', '', '35% - 60%', 'SI', '', '60 - 110', 'SI', '', '7 - 22', 'SI', '', '0,4 - 0,7', 'SI', '', '< 170', 'SI', '', '35 - 100', 'SI', '', '2,5 - 5,5', 'SI', '', '', 'SI', '', '< 110', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, 'Demo', 1, '2026-05-07 13:11:08', 1, '2026-05-07 13:11:26', 1, 'Activo', 7, 24, 2, 1263, 15, 24.209, '2026-05-07', '09:10:56', NULL, NULL, 'SI', '', '14', '11,5 - 15,5', '', '', '34 - 47', '', '', '', '', '', '', '', '', '150000 - 450000', '', '', '', '', '', '', 'SI', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '< 3%', '', '', '32 - 36', '', '', '', '', '', '', '', '', '4000 - 12000', '', '', '40% - 60%', '', '', '35% - 60%', 'SI', '', '60 - 110', 'SI', '', '7 - 22', 'SI', '', '0,4 - 0,7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1, 'Demo', 1, '2026-05-13 14:21:22', 1, '2026-05-13 14:21:53', 1, 'Activo', 10, 30, 2, 0, 6, 30.183, '2026-05-13', '10:20:39', NULL, NULL, 'SI', '', '13', '11,5 - 15,5', '', '', '34 - 47', '', '', '', '', '', '', '', '', '150000 - 450000', '', '', '', '', '', '', 'SI', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '< 3%', '', '', '32 - 36', '', '', '', '', '', '', '', '', '4000 - 12000', '', '', '40% - 60%', '', '', '35% - 60%', 'SI', '', '60 - 110', 'SI', '', '7 - 22', 'SI', '', '0,4 - 0,7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_exa_laboratorio_imagenes`
--

DROP TABLE IF EXISTS `tbl_exa_laboratorio_imagenes`;
CREATE TABLE `tbl_exa_laboratorio_imagenes` (
  `id_exa_laboratorio_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_exa_laboratorio` int NOT NULL DEFAULT '0' COMMENT 'La Identificacion de la Orden de Radiologia',
  `ruta_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Fotos de la Orden de Radiologia';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_exa_micologia_enfer_tropi`
--

DROP TABLE IF EXISTS `tbl_exa_micologia_enfer_tropi`;
CREATE TABLE `tbl_exa_micologia_enfer_tropi` (
  `id_exa_micologia_enfer_tropi` int NOT NULL COMMENT 'Id de Laboratorio del Paciente',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `fecha_emision` date DEFAULT NULL,
  `hora_emision` time DEFAULT NULL,
  `numero_orden` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tipo_evaluacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `unadepie1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `unadepie1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `unadepie1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `planta1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `planta1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `planta1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `cuerocabelludo1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `cuerocabelludo1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `cuerocabelludo1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `crural1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `crural1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `crural1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `unademano1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `unademano1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `unademano1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `interdigitaldepie1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `interdigitaldepie1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `interdigitaldepie1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `cuerpo1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `cuerpo1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `cuerpo1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `micologiaotro1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `micologiaotro1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `micologiaotro1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `exacatyluzwood1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `exacatyluzwood1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `exacatyluzwood1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `unade1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `unade1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `unade1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `bacteriologiaotro1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `bacteriologiaotro1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `bacteriologiaotro1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `histoplasmina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `histoplasmina1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `histoplasmina1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `paracoceidioidina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `paracoceidioidina1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `paracoceidioidina1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `candidina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `candidina1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `candidina1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `esporotriquina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `esporotriquina1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `esporotriquina1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `coccidioidina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `coccidioidina1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `coccidioidina1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `leishmanina1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `leishmanina1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `leishmanina1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `inmunodifusiondoble1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `inmunodifusiondoble1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `inmunodifusiondoble1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `fototerauvbnarrowband1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `fototerauvbnarrowband1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `fototerauvbnarrowband1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `estusecreuretral1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `estusecreuretral1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `estusecreuretral1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `estusecrevaginal1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `estusecrevaginal1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `estusecrevaginal1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `frotisulcerascolgiemsa1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `frotisulcerascolgiemsa1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `frotisulcerascolgiemsa1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `frotislinfaziehlheelsen1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `frotislinfaziehlheelsen1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `frotislinfaziehlheelsen1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `frotiscontevesiculartesttzanck1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `frotiscontevesiculartesttzanck1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `frotiscontevesiculartesttzanck1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `registrofotografico1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `registrofotografico1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `registrofotografico1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado',
  `miscelaniosotros1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `miscelaniosotros1detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales',
  `miscelaniosotros1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Examenes Especiales Resultado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Examenes Micologia y Enefermedades Tropicales';

--
-- Volcado de datos para la tabla `tbl_exa_micologia_enfer_tropi`
--

INSERT INTO `tbl_exa_micologia_enfer_tropi` (`id_exa_micologia_enfer_tropi`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `fecha_emision`, `hora_emision`, `numero_orden`, `tipo_evaluacion`, `unadepie1`, `unadepie1detalle`, `unadepie1resultado`, `planta1`, `planta1detalle`, `planta1resultado`, `cuerocabelludo1`, `cuerocabelludo1detalle`, `cuerocabelludo1resultado`, `crural1`, `crural1detalle`, `crural1resultado`, `unademano1`, `unademano1detalle`, `unademano1resultado`, `interdigitaldepie1`, `interdigitaldepie1detalle`, `interdigitaldepie1resultado`, `cuerpo1`, `cuerpo1detalle`, `cuerpo1resultado`, `micologiaotro1`, `micologiaotro1detalle`, `micologiaotro1resultado`, `exacatyluzwood1`, `exacatyluzwood1detalle`, `exacatyluzwood1resultado`, `unade1`, `unade1detalle`, `unade1resultado`, `bacteriologiaotro1`, `bacteriologiaotro1detalle`, `bacteriologiaotro1resultado`, `histoplasmina1`, `histoplasmina1detalle`, `histoplasmina1resultado`, `paracoceidioidina1`, `paracoceidioidina1detalle`, `paracoceidioidina1resultado`, `candidina1`, `candidina1detalle`, `candidina1resultado`, `esporotriquina1`, `esporotriquina1detalle`, `esporotriquina1resultado`, `coccidioidina1`, `coccidioidina1detalle`, `coccidioidina1resultado`, `leishmanina1`, `leishmanina1detalle`, `leishmanina1resultado`, `inmunodifusiondoble1`, `inmunodifusiondoble1detalle`, `inmunodifusiondoble1resultado`, `fototerauvbnarrowband1`, `fototerauvbnarrowband1detalle`, `fototerauvbnarrowband1resultado`, `estusecreuretral1`, `estusecreuretral1detalle`, `estusecreuretral1resultado`, `estusecrevaginal1`, `estusecrevaginal1detalle`, `estusecrevaginal1resultado`, `frotisulcerascolgiemsa1`, `frotisulcerascolgiemsa1detalle`, `frotisulcerascolgiemsa1resultado`, `frotislinfaziehlheelsen1`, `frotislinfaziehlheelsen1detalle`, `frotislinfaziehlheelsen1resultado`, `frotiscontevesiculartesttzanck1`, `frotiscontevesiculartesttzanck1detalle`, `frotiscontevesiculartesttzanck1resultado`, `registrofotografico1`, `registrofotografico1detalle`, `registrofotografico1resultado`, `miscelaniosotros1`, `miscelaniosotros1detalle`, `miscelaniosotros1resultado`) VALUES
(1, 1, 'Demo', 1, '2026-05-07 14:37:02', 1, NULL, 0, 'Activo', 7, 24, 2, 1263, 15, 24.209, '2026-05-07', '10:35:03', NULL, NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'SI', 'En pie derecho', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(2, 1, 'Demo', 1, '2026-05-07 16:48:33', 1, '2026-05-07 23:40:44', 1, 'Activo', 7, 24, 2, 1263, 15, 24.209, '2026-05-07', '12:47:34', NULL, NULL, '', '', '', 'SI', 'Pie Deretxo', '    ', '', '', '', '', '', '', 'SI', 'Mano Izquierda', '    ', '', '', '', '', '', '', '', 'Las que se puedan', '', 'SI', 'Manchas en la piel', '    ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 1, 'Demo', 1, '2026-05-13 15:07:38', 1, '2026-05-13 15:22:35', 1, 'Activo', 7, 24, 2, 3, 2, 24.225, '2026-05-13', '11:06:45', NULL, NULL, 'SI', 'pie der, con micosis hunglear en el cuarto dedo', 'Amputacion del 4to dedo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_exa_micologia_enfer_tropi_imagenes`
--

DROP TABLE IF EXISTS `tbl_exa_micologia_enfer_tropi_imagenes`;
CREATE TABLE `tbl_exa_micologia_enfer_tropi_imagenes` (
  `id_exa_micologia_enfer_tropi_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_exa_micologia_enfer_tropi` int NOT NULL DEFAULT '0' COMMENT 'La Identificacion de la Orden de Radiologia',
  `ruta_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Fotos de la Orden de Radiologia';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_exa_radiologia`
--

DROP TABLE IF EXISTS `tbl_exa_radiologia`;
CREATE TABLE `tbl_exa_radiologia` (
  `id_exa_radiologia` int NOT NULL COMMENT 'Id de Radiologia del Paciente',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `fecha_emision` date DEFAULT NULL,
  `hora_emision` time DEFAULT NULL,
  `numero_orden` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tipo_evaluacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tomografitorax1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tomografitorax1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `tomografiabdomen1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tomografiabdomen1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `tomografipelvis1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tomografipelvis1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rxtoraxpa1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Torax P-A',
  `rxtoraxpa1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'RX Torax P-A Resultado',
  `rxabdomenap1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'RX Abdomen A-P',
  `rxabdomenap1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'RX Abdomen A-PResultado',
  `rmn_columna_cervical` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rmn_columna_cervica_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rmn_columna_lumbosacra` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rmn_columna_lumbosacra_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rmn_columna_dorsal` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rmn_columna_dorsal_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rmn_cerebral` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rmn_cerebral_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_cervical_ap` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_cervical_ap_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_cervical_lateral` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_cervical_lateral_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_cervical_oblicua` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_cervical_oblicua_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_cervical_dinamica` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_cervical_dinamica_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_lumbosacra_ap` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_lumbosacra__ap_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_lumbosacra_lateral` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_lumbosacra_lateral_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_lumbosacra_oblicua` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_lumbosacra_oblicua_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_lumbosacra_dinamica` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_lumbosacra_dinamica_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_panoramica` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_panoramica_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_cefalica_lateral` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_cefalica_lateral_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_estudio_cefalometrico_steiner` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_estudio_cefalometrico_steiner_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_oclusal_superior` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_oclusal_superior_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_oclusal_inferior` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_oclusal_inferior_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_hombro_der` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_hombro_der_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_hombro_izq` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_hombro_izq_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_codo_der` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_codo_der_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_codo_izq` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_codo_izq_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_antebrazo_der` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_antebrazo_der_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_antebrazo_izq` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_antebrazo_izq_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_muneca_der` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_muneca_der_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_muneca_izq` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_muneca_izq_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_mano_der` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_mano_der_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_mano_izq` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_mano_izq_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_panoramica_pelvis` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_panoramica_pelvis_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_caderas_rana` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_caderas_rana_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_femur_der` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_femur_der_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_femur_izq` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_femur_izq_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_rodilla_der` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_rodilla_der_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_rodilla_izq` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_rodilla_izq_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_tibia_der` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_tibia_der_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_tibia_izq` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_tibia_izq_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_tobillo_der` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_tobillo_der_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_tobillo_izq` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_tobillo_izq_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_pie_der` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_pie_der_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rx_pie_izq` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `rx_pie_izq_resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `otrosradiologia1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Radiologia',
  `otrosradiologia1resultado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Otros Radiologia Resultado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Examenes de Radiologia';

--
-- Volcado de datos para la tabla `tbl_exa_radiologia`
--

INSERT INTO `tbl_exa_radiologia` (`id_exa_radiologia`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `fecha_emision`, `hora_emision`, `numero_orden`, `tipo_evaluacion`, `tomografitorax1`, `tomografitorax1resultado`, `tomografiabdomen1`, `tomografiabdomen1resultado`, `tomografipelvis1`, `tomografipelvis1resultado`, `rxtoraxpa1`, `rxtoraxpa1resultado`, `rxabdomenap1`, `rxabdomenap1resultado`, `rmn_columna_cervical`, `rmn_columna_cervica_resultado`, `rmn_columna_lumbosacra`, `rmn_columna_lumbosacra_resultado`, `rmn_columna_dorsal`, `rmn_columna_dorsal_resultado`, `rmn_cerebral`, `rmn_cerebral_resultado`, `rx_cervical_ap`, `rx_cervical_ap_resultado`, `rx_cervical_lateral`, `rx_cervical_lateral_resultado`, `rx_cervical_oblicua`, `rx_cervical_oblicua_resultado`, `rx_cervical_dinamica`, `rx_cervical_dinamica_resultado`, `rx_lumbosacra_ap`, `rx_lumbosacra__ap_resultado`, `rx_lumbosacra_lateral`, `rx_lumbosacra_lateral_resultado`, `rx_lumbosacra_oblicua`, `rx_lumbosacra_oblicua_resultado`, `rx_lumbosacra_dinamica`, `rx_lumbosacra_dinamica_resultado`, `rx_panoramica`, `rx_panoramica_resultado`, `rx_cefalica_lateral`, `rx_cefalica_lateral_resultado`, `rx_estudio_cefalometrico_steiner`, `rx_estudio_cefalometrico_steiner_resultado`, `rx_oclusal_superior`, `rx_oclusal_superior_resultado`, `rx_oclusal_inferior`, `rx_oclusal_inferior_resultado`, `rx_hombro_der`, `rx_hombro_der_resultado`, `rx_hombro_izq`, `rx_hombro_izq_resultado`, `rx_codo_der`, `rx_codo_der_resultado`, `rx_codo_izq`, `rx_codo_izq_resultado`, `rx_antebrazo_der`, `rx_antebrazo_der_resultado`, `rx_antebrazo_izq`, `rx_antebrazo_izq_resultado`, `rx_muneca_der`, `rx_muneca_der_resultado`, `rx_muneca_izq`, `rx_muneca_izq_resultado`, `rx_mano_der`, `rx_mano_der_resultado`, `rx_mano_izq`, `rx_mano_izq_resultado`, `rx_panoramica_pelvis`, `rx_panoramica_pelvis_resultado`, `rx_caderas_rana`, `rx_caderas_rana_resultado`, `rx_femur_der`, `rx_femur_der_resultado`, `rx_femur_izq`, `rx_femur_izq_resultado`, `rx_rodilla_der`, `rx_rodilla_der_resultado`, `rx_rodilla_izq`, `rx_rodilla_izq_resultado`, `rx_tibia_der`, `rx_tibia_der_resultado`, `rx_tibia_izq`, `rx_tibia_izq_resultado`, `rx_tobillo_der`, `rx_tobillo_der_resultado`, `rx_tobillo_izq`, `rx_tobillo_izq_resultado`, `rx_pie_der`, `rx_pie_der_resultado`, `rx_pie_izq`, `rx_pie_izq_resultado`, `otrosradiologia1`, `otrosradiologia1resultado`) VALUES
(1, 1, 'Demo', 1, '2026-05-04 09:57:19', 1, '2026-05-06 03:01:07', 1, 'Activo', 3, 37, 9, 1972, 19, 37.800, '2026-05-04', '05:53:50', NULL, NULL, '', '', '', '', '', '', 'SI', 'rrr', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 1, 'Demo', 1, '2026-05-04 09:59:25', 1, '2026-05-06 09:13:46', 1, 'Activo', 3, 37, 9, 1972, 19, 37.800, '2026-05-04', '05:57:19', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', 'rrrr', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', 'ccc', '', '', '', '', 'Necesita Mas.', ''),
(3, 1, 'Demo', 1, '2026-05-04 10:00:32', 1, '2026-05-07 00:39:32', 1, 'Activo', 2, 0, 3, 13, 4, 0.255, '2026-05-04', '06:00:18', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', 'SI', '', 'Mas...', ''),
(4, 1, 'Demo', 1, '2026-05-04 14:17:22', 1, '2026-05-06 02:59:49', 1, 'Activo', 3, 37, 9, 1972, 19, 37.800, '2026-05-04', '10:17:10', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 1, 'Demo', 1, '2026-05-06 01:28:31', 1, '2026-05-06 09:12:02', 1, 'Activo', 3, 37, 9, 1972, 20, 37.802, '2026-05-05', '21:23:01', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'SI', 'www ggg', '', '', 'SI', 'xxx ttt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', 'yyy hhh', '', '', '', '', '', '', '', ''),
(6, 1, 'Demo', 1, '2026-05-06 09:15:34', 1, '2026-05-06 09:33:31', 1, 'Activo', 3, 37, 9, 1972, 21, 37.805, '2026-05-06', '05:15:23', NULL, NULL, 'SI', 'qqq', 'SI', '', 'SI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 1, 'Demo', 1, '2026-05-06 09:26:54', 1, '2026-05-06 09:49:25', 1, 'Activo', 3, 37, 9, 1972, 21, 37.805, '2026-05-06', '05:15:35', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SI', 'hhh uuu ggg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SI', 'kkk www', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_exa_radiologia_imagenes`
--

DROP TABLE IF EXISTS `tbl_exa_radiologia_imagenes`;
CREATE TABLE `tbl_exa_radiologia_imagenes` (
  `id_exa_radiologia_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_exa_radiologia` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Fotos de la Orden de Radiologia';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_agenda_citas`
--

DROP TABLE IF EXISTS `tbl_paci_agenda_citas`;
CREATE TABLE `tbl_paci_agenda_citas` (
  `id_paci_agenda_citas` int NOT NULL,
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL DEFAULT '0',
  `serial_cita` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'SinSerial',
  `especialidad_medica` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'SinEspecialidad',
  `id_medico` int NOT NULL DEFAULT '0',
  `status_cita` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'Activo',
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `paciente_cita` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `nota_cita` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Agenda de Citas de los Pacientes';

--
-- Volcado de datos para la tabla `tbl_paci_agenda_citas`
--

INSERT INTO `tbl_paci_agenda_citas` (`id_paci_agenda_citas`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `serial_cita`, `especialidad_medica`, `id_medico`, `status_cita`, `fecha_cita`, `hora_cita`, `paciente_cita`, `nota_cita`) VALUES
(1, 1, 'Demo', 1, '2026-04-28 15:49:10', 1, NULL, NULL, 'Activo', 2, 'SinSerial', 'SinEspecialidad', 0, 'Activo', '2026-05-28', '11:47', '11:47 / M-20260131-1 / Thomas Miller / 0', NULL),
(2, 1, 'Demo', 1, '2026-04-29 15:00:41', 1, NULL, 0, 'Activo', 3, 'SinSerial', 'SinEspecialidad', 1, 'Activo', '2026-05-01', '14:03', '14:03 / V-19563274 / Isabel Martinez / 1', NULL),
(3, 1, 'Demo', 1, '2026-04-29 15:13:27', 1, NULL, 0, 'Activo', 3, 'SinSerial', 'SinEspecialidad', 1, 'Activo', '2026-05-02', '15:13', '15:13 / V-19563274 / Isabel Martinez / 1', NULL),
(4, 1, 'Demo', 1, '2026-04-29 20:49:09', 1, NULL, 0, 'Activo', 3, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-17', '18:48', '18:48 / V-19563274 / Isabel Martinez / 4 - Primer Paramedico', NULL),
(5, 1, 'Demo', 1, '2026-05-12 02:33:05', 1, NULL, 0, 'Activo', 8, 'SinSerial', 'SinEspecialidad', 5, 'Activo', '2026-05-20', '16:30', '16:30 / M-20260511-01 / Maria Rivas / 5 - Primer Medico Internista', NULL),
(6, 1, 'Demo', 1, '2026-05-12 15:10:19', 1, NULL, 0, 'Activo', 2, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-27', '16:14', '16:14 / M-20260131-1 / Thomas Miller / 4 - Primer Paramedico', NULL),
(7, 1, 'Demo', 1, '2026-05-13 11:09:06', 1, NULL, 0, 'Activo', 7, 'SinSerial', 'SinEspecialidad', 5, 'Activo', '2026-05-21', '15:07', '15:07 / V-6789987 / Ricardo Lopez / 5 - Primer Medico Internista', NULL),
(8, 1, 'Demo', 1, '2026-05-14 14:25:45', 1, NULL, 0, 'Activo', 10, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-24', '15:25', '15:25 / V-123456789 / Jose Grado / 4 - Primer Paramedico', NULL),
(9, 1, 'Demo', 1, '2026-05-14 14:31:46', 1, NULL, 0, 'Activo', 10, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-21', '13:31', '13:31 / V-123456789 / Jose Grado / 4 - Primer Paramedico', NULL),
(10, 1, 'Demo', 1, '2026-05-14 15:00:06', 1, NULL, 0, 'Activo', 10, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-20', '08:21', '08:21 / V-123456789 / Jose Grado / 4 - Primer Paramedico', NULL),
(11, 1, 'Demo', 1, '2026-05-14 15:18:26', 1, NULL, 0, 'Activo', 10, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-26', '14:27', '14:27 / V-123456789 / Jose Grado / 4 - Primer Paramedico', NULL),
(12, 1, 'Demo', 1, '2026-05-14 15:24:08', 1, NULL, 0, 'Activo', 10, 'SinSerial', 'SinEspecialidad', 0, 'Activo', '2026-05-29', '11:30', '11:30 / V-123456789 / Jose Grado / 0', NULL),
(13, 1, 'Demo', 1, '2026-05-14 15:31:18', 1, NULL, 0, 'Activo', 10, 'SinSerial', 'SinEspecialidad', 5, 'Activo', '2026-05-25', '11:26', '11:26 / V-123456789 / Jose Grado / 5 - Primer Medico Internista', NULL),
(14, 1, 'Demo', 1, '2026-05-14 15:33:33', 1, NULL, 0, 'Activo', 10, 'SinSerial', 'SinEspecialidad', 5, 'Activo', '2026-05-30', '11:31', '11:31 / V-123456789 / Jose Grado / 5 - Primer Medico Internista', NULL),
(15, 1, 'Demo', 1, '2026-05-14 15:36:40', 1, NULL, 0, 'Activo', 10, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-28', '11:28', '11:28 / V-123456789 / Jose Grado / 4 - Primer Paramedico', NULL),
(16, 1, 'Demo', 1, '2026-05-14 16:57:46', 1, NULL, 0, 'Activo', 11, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-15', '12:16', '12:16 / P-78WW9WG442G / Miriam Puertas / 4 - Primer Paramedico', NULL),
(17, 1, 'Demo', 1, '2026-05-14 16:59:31', 1, NULL, 0, 'Activo', 11, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-17', '12:18', '12:18 / P-78WW9WG442G / Miriam Puertas / 4 - Primer Paramedico', NULL),
(18, 1, 'Demo', 1, '2026-05-14 17:01:28', 1, NULL, 0, 'Activo', 11, 'SinSerial', 'SinEspecialidad', 5, 'Activo', '2026-05-19', '13:04', '13:04 / P-78WW9WG442G / Miriam Puertas / 5 - Primer Medico Internista', NULL),
(19, 1, 'Demo', 1, '2026-05-14 17:07:55', 1, NULL, 0, 'Activo', 11, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-29', '13:12', '13:12 / P-78WW9WG442G / Miriam Puertas / 4 - Primer Paramedico', NULL),
(20, 1, 'Demo', 1, '2026-05-14 17:11:22', 1, NULL, 0, 'Activo', 11, 'SinSerial', 'SinEspecialidad', 5, 'Activo', '2026-06-04', '19:11', '19:11 / P-78WW9WG442G / Miriam Puertas / 5 - Primer Medico Internista', NULL),
(21, 1, 'Demo', 1, '2026-05-15 01:31:50', 1, NULL, 0, 'Activo', 11, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-21', '22:33', '22:33 / P-78WW9WG442G / Miriam Puertas / 4 - Primer Paramedico', NULL),
(22, 1, 'Demo', 1, '2026-05-15 01:39:12', 1, NULL, 0, 'Activo', 11, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-27', '23:41', '23:41 / P-78WW9WG442G / Miriam Puertas / 4 - Primer Paramedico', NULL),
(23, 1, 'Demo', 1, '2026-05-15 01:46:18', 1, NULL, 0, 'Activo', 11, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-06-02', '03:46', '03:46 / P-78WW9WG442G / Miriam Puertas / 4 - Primer Paramedico', NULL),
(24, 1, 'Demo', 1, '2026-05-15 01:48:42', 1, NULL, 0, 'Activo', 11, 'SinSerial', 'SinEspecialidad', 5, 'Activo', '2026-05-29', '21:51', '21:51 / P-78WW9WG442G / Miriam Puertas / 5 - Primer Medico Internista', NULL),
(25, 1, 'Demo', 1, '2026-05-15 02:00:38', 1, NULL, 0, 'Activo', 11, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-30', '02:00', '02:00 / P-78WW9WG442G / Miriam Puertas / 4 - Primer Paramedico', NULL),
(26, 1, 'Demo', 1, '2026-05-15 02:02:16', 1, NULL, 0, 'Activo', 11, 'SinSerial', 'SinEspecialidad', 4, 'Activo', '2026-05-29', '03:02', '03:02 / P-78WW9WG442G / Miriam Puertas / 4 - Primer Paramedico', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_agenda_citas_disponibilidad`
--

DROP TABLE IF EXISTS `tbl_paci_agenda_citas_disponibilidad`;
CREATE TABLE `tbl_paci_agenda_citas_disponibilidad` (
  `id_agenda_cita_disponibilidad` int NOT NULL,
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL DEFAULT '0',
  `lunes_cita` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'NoDisponible',
  `lunes_turno` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Matutino',
  `lunes_inicio` time NOT NULL DEFAULT '00:00:00',
  `lunes_final` time NOT NULL DEFAULT '00:00:00',
  `lunes_numero` int NOT NULL DEFAULT '0',
  `martes_cita` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'NoDisponible',
  `martes_turno` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Matutino',
  `martes_inicio` time NOT NULL DEFAULT '00:00:00',
  `martes_final` time NOT NULL DEFAULT '00:00:00',
  `martes_numero` int NOT NULL DEFAULT '0',
  `miercoles_cita` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'NoDisponible',
  `miercoles_turno` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Matutino',
  `miercoles_inicio` time NOT NULL DEFAULT '00:00:00',
  `miercoles_final` time NOT NULL DEFAULT '00:00:00',
  `miercoles_numero` int NOT NULL DEFAULT '0',
  `jueves_cita` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'NoDisponible',
  `jueves_turno` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Matutino',
  `jueves_inicio` time NOT NULL DEFAULT '00:00:00',
  `jueves_final` time NOT NULL DEFAULT '00:00:00',
  `jueves_numero` int NOT NULL DEFAULT '0',
  `viernes_cita` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'NoDisponible',
  `viernes_turno` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Matutino',
  `viernes_inicio` time NOT NULL DEFAULT '00:00:00',
  `viernes_final` time NOT NULL DEFAULT '00:00:00',
  `viernes_numero` int NOT NULL DEFAULT '0',
  `sabado_cita` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'NoDisponible',
  `sabado_turno` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Matutino',
  `sabado_inicio` time NOT NULL DEFAULT '00:00:00',
  `sabado_final` time NOT NULL DEFAULT '00:00:00',
  `sabado_numero` int NOT NULL DEFAULT '0',
  `domingo_cita` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'NoDisponible',
  `domingo_turno` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Matutino',
  `domingo_inicio` time NOT NULL DEFAULT '00:00:00',
  `domingo_final` time NOT NULL DEFAULT '00:00:00',
  `domingo_numero` int NOT NULL DEFAULT '0',
  `observacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_consentimiento`
--

DROP TABLE IF EXISTS `tbl_paci_doc_consentimiento`;
CREATE TABLE `tbl_paci_doc_consentimiento` (
  `id_consentimiento` int NOT NULL COMMENT 'Id de Informes del Paciente',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `representante_nombre` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_identificacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_parentesco` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `consentimiento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Constancias del Paciente',
  `procedimiento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Procedimiento del Paciente',
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Consentimiento del Paciente';

--
-- Volcado de datos para la tabla `tbl_paci_doc_consentimiento`
--

INSERT INTO `tbl_paci_doc_consentimiento` (`id_consentimiento`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `representante_nombre`, `representante_identificacion`, `representante_parentesco`, `fecha_emision`, `consentimiento`, `procedimiento`, `fecha_cita`, `hora_cita`) VALUES
(1, 1, 'Demo', 1, '2026-05-01 23:59:47', 1, '2026-05-02 00:03:48', 0, 'Activo', 2, 0, 3, 12, 1, 0.246, 'Cris Miller', 'V-12.369.874', 'Padre', '2026-05-01', 'Extraccion Polipo', 'Cirugia Menor', NULL, NULL),
(2, 1, 'Demo', 1, '2026-05-02 00:03:19', 1, NULL, 0, 'Activo', 2, 0, 3, 12, 1, 0.246, 'Cris Miller', 'V-12.369.874', 'Padre', '2026-05-01', 'Correccion Mano Derecha', 'Cirugia de Mano', NULL, NULL),
(3, 1, 'Demo', 1, '2026-05-02 12:50:49', 1, NULL, 0, 'Activo', 2, 0, 3, 13, 2, 0.249, 'Raul Giron', 'V-17.654.789', 'Tio', '2026-05-02', 'Circuncision', 'Cirugia Ambulatoria', NULL, NULL),
(4, 1, 'Demo', 1, '2026-05-02 13:06:06', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 17, 37.794, '', '', '', '2026-05-02', 'Extraccion de Verrugas', 'Cirugia Cosmetica', NULL, NULL),
(5, 1, 'Demo', 1, '2026-05-05 23:27:27', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 20, 37.802, '', '', '', '2026-05-05', 'Extraccion de Polipo.', 'Ambulatoria', NULL, NULL),
(6, 1, 'Demo', 1, '2026-05-13 15:26:15', 1, NULL, 0, 'Activo', 7, 24, 2, 3, 2, 24.225, 'MARIA FLORES', '1234567890', 'Gobierno', '2026-05-13', 'Amputar el 4to dedo del pies derecho', 'cirujia ambulatoria', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_consentimiento_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_doc_consentimiento_imagenes`;
CREATE TABLE `tbl_paci_doc_consentimiento_imagenes` (
  `id_consentimiento_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_consentimiento` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_constancia`
--

DROP TABLE IF EXISTS `tbl_paci_doc_constancia`;
CREATE TABLE `tbl_paci_doc_constancia` (
  `id_constancia` int NOT NULL COMMENT 'Id de Informes del Paciente',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `representante_nombre` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_identificacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_parentesco` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `constancia_detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Constancia del Paciente',
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Constancia del Paciente';

--
-- Volcado de datos para la tabla `tbl_paci_doc_constancia`
--

INSERT INTO `tbl_paci_doc_constancia` (`id_constancia`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `representante_nombre`, `representante_identificacion`, `representante_parentesco`, `fecha_emision`, `constancia_detalle`, `fecha_cita`, `hora_cita`) VALUES
(1, 1, 'Demo', 1, '2026-05-02 12:27:12', 1, NULL, 0, 'Activo', 2, 0, 3, 13, 2, 0.249, 'Mary Miller', 'V-16.321.987', 'Madre', '2026-05-02', 'Constancia de Prueba...', NULL, NULL),
(2, 1, 'Demo', 1, '2026-05-02 13:03:42', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 17, 37.794, '', '', '', '2026-05-02', 'Goza de Excelente Salud', NULL, NULL),
(3, 1, 'Demo', 1, '2026-05-05 23:33:08', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 20, 37.802, '', '', '', '2026-05-05', 'Asistio el dia a Consulta de Seguimiento', NULL, NULL),
(4, 1, 'Demo', 1, '2026-05-13 15:28:39', 1, NULL, 0, 'Activo', 7, 24, 2, 3, 2, 24.225, '', '', '', '2026-05-13', 'aldulto sano', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_constancia_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_doc_constancia_imagenes`;
CREATE TABLE `tbl_paci_doc_constancia_imagenes` (
  `id_constancia_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_constancia` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_constancia_nino_sano`
--

DROP TABLE IF EXISTS `tbl_paci_doc_constancia_nino_sano`;
CREATE TABLE `tbl_paci_doc_constancia_nino_sano` (
  `id_nino_sano` int NOT NULL COMMENT 'Id de Informes del Paciente',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT NULL,
  `edad_meses` int DEFAULT NULL,
  `edad_semanas` int DEFAULT NULL,
  `edad_dias` int DEFAULT NULL,
  `edad_decimal` decimal(6,3) DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `constancia_nino_sano` text COLLATE utf8mb3_spanish_ci,
  `representante_nombre` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_identificacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_parentesco` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Constancia de Nino Sano';

--
-- Volcado de datos para la tabla `tbl_paci_doc_constancia_nino_sano`
--

INSERT INTO `tbl_paci_doc_constancia_nino_sano` (`id_nino_sano`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `fecha_emision`, `constancia_nino_sano`, `representante_nombre`, `representante_identificacion`, `representante_parentesco`, `fecha_cita`, `hora_cita`) VALUES
(1, 1, 'Demo', 1, '2026-05-02 16:22:27', 1, NULL, 0, 'Activo', 2, 0, 3, 13, 2, 0.249, '2026-05-02', NULL, 'Carolina Avas', 'V-19.547.321', 'Tia Materna', NULL, NULL),
(2, 1, 'Demo', 1, '2026-05-02 16:28:18', 1, NULL, 0, 'Activo', 2, 0, 3, 13, 2, 0.249, '2026-05-02', '', 'Joe Miller', '20.852.147', 'Tio Paterno', NULL, NULL),
(3, 1, 'Demo', 1, '2026-05-05 23:38:28', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 20, 37.802, '2026-05-05', '', '', '', '', NULL, NULL),
(4, 1, 'Demo', 1, '2026-05-13 15:29:11', 1, NULL, 0, 'Activo', 7, 24, 2, 3, 2, 24.225, '2026-05-13', '', 'MARIA FLORES', '1234567890', 'Gobierno', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_constancia_nino_sano_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_doc_constancia_nino_sano_imagenes`;
CREATE TABLE `tbl_paci_doc_constancia_nino_sano_imagenes` (
  `id_constancia_nino_sano_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_nino_sano` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_informe`
--

DROP TABLE IF EXISTS `tbl_paci_doc_informe`;
CREATE TABLE `tbl_paci_doc_informe` (
  `id_informe` int NOT NULL COMMENT 'Id de Informe del Paciente',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `representante_nombre` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_identificacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_parentesco` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `informe_detalle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Informe del Paciente',
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Informe del Paciente';

--
-- Volcado de datos para la tabla `tbl_paci_doc_informe`
--

INSERT INTO `tbl_paci_doc_informe` (`id_informe`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `representante_nombre`, `representante_identificacion`, `representante_parentesco`, `fecha_emision`, `informe_detalle`, `fecha_cita`, `hora_cita`) VALUES
(1, 1, 'Demo', 1, '2026-05-02 17:32:24', 1, NULL, 0, 'Activo', 2, 0, 3, 13, 2, 0.249, 'Alex Miller', '28.693.258', 'Hermano Mayor', '2026-05-02', 'Goza de Buena Salud', NULL, NULL),
(2, 1, 'Demo', 1, '2026-05-02 21:06:15', 1, '2026-05-02 21:07:43', 0, 'Activo', 2, 0, 3, 13, 2, 0.249, '', '', '', '2026-05-02', 'Problemas de audicion en oido derecho.', NULL, NULL),
(3, 1, 'Demo', 1, '2026-05-02 21:08:18', 1, '2026-05-02 21:08:52', 0, 'Activo', 2, 0, 3, 13, 2, 0.249, '', '', '', '2026-05-02', 'Vision borroza.', NULL, NULL),
(4, 1, 'Demo', 1, '2026-05-05 23:42:05', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 20, 37.802, '', '', '', '2026-05-05', 'No presenta afecciones', NULL, NULL),
(5, 1, 'Demo', 1, '2026-05-13 15:30:17', 1, NULL, 0, 'Activo', 7, 24, 2, 3, 2, 24.225, '', '1234567890', '', '2026-05-13', 'dx cefalea moderada', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_informe_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_doc_informe_imagenes`;
CREATE TABLE `tbl_paci_doc_informe_imagenes` (
  `id_informe_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_informe` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_recipe`
--

DROP TABLE IF EXISTS `tbl_paci_doc_recipe`;
CREATE TABLE `tbl_paci_doc_recipe` (
  `id_recipe` int NOT NULL COMMENT 'Id de Recipe',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `representante_nombre` varchar(80) COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_identificacion` varchar(40) COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_parentesco` varchar(40) COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `hora_emision` time DEFAULT NULL,
  `dias_vigencia` int DEFAULT '0',
  `fecha_vencimiento` date DEFAULT NULL,
  `dieta_recipe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `recomendacion_recipe` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `observacion_recipe` text COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Recipe para el Paciente';

--
-- Volcado de datos para la tabla `tbl_paci_doc_recipe`
--

INSERT INTO `tbl_paci_doc_recipe` (`id_recipe`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `representante_nombre`, `representante_identificacion`, `representante_parentesco`, `fecha_emision`, `hora_emision`, `dias_vigencia`, `fecha_vencimiento`, `dieta_recipe`, `recomendacion_recipe`, `fecha_cita`, `hora_cita`, `observacion_recipe`) VALUES
(1, 1, 'Demo', 1, '2026-05-09 10:54:21', 1, NULL, 0, 'Activo', 3, 37, 9, 1973, 24, 37.813, '', '', '', '2026-05-09', '00:00:00', 15, '2026-05-24', '', '', NULL, NULL, NULL),
(2, 1, 'Demo', 1, '2026-05-09 11:24:44', 1, NULL, 0, 'Activo', 7, 24, 2, 1263, 17, 24.214, '', '', '', '2026-05-09', '07:22:36', 12, '2026-05-21', 'Alimentos suaves.', 'No ingerir bebidas y comidas frias.', NULL, NULL, NULL),
(3, 1, 'Demo', 1, '2026-05-09 14:03:15', 1, NULL, 0, 'Activo', 3, 37, 9, 1973, 24, 37.813, '', '', '', '2026-05-09', '10:01:27', 8, '2026-05-17', '', '', NULL, NULL, NULL),
(4, 1, 'Demo', 1, '2026-05-13 15:43:25', 1, NULL, 0, 'Activo', 10, 30, 2, 0, 6, 30.183, '', '', '', '2026-05-13', '11:42:15', 10, '2026-05-23', 'no alimentos procesados', 'mucho liquido', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_recipes_medicamento`
--

DROP TABLE IF EXISTS `tbl_paci_doc_recipes_medicamento`;
CREATE TABLE `tbl_paci_doc_recipes_medicamento` (
  `id_medicinamento` int NOT NULL COMMENT 'Id de Medicina',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_recipe` int DEFAULT NULL COMMENT 'Id del Recipe',
  `medicamento` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'SinMedicamento' COMMENT 'Nombre del Medicamento',
  `indicaciones` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'SinIndicacion',
  `observacion_medicamento` text COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Medicamentos para los Pacientes';

--
-- Volcado de datos para la tabla `tbl_paci_doc_recipes_medicamento`
--

INSERT INTO `tbl_paci_doc_recipes_medicamento` (`id_medicinamento`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_recipe`, `medicamento`, `indicaciones`, `observacion_medicamento`) VALUES
(1, 1, 'Demo', 1, '2026-05-08 00:07:55', 1, '2026-05-09 11:28:02', 0, 'Activo', 1, 'Aspirina de 200 mg.', 'Cada 8 hrs.', NULL),
(2, 1, 'Demo', 1, '2026-05-08 00:07:55', 1, '2026-05-09 11:28:14', 0, 'Activo', 1, 'Dipirona 250 mg.', 'Dos veces al dia.', NULL),
(3, 1, 'Demo', 1, '2026-05-08 00:08:28', 1, '2026-05-09 11:28:14', 0, 'Activo', 1, 'Ampicilina 500 mg.', 'Cada 6 Hrs.', NULL),
(4, 1, 'Demo', 1, '2026-05-08 00:08:28', 1, '2026-05-09 11:28:14', 0, 'Activo', 1, 'Loperan 150 mg.', 'Si hay malestar.', NULL),
(5, 1, 'Demo', 1, '2026-05-08 00:09:42', 1, '2026-05-09 11:28:14', 0, 'Activo', 1, 'Diclofenac Potasico 50 mg.', 'Cuando hay dolor.', NULL),
(6, 1, 'Demo', 1, '2026-05-08 00:09:42', 1, '2026-05-09 11:28:14', 0, 'Activo', 2, 'Cataflan 30 mg.', 'Con el Desayuno.', NULL),
(7, 1, 'Demo', 1, '2026-05-09 10:54:21', 1, '2026-05-09 11:26:10', 0, 'Activo', 2, 'Aspirina de 200 mg.', 'Con el Desayuno.', NULL),
(8, 1, 'Demo', 1, '2026-05-09 10:54:22', 1, '2026-05-09 11:26:13', 0, 'Activo', 2, 'Diclofenac Potasico 50 mg.', 'Cuando hay dolor.', NULL),
(9, 1, 'Demo', 1, '2026-05-09 11:24:44', 1, NULL, 0, 'Activo', 2, 'Jarabe para la Tos', 'Cada 12 Hrs.', NULL),
(10, 1, 'Demo', 1, '2026-05-09 14:03:15', 1, NULL, 0, 'Activo', 3, 'Madecasol en Polvo de 120 mg.', 'Tres Veces al Dia.', NULL),
(11, 1, 'Demo', 1, '2026-05-13 15:43:25', 1, NULL, 0, 'Activo', 4, 'Ampicilina 500 mg.', 'Cuando hay dolor.', NULL),
(12, 1, 'Demo', 1, '2026-05-13 15:43:25', 1, NULL, 0, 'Activo', 4, 'Loperan 150 mg.', 'Cada 12 Hrs.', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_recipe_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_doc_recipe_imagenes`;
CREATE TABLE `tbl_paci_doc_recipe_imagenes` (
  `id_recipe_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_recipe` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_recipe_indicacion`
--

DROP TABLE IF EXISTS `tbl_paci_doc_recipe_indicacion`;
CREATE TABLE `tbl_paci_doc_recipe_indicacion` (
  `id_recipe_indicacion` int NOT NULL COMMENT 'Id del indicacion Tratamientos',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_recipe` int NOT NULL DEFAULT '0' COMMENT 'La Identificacion del Tratamiento',
  `id_medicinamento` int DEFAULT NULL COMMENT 'La Identificacion del Tratamiento',
  `indicacion` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Indicacion al paciente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='indicacion del Recipe para el Paciente';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_referencia`
--

DROP TABLE IF EXISTS `tbl_paci_doc_referencia`;
CREATE TABLE `tbl_paci_doc_referencia` (
  `id_referencia` int NOT NULL COMMENT 'Id Referencia del Paciente',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `representante_nombre` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_identificacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_parentesco` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `destino_referencia` varchar(140) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Destino de la Referencia del Paciente',
  `motivo_referencia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Motivo de la Referencia del Paciente',
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Referir al Paciente';

--
-- Volcado de datos para la tabla `tbl_paci_doc_referencia`
--

INSERT INTO `tbl_paci_doc_referencia` (`id_referencia`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `representante_nombre`, `representante_identificacion`, `representante_parentesco`, `fecha_emision`, `destino_referencia`, `motivo_referencia`, `fecha_cita`, `hora_cita`) VALUES
(1, 1, 'Demo', 1, '2026-05-02 21:12:04', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 17, 37.794, '', '', '', '2026-05-02', 'Dr. Hernandez Castillo', 'problemas para caminar.', NULL, NULL),
(2, 1, 'Demo', 1, '2026-05-02 21:16:34', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 17, 37.794, 'Carmen Martinez', 'V-21.564.987', 'Hermana', '2026-05-02', 'Dra. Marquez Sia', 'Dolores de cabeza.', NULL, NULL),
(3, 1, 'Demo', 1, '2026-05-05 23:46:55', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 20, 37.802, '', '', '', '2026-05-05', 'Nefrologo', 'Dolores de Vientre', NULL, NULL),
(4, 1, 'Demo', 1, '2026-05-13 15:31:49', 1, NULL, 0, 'Activo', 7, 24, 2, 3, 2, 24.225, '', '', '', '2026-05-13', 'centro medico maracay', 'delicado de salud', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_referencia_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_doc_referencia_imagenes`;
CREATE TABLE `tbl_paci_doc_referencia_imagenes` (
  `id_referencia_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_referencia` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_reposo`
--

DROP TABLE IF EXISTS `tbl_paci_doc_reposo`;
CREATE TABLE `tbl_paci_doc_reposo` (
  `id_reposo` int NOT NULL,
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `representante_nombre` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_identificacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `representante_parentesco` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `dias_vigencia` int DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `reposo_motivo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Motivo Reposo del Paciente',
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Reposo del Paciente';

--
-- Volcado de datos para la tabla `tbl_paci_doc_reposo`
--

INSERT INTO `tbl_paci_doc_reposo` (`id_reposo`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `representante_nombre`, `representante_identificacion`, `representante_parentesco`, `fecha_emision`, `dias_vigencia`, `fecha_vencimiento`, `reposo_motivo`, `fecha_cita`, `hora_cita`) VALUES
(1, 1, 'Demo', 1, '2026-05-02 23:42:26', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 17, 37.794, '', '', '', '2026-04-29', 14, '2026-05-13', 'Dolor de rodillas.', NULL, NULL),
(2, 1, 'Demo', 1, '2026-05-05 23:57:22', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 20, 37.802, '', '', '', '2026-05-05', 42, '2026-06-16', 'Dolor cronico de espalda baja', NULL, NULL),
(3, 1, 'Demo', 1, '2026-05-05 23:58:45', 1, NULL, 0, 'Activo', 3, 37, 9, 1972, 20, 37.802, '', '', '', '2026-05-05', 9, '2026-05-14', 'Dolores de Cabeza', NULL, NULL),
(4, 1, 'Demo', 1, '2026-05-13 15:33:54', 1, NULL, 0, 'Activo', 7, 24, 2, 3, 2, 24.225, 'jdgt', '342123', 'madre', '2026-05-13', 3, '2026-05-16', 'dolor abdominal', NULL, NULL),
(5, 1, 'Demo', 1, '2026-05-13 15:40:39', 1, NULL, 0, 'Activo', 10, 30, 2, 0, 6, 30.183, 'jdgt', '234556', 'padre', '2026-05-13', 3, '2026-05-16', 'dolor de muela', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_reposo_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_doc_reposo_imagenes`;
CREATE TABLE `tbl_paci_doc_reposo_imagenes` (
  `id_reposo_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_reposo` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_vacuna`
--

DROP TABLE IF EXISTS `tbl_paci_doc_vacuna`;
CREATE TABLE `tbl_paci_doc_vacuna` (
  `id_vacuna` int NOT NULL COMMENT 'Numero de Registro de la Vucuna',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `antiamarilica1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antiamarilica2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antiamarilica3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antiamarilica4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antiamarilica5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antiamarilica6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antiamarilica7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripal1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripal2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripal3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripal4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripal5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripal6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripal7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripalid1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripalid2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripalid3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripalid4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripalid5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripalid6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antigripalid7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihaemophilus_influenzae_tb1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihaemophilus_influenzae_tb2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihaemophilus_influenzae_tb3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihaemophilus_influenzae_tb4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihaemophilus_influenzae_tb5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihaemophilus_influenzae_tb6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihaemophilus_influenzae_tb7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisa1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisa2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisa3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisa4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisa5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisa6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisa7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisab1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisab2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisab3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisab4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisab5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisab6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisab7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisb1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisb2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisb3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisb4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisb5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisb6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antihepatitisb7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninconjugada1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninconjugada2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninconjugada3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninconjugada4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninconjugada5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninconjugada6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninconjugada7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninc_conj1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninc_conj2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninc_conj3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninc_conj4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninc_conj5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninc_conj6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antimeninc_conj7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumococcica_conj1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumococcica_conj2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumococcica_conj3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumococcica_conj4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumococcica_conj5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumococcica_conj6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumococcica_conj7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumo_poli1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumo_poli2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumo_poli3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumo_poli4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumo_poli5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumo_poli6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antineumo_poli7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antipapi_hpv1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antipapi_hpv2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antipapi_hpv3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antipapi_hpv4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antipapi_hpv5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antipapi_hpv6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antipapi_hpv7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrabica1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrabica2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrabica3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrabica4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrabica5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrabica6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrabica7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrotavirus1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrotavirus2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrotavirus3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrotavirus4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrotavirus5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrotavirus6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antirrotavirus7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitifoidea1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitifoidea2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitifoidea3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitifoidea4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitifoidea5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitifoidea6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitifoidea7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitetanica1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitetanica2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitetanica3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitetanica4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitetanica5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitetanica6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antitetanica7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antivaricela1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antivaricela2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antivaricela3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antivaricela4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antivaricela5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antivaricela6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `antivaricela7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `bcg1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `bcg2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `bcg3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `bcg4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `bcg5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `bcg6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `bcg7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `cuadruplea1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `cuadruplea2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `cuadruplea3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `cuadruplea4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `cuadruplea5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `cuadruplea6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `cuadruplea7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `doble_adul1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `doble_adul2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `doble_adul3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `doble_adul4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `doble_adul5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `doble_adul6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `doble_adul7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `quintuple_acel1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `quintuple_acel2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `quintuple_acel3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `quintuple_acel4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `quintuple_acel5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `quintuple_acel6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `quintuple_acel7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sabin_y_salk1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sabin_y_salk2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sabin_y_salk3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sabin_y_salk4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sabin_y_salk5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sabin_y_salk6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sabin_y_salk7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sextuple_acel1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sextuple_acel2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sextuple_acel3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sextuple_acel4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sextuple_acel5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sextuple_acel6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `sextuple_acel7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tetrava_bact_acel1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tetrava_bact_acel2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tetrava_bact_acel3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tetrava_bact_acel4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tetrava_bact_acel5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tetrava_bact_acel6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tetrava_bact_acel7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_bact_acel1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_bact_acel2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_bact_acel3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_bact_acel4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_bact_acel5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_bact_acel6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_bact_acel7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_viral1` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_viral2` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_viral3` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_viral4` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_viral5` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_viral6` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `triple_viral7` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `observaciones` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Fechas de las Vacuna ';

--
-- Volcado de datos para la tabla `tbl_paci_doc_vacuna`
--

INSERT INTO `tbl_paci_doc_vacuna` (`id_vacuna`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `antiamarilica1`, `antiamarilica2`, `antiamarilica3`, `antiamarilica4`, `antiamarilica5`, `antiamarilica6`, `antiamarilica7`, `antigripal1`, `antigripal2`, `antigripal3`, `antigripal4`, `antigripal5`, `antigripal6`, `antigripal7`, `antigripalid1`, `antigripalid2`, `antigripalid3`, `antigripalid4`, `antigripalid5`, `antigripalid6`, `antigripalid7`, `antihaemophilus_influenzae_tb1`, `antihaemophilus_influenzae_tb2`, `antihaemophilus_influenzae_tb3`, `antihaemophilus_influenzae_tb4`, `antihaemophilus_influenzae_tb5`, `antihaemophilus_influenzae_tb6`, `antihaemophilus_influenzae_tb7`, `antihepatitisa1`, `antihepatitisa2`, `antihepatitisa3`, `antihepatitisa4`, `antihepatitisa5`, `antihepatitisa6`, `antihepatitisa7`, `antihepatitisab1`, `antihepatitisab2`, `antihepatitisab3`, `antihepatitisab4`, `antihepatitisab5`, `antihepatitisab6`, `antihepatitisab7`, `antihepatitisb1`, `antihepatitisb2`, `antihepatitisb3`, `antihepatitisb4`, `antihepatitisb5`, `antihepatitisb6`, `antihepatitisb7`, `antimeninconjugada1`, `antimeninconjugada2`, `antimeninconjugada3`, `antimeninconjugada4`, `antimeninconjugada5`, `antimeninconjugada6`, `antimeninconjugada7`, `antimeninc_conj1`, `antimeninc_conj2`, `antimeninc_conj3`, `antimeninc_conj4`, `antimeninc_conj5`, `antimeninc_conj6`, `antimeninc_conj7`, `antineumococcica_conj1`, `antineumococcica_conj2`, `antineumococcica_conj3`, `antineumococcica_conj4`, `antineumococcica_conj5`, `antineumococcica_conj6`, `antineumococcica_conj7`, `antineumo_poli1`, `antineumo_poli2`, `antineumo_poli3`, `antineumo_poli4`, `antineumo_poli5`, `antineumo_poli6`, `antineumo_poli7`, `antipapi_hpv1`, `antipapi_hpv2`, `antipapi_hpv3`, `antipapi_hpv4`, `antipapi_hpv5`, `antipapi_hpv6`, `antipapi_hpv7`, `antirrabica1`, `antirrabica2`, `antirrabica3`, `antirrabica4`, `antirrabica5`, `antirrabica6`, `antirrabica7`, `antirrotavirus1`, `antirrotavirus2`, `antirrotavirus3`, `antirrotavirus4`, `antirrotavirus5`, `antirrotavirus6`, `antirrotavirus7`, `antitifoidea1`, `antitifoidea2`, `antitifoidea3`, `antitifoidea4`, `antitifoidea5`, `antitifoidea6`, `antitifoidea7`, `antitetanica1`, `antitetanica2`, `antitetanica3`, `antitetanica4`, `antitetanica5`, `antitetanica6`, `antitetanica7`, `antivaricela1`, `antivaricela2`, `antivaricela3`, `antivaricela4`, `antivaricela5`, `antivaricela6`, `antivaricela7`, `bcg1`, `bcg2`, `bcg3`, `bcg4`, `bcg5`, `bcg6`, `bcg7`, `cuadruplea1`, `cuadruplea2`, `cuadruplea3`, `cuadruplea4`, `cuadruplea5`, `cuadruplea6`, `cuadruplea7`, `doble_adul1`, `doble_adul2`, `doble_adul3`, `doble_adul4`, `doble_adul5`, `doble_adul6`, `doble_adul7`, `quintuple_acel1`, `quintuple_acel2`, `quintuple_acel3`, `quintuple_acel4`, `quintuple_acel5`, `quintuple_acel6`, `quintuple_acel7`, `sabin_y_salk1`, `sabin_y_salk2`, `sabin_y_salk3`, `sabin_y_salk4`, `sabin_y_salk5`, `sabin_y_salk6`, `sabin_y_salk7`, `sextuple_acel1`, `sextuple_acel2`, `sextuple_acel3`, `sextuple_acel4`, `sextuple_acel5`, `sextuple_acel6`, `sextuple_acel7`, `tetrava_bact_acel1`, `tetrava_bact_acel2`, `tetrava_bact_acel3`, `tetrava_bact_acel4`, `tetrava_bact_acel5`, `tetrava_bact_acel6`, `tetrava_bact_acel7`, `triple_bact_acel1`, `triple_bact_acel2`, `triple_bact_acel3`, `triple_bact_acel4`, `triple_bact_acel5`, `triple_bact_acel6`, `triple_bact_acel7`, `triple_viral1`, `triple_viral2`, `triple_viral3`, `triple_viral4`, `triple_viral5`, `triple_viral6`, `triple_viral7`, `observaciones`) VALUES
(1, 1, 'Demo', 1, '2026-04-27 10:39:29', 1, NULL, NULL, 'Activo', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 'Demo', 1, '2026-04-27 13:28:53', 1, '2026-05-03 20:32:33', 1, 'Activo', 2, '2026-04-09', '', '', '', '', '', '', '2026-03-05', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2026-03-07', '', '', '', '', '', '', 'Vacunas al dia.'),
(3, 1, 'Demo', 1, '2026-04-29 11:07:12', 1, '2026-05-09 13:06:19', 1, 'Activo', 3, '2025-10-16', '', '', '', '', '', '', '2025-08-14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2026-04-10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-12-17', '', '2026-05-01', '', '', '', '', '2025-11-06', '2026-04-09', '', '', '', '', '', '2026-03-07', '', '', '', '', '', '', ''),
(4, 1, 'Demo', 1, '2026-04-29 18:04:45', 1, NULL, 0, 'Activo', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 'Demo', 1, '2026-05-07 13:09:26', 1, '2026-05-07 13:12:16', 1, 'Activo', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2026-04-28', '', '', '', '', '', '', '', '', '2026-04-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 1, 'Demo', 1, '2026-05-11 15:17:03', 1, NULL, 0, 'Activo', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 'Demo', 1, '2026-05-13 13:45:50', 1, NULL, 0, 'Activo', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 'Demo', 1, '2026-05-13 13:54:50', 1, '2026-05-13 15:44:02', 1, 'Activo', 10, '2026-05-07', '2026-05-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 1, 'Demo', 1, '2026-05-14 16:51:09', 1, NULL, 0, 'Activo', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_doc_vacuna_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_doc_vacuna_imagenes`;
CREATE TABLE `tbl_paci_doc_vacuna_imagenes` (
  `id_vacuna_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_vacuna` int DEFAULT NULL,
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_emergencia_alerta`
--

DROP TABLE IF EXISTS `tbl_paci_emergencia_alerta`;
CREATE TABLE `tbl_paci_emergencia_alerta` (
  `id_emergencia_alerta` int NOT NULL COMMENT 'Id de Seguimientos',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `id_ente_despacho` int NOT NULL DEFAULT '0',
  `id_ente_apoyo` int NOT NULL DEFAULT '0',
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `fecha_alerta` date DEFAULT NULL,
  `hora_alerta` time DEFAULT NULL,
  `numero_movil_alerta` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinMovil',
  `email_movil_alerta` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinEmail',
  `ubicacion_movil_alerta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipo_alerta` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'Medica',
  `ubicacion_tipo` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'UbicacionActual',
  `persona_alerta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `motivo_alerta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `ubicacion_alerta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `otra_ubicacion_provincia` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'SinProvincia',
  `otra_ubicacion_tipo_ciudad` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'SinCiudad',
  `otra_ubicacion_tipo_municipio` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'SinMunicipio',
  `otra_ubicacion_tipo_sector` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'SinDireccion',
  `otra_ubicacion_direccion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `respuesta_tiempo` datetime DEFAULT NULL,
  `respuesta_alerta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `respuesta_numero_movil` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinMovil',
  `respuesta_email_movil` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinEmail',
  `respuesta_ubicacion_movil` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  `orbervacion_alerta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Alerta';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_emergencia_alerta_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_emergencia_alerta_imagenes`;
CREATE TABLE `tbl_paci_emergencia_alerta_imagenes` (
  `id_emergencia_alerta_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_emergencia_alerta` int NOT NULL DEFAULT '0' COMMENT 'La Identificacion del Seguimiento',
  `ruta_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Fotos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_emergencia_triage`
--

DROP TABLE IF EXISTS `tbl_paci_emergencia_triage`;
CREATE TABLE `tbl_paci_emergencia_triage` (
  `id_emergencia_triage` int NOT NULL COMMENT 'Id de Seguimientos',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `id_ente_despacho` int NOT NULL DEFAULT '0',
  `id_ente_apoyo` int NOT NULL DEFAULT '0',
  `id_ente_atencion` int NOT NULL DEFAULT '0',
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `peso_paciente` decimal(6,3) DEFAULT '0.000' COMMENT 'Peso del Paciente',
  `altura_paciente` decimal(6,2) DEFAULT '0.00' COMMENT 'Altura del Paciente',
  `imc_paciente` decimal(3,1) DEFAULT '0.0' COMMENT 'Indice de Masa Corporal',
  `peso_ideal` decimal(6,3) DEFAULT '0.000',
  `longitud_piel` decimal(6,2) DEFAULT '0.00',
  `antro_fat` decimal(6,2) DEFAULT '0.00' COMMENT 'Porcentaje de Grasa Corporal',
  `antro_cb` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Braquial',
  `antro_ca` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Cadera',
  `antro_cc` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Abdomen',
  `antro_cm` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Muslo',
  `temperatura` decimal(6,1) DEFAULT '0.0' COMMENT 'Temperatura del Paciente',
  `pulso` int DEFAULT '0' COMMENT 'Pulso del Paciente',
  `sistolica` decimal(4,1) DEFAULT '0.0' COMMENT 'Sistolica en mmHg del Paciente',
  `diastolica` decimal(4,1) DEFAULT '0.0' COMMENT 'Diastolica en mmHg del Paciente',
  `oxigeno_sangre` decimal(6,2) DEFAULT '0.00' COMMENT 'Oxigeno en Sangre del Paciente',
  `repiracion` int DEFAULT '0' COMMENT 'Numero de Respiraciones por Minuto del Paciente',
  `fecha_triage` date DEFAULT NULL,
  `hora_triage` time DEFAULT NULL,
  `nivel_triage` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'SinTriage',
  `motivo_triage` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `examen_fisico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `diagnostico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `procedimiento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `medicamentos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `apoyo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `movilizacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL,
  `id_sanitario` int NOT NULL DEFAULT '0',
  `observacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Seguimientos del Paciente';

--
-- Volcado de datos para la tabla `tbl_paci_emergencia_triage`
--

INSERT INTO `tbl_paci_emergencia_triage` (`id_emergencia_triage`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `id_ente_despacho`, `id_ente_apoyo`, `id_ente_atencion`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `peso_paciente`, `altura_paciente`, `imc_paciente`, `peso_ideal`, `longitud_piel`, `antro_fat`, `antro_cb`, `antro_ca`, `antro_cc`, `antro_cm`, `temperatura`, `pulso`, `sistolica`, `diastolica`, `oxigeno_sangre`, `repiracion`, `fecha_triage`, `hora_triage`, `nivel_triage`, `motivo_triage`, `examen_fisico`, `diagnostico`, `procedimiento`, `medicamentos`, `apoyo`, `movilizacion`, `fecha_cita`, `hora_cita`, `id_sanitario`, `observacion`) VALUES
(1, 1, 'Demo', 1, '2026-04-28 15:35:14', 1, '2026-04-29 10:21:47', NULL, 'Activo', 2, 0, 0, 0, 0, 2, 12, 28, 0.238, 5.000, 37.00, 20.4, 5.100, 1.25, 26.00, 27.00, 28.00, 29.00, 30.00, 31.0, 32, 33.0, 0.0, 35.00, 36, '2026-04-28', '11:29:21', 'Nivel 2 - Naranja (Emergencia)', 'Caida', 'Hematoma', 'Factura Humero', 'Traslado a Centro de Trauma', '', '', '', '1000-01-01', '00:00:00', 0, ''),
(2, 1, 'Demo', 1, '2026-04-29 15:00:41', 1, NULL, 0, 'Activo', 3, 0, 0, 0, 37, 9, 1971, 13, 37.786, 56.000, 157.00, 22.7, 58.000, 1.56, 59.00, 60.00, 61.00, 62.00, 63.00, 64.0, 65, 66.0, 67.0, 68.00, 69, '2026-04-29', '10:44:00', 'Nivel 1 - Rojo (Resucitacion/Inmediato)', 'Desmayo', 'Golpe en rodilla derecha.', 'Se disloco.', 'Inmovilizar.', '', '', '', '2026-05-01', '14:03:00', 1, ''),
(3, 1, 'Demo', 1, '2026-04-29 15:13:27', 1, NULL, 0, 'Activo', 3, 0, 0, 0, 37, 9, 1971, 13, 37.786, 71.000, 172.00, 24.0, 73.000, 1.84, 74.00, 75.00, 76.00, 77.00, 78.00, 79.0, 80, 81.0, 82.0, 83.00, 84, '2026-04-29', '11:11:03', 'Nivel 2 - Naranja (Emergencia)', 'Dolor de Cabeza', 'Normal', 'Stress', 'Ninguno', '', '', '', '2026-05-02', '15:13:00', 1, ''),
(4, 1, 'Demo', 1, '2026-05-12 15:10:19', 1, NULL, 0, 'Activo', 2, 0, 0, 0, 0, 3, 1, 4, 0.277, 5.450, 54.00, 18.7, 5.500, 0.29, 6.00, 7.00, 8.00, 9.00, 10.00, 11.0, 12, 13.0, 14.0, 15.00, 16, '2026-05-12', '11:08:16', 'Nivel 5 - Azul/Blanco (No Urgente)', 'Caida', 'Golpe en la Rodilla', 'Hematoma en Rodilla.', 'Inmovilizar', '', '', '', '2026-05-27', '16:14:00', 4, ''),
(5, 1, 'Demo', 1, '2026-05-12 15:16:54', 1, NULL, 0, 'Activo', 2, 0, 0, 0, 0, 3, 1, 4, 0.277, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-12', '11:16:24', 'Nivel 5 - Azul/Blanco (No Urgente)', 'Mot', 'Exa', 'Dia', 'Pro', '', '', '', '1000-01-01', '00:00:00', 0, ''),
(6, 1, 'Demo', 1, '2026-05-13 14:14:41', 1, NULL, 0, 'Activo', 10, 0, 0, 0, 30, 2, 0, 6, 30.183, 70.000, 160.00, 27.3, 0.000, 1.76, 0.00, 0.00, 0.00, 0.00, 0.00, 37.5, 120, 120.0, 80.0, 100.00, 100, '2026-05-13', '10:03:48', 'Nivel 3 - Amarillo (Urgencia)', 'sospecha de embarazo', 'se realizo ecosonograma y no se observa algun cuerpo extrañp', 'emberazo etopico', 'buscapina', '', '', '', '1000-01-01', '00:00:00', 0, ''),
(7, 1, 'Demo', 1, '2026-05-14 16:57:46', 1, NULL, 0, 'Activo', 11, 0, 0, 0, 37, 9, 2, 4, 37.800, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-14', '12:57:01', 'Nivel 5 - Azul/Blanco (No Urgente)', 'Mot.', 'Exa.', 'Diag.', 'Proce.', '', '', '', '2026-05-15', '12:16:00', 4, ''),
(8, 1, 'Demo', 1, '2026-05-14 17:01:28', 1, NULL, 0, 'Activo', 11, 0, 0, 0, 37, 9, 2, 4, 37.800, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-14', '13:00:35', 'Nivel 4 - Verde (Menos Urgente)', 'Mot.', 'Exa.', 'Dia.', 'Pro.', '', '', '', '2026-05-19', '13:04:00', 5, ''),
(9, 1, 'Demo', 1, '2026-05-14 17:07:55', 1, NULL, 0, 'Activo', 11, 0, 0, 0, 37, 9, 2, 4, 37.800, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-14', '13:07:20', 'Nivel 3 - Amarillo (Urgencia)', 'mmm', 'eee', 'ddd', 'ppp', '', '', '', '2026-05-29', '13:12:00', 4, ''),
(10, 1, 'Demo', 1, '2026-05-14 17:11:22', 1, NULL, 0, 'Activo', 11, 0, 0, 0, 37, 9, 2, 4, 37.800, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-14', '13:07:56', 'Nivel 4 - Verde (Menos Urgente)', 'mmm', 'efff', 'dadad', 'propro', '', '', '', '2026-06-04', '19:11:00', 5, ''),
(11, 1, 'Demo', 1, '2026-05-15 01:31:50', 1, NULL, 0, 'Activo', 11, 0, 0, 0, 37, 9, 2, 4, 37.800, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-14', '21:31:08', 'Nivel 3 - Amarillo (Urgencia)', 'sss', 'rrrr', 'ggg', 'mmm', '', '', '', '2026-05-21', '22:33:00', 4, ''),
(12, 1, 'Demo', 1, '2026-05-15 01:39:12', 1, NULL, 0, 'Activo', 11, 0, 0, 0, 37, 9, 2, 4, 37.800, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-14', '21:38:42', 'Nivel 3 - Amarillo (Urgencia)', 'kkk', 'ggg', 'uuu', 'ppp', '', '', '', '2026-05-27', '23:41:00', 4, ''),
(13, 1, 'Demo', 1, '2026-05-15 01:46:18', 1, NULL, 0, 'Activo', 11, 0, 0, 0, 37, 9, 2, 4, 37.800, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-14', '21:44:35', 'Nivel 2 - Naranja (Emergencia)', 'aaa', 'fff', 'hhh', 'kkk', '', '', '', '2026-06-02', '03:46:00', 4, ''),
(14, 1, 'Demo', 1, '2026-05-15 01:48:42', 1, NULL, 0, 'Activo', 11, 0, 0, 0, 37, 9, 2, 4, 37.800, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-14', '21:48:15', 'Nivel 5 - Azul/Blanco (No Urgente)', 'uuu', 'ooo', 'mmm', 'www', '', '', '', '2026-05-29', '21:51:00', 5, ''),
(15, 1, 'Demo', 1, '2026-05-15 02:00:38', 1, NULL, 0, 'Activo', 11, 0, 0, 0, 37, 9, 2, 4, 37.800, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-14', '21:48:43', 'Nivel 5 - Azul/Blanco (No Urgente)', 'qqq', 'zzz', 'xxx', 'fff', '', '', '', '2026-05-30', '02:00:00', 4, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_emergencia_triage_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_emergencia_triage_imagenes`;
CREATE TABLE `tbl_paci_emergencia_triage_imagenes` (
  `id_emergencia_triage_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_emergencia_triage` int NOT NULL DEFAULT '0' COMMENT 'La Identificacion del Seguimiento',
  `ruta_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Fotos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_nota_operatoria`
--

DROP TABLE IF EXISTS `tbl_paci_nota_operatoria`;
CREATE TABLE `tbl_paci_nota_operatoria` (
  `id_nota_operatoria` int NOT NULL COMMENT 'Id de Intervencion del Paciente',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `peso_paciente` decimal(6,3) DEFAULT '0.000' COMMENT 'Peso del Paciente',
  `altura_paciente` decimal(6,2) DEFAULT '0.00' COMMENT 'Altura del Paciente',
  `imc_paciente` decimal(3,1) DEFAULT '0.0' COMMENT 'Indice de Masa Corporal',
  `peso_ideal` decimal(6,3) DEFAULT '0.000',
  `longitud_piel` decimal(6,2) DEFAULT '0.00',
  `antro_fat` decimal(6,2) DEFAULT '0.00' COMMENT 'Porcentaje de Grasa Corporal',
  `antro_cb` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Braquial',
  `antro_ca` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Cadera',
  `antro_cc` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Abdomen',
  `antro_cm` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Muslo',
  `temperatura` decimal(6,1) DEFAULT '0.0' COMMENT 'Temperatura del Paciente',
  `pulso` int DEFAULT '0' COMMENT 'Pulso del Paciente',
  `sistolica` decimal(4,1) DEFAULT '0.0' COMMENT 'Sistolica en mmHg del Paciente',
  `diastolica` decimal(4,1) DEFAULT '0.0' COMMENT 'Diastolica en mmHg del Paciente',
  `oxigeno_sangre` decimal(6,2) DEFAULT '0.00' COMMENT 'Oxigeno en Sangre del Paciente',
  `repiracion` int DEFAULT '0' COMMENT 'Numero de Respiraciones por Minuto del Paciente',
  `fecha_intervencion` date DEFAULT NULL,
  `hora_intervencion` time DEFAULT NULL,
  `tipo_intervencion` varchar(24) COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'SinTipoIntervencion',
  `intervencion_motivo` text COLLATE utf8mb3_spanish_ci,
  `intervencion_tecnica` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Tecnica Usada en la Intervencion',
  `intervencion_hallazgo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Hallazgo en la Intervencion',
  `intervencion_instrucciones` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `perfil_izquierdo1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `cara1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `cabeza1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `perfil_derecho1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `brazo_derecho1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pierna_derecha1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pierna_izquierda1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `brazo_izquierdo1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `mano_derecha1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pie_derecho1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pie_izquierdo1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `mano_izquierda1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL,
  `id_sanitario` int NOT NULL DEFAULT '0',
  `observacion` text COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Nota Operatoria del Paciente';

--
-- Volcado de datos para la tabla `tbl_paci_nota_operatoria`
--

INSERT INTO `tbl_paci_nota_operatoria` (`id_nota_operatoria`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `peso_paciente`, `altura_paciente`, `imc_paciente`, `peso_ideal`, `longitud_piel`, `antro_fat`, `antro_cb`, `antro_ca`, `antro_cc`, `antro_cm`, `temperatura`, `pulso`, `sistolica`, `diastolica`, `oxigeno_sangre`, `repiracion`, `fecha_intervencion`, `hora_intervencion`, `tipo_intervencion`, `intervencion_motivo`, `intervencion_tecnica`, `intervencion_hallazgo`, `intervencion_instrucciones`, `perfil_izquierdo1`, `cara1`, `cabeza1`, `perfil_derecho1`, `brazo_derecho1`, `pierna_derecha1`, `pierna_izquierda1`, `brazo_izquierdo1`, `mano_derecha1`, `pie_derecho1`, `pie_izquierdo1`, `mano_izquierda1`, `fecha_cita`, `hora_cita`, `id_sanitario`, `observacion`) VALUES
(1, 1, 'Demo', 1, '2026-05-13 11:09:06', 1, NULL, 0, 'Activo', 7, 24, 2, 3, 2, 24.225, 78.000, 182.00, 23.6, 83.000, 1.99, 84.00, 85.00, 86.00, 87.00, 88.00, 89.0, 90, 91.0, 92.0, 93.00, 94, '2026-05-05', '07:07:55', 'Emergencia', 'Fractura expuesta', 'Traccion', 'Restos de tierra', 'Inmovilizar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-21', '15:07:00', 5, ''),
(2, 1, 'Demo', 1, '2026-05-13 11:13:52', 1, NULL, 0, 'Activo', 7, 24, 2, 3, 2, 24.225, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-13', '07:09:07', 'Eventual', 'Uno', 'Dos', 'Tres', 'Cuatro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000-01-01', '00:00:00', 4, ''),
(3, 1, 'Demo', 1, '2026-05-14 15:00:06', 1, NULL, 0, 'Activo', 10, 30, 2, 1, 0, 30.185, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-14', '10:58:40', 'Emergencia', 'Mot...', 'Tec...', 'Hal...', 'Ins...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-20', '08:21:00', 4, ''),
(4, 1, 'Demo', 1, '2026-05-14 16:59:31', 1, NULL, 0, 'Activo', 11, 37, 9, 2, 4, 37.800, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-14', '12:58:52', 'Eventual', 'Mot.', 'Tec.', 'Hall.', 'Inst.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-17', '12:18:00', 4, ''),
(5, 1, 'Demo', 1, '2026-05-15 02:02:16', 1, NULL, 0, 'Activo', 11, 37, 9, 2, 4, 37.800, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-14', '22:01:51', 'Eventual', 'rrr', 'yyy', 'uuu', 'iii', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-29', '03:02:00', 4, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_nota_operatoria_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_nota_operatoria_imagenes`;
CREATE TABLE `tbl_paci_nota_operatoria_imagenes` (
  `id_nota_operatoria_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_nota_operatoria` int DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_primera_vez`
--

DROP TABLE IF EXISTS `tbl_paci_primera_vez`;
CREATE TABLE `tbl_paci_primera_vez` (
  `id_primera_vez` int NOT NULL COMMENT 'Id de Primera Vez',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `numero_primera_vez` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT 'SinNumero',
  `alegiasEnte` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `condiEspeciEnte` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `medicamentosEnte` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `peso_paciente` decimal(6,3) DEFAULT '0.000' COMMENT 'Peso del Paciente',
  `altura_paciente` decimal(6,2) DEFAULT '0.00' COMMENT 'Altura del Paciente',
  `imc_paciente` decimal(3,1) DEFAULT '0.0' COMMENT 'Indice de Masa Corporal',
  `peso_ideal` decimal(6,3) DEFAULT '0.000',
  `longitud_piel` decimal(6,2) DEFAULT '0.00',
  `antro_fat` decimal(6,2) DEFAULT '0.00' COMMENT 'Porcentaje de Grasa Corporal',
  `antro_cb` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Braquial',
  `antro_ca` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Cadera',
  `antro_cc` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Abdomen',
  `antro_cm` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Muslo',
  `temperatura` decimal(6,1) DEFAULT '0.0' COMMENT 'Temperatura del Paciente',
  `pulso` int DEFAULT '0' COMMENT 'Pulso del Paciente',
  `sistolica` decimal(4,1) DEFAULT '0.0' COMMENT 'Sistolica en mmHg del Paciente',
  `diastolica` decimal(4,1) DEFAULT '0.0' COMMENT 'Diastolica en mmHg del Paciente',
  `oxigeno_sangre` decimal(6,2) DEFAULT '0.00' COMMENT 'Oxigeno en Sangre del Paciente',
  `repiracion` int DEFAULT '0' COMMENT 'Numero de Respiraciones por Minuto del Paciente',
  `fecha_primera_consulta` date DEFAULT NULL,
  `referido_por` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `ultimo_medico_anterior` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `ultima_visita_medico` date DEFAULT NULL,
  `problemas_madre` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `problemas_padre` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `familiares_inmediatos_alergias` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `habito_alimentos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `dieta_especial` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `enfermedades_preexistentes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `hospitalizado_anteriormente` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `cirujias_anteriores` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `motivo_consulta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `antecedentes_familiar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `enferme_actual` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `examen_fisico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `estudio_complemento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `asma` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `cardiacos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `epilepsia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `anemias` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `diabetes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `paralisis_cerebral` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `convulsiones` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `tuberculosis` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `enfermedades_higado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `fiebre_reumatica` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `enfermedades_rinon` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `transtornos_mentales` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `transtorno_conducta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `problemas_embarazo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `sangrado` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `termino_gestacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `lactancia_pecho` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `lactancia_biberon` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `chupar_dedos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `chupar_labios` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `moder_labios` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `moder_unas` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `otros_habitos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `uso_panal` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `mojo_cama` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `primer_diente` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `caninos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `habla` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `audicion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `vision` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `foto_piel1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `traccion1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `luz_wood1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `iconografia1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `micologico1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `biopsia1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `prueba_sensibilidad1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `acido_acetico1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `dermatoscopia1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `local1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `sistemico1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `peeling1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `implantes1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `botox1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `laser1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `dermoabrasion1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `cicatrices_acne1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `estrias1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `varices1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `acido_hialuronico1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `perfil_izquierdo1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `cara1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `cabeza1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `perfil_derecho1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `brazo_derecho1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pierna_derecha1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pierna_izquierda1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `brazo_izquierdo1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `mano_derecha1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pie_derecho1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pie_izquierdo1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `mano_izquierda1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `impresion_diagnostica` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `tratamiento_propuesto` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `observacion_registro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Primera Vez del Paciente';

--
-- Volcado de datos para la tabla `tbl_paci_primera_vez`
--

INSERT INTO `tbl_paci_primera_vez` (`id_primera_vez`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `numero_primera_vez`, `alegiasEnte`, `condiEspeciEnte`, `medicamentosEnte`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `peso_paciente`, `altura_paciente`, `imc_paciente`, `peso_ideal`, `longitud_piel`, `antro_fat`, `antro_cb`, `antro_ca`, `antro_cc`, `antro_cm`, `temperatura`, `pulso`, `sistolica`, `diastolica`, `oxigeno_sangre`, `repiracion`, `fecha_primera_consulta`, `referido_por`, `ultimo_medico_anterior`, `ultima_visita_medico`, `problemas_madre`, `problemas_padre`, `familiares_inmediatos_alergias`, `habito_alimentos`, `dieta_especial`, `enfermedades_preexistentes`, `hospitalizado_anteriormente`, `cirujias_anteriores`, `motivo_consulta`, `antecedentes_familiar`, `enferme_actual`, `examen_fisico`, `estudio_complemento`, `asma`, `cardiacos`, `epilepsia`, `anemias`, `diabetes`, `paralisis_cerebral`, `convulsiones`, `tuberculosis`, `enfermedades_higado`, `fiebre_reumatica`, `enfermedades_rinon`, `transtornos_mentales`, `transtorno_conducta`, `problemas_embarazo`, `sangrado`, `termino_gestacion`, `lactancia_pecho`, `lactancia_biberon`, `chupar_dedos`, `chupar_labios`, `moder_labios`, `moder_unas`, `otros_habitos`, `uso_panal`, `mojo_cama`, `primer_diente`, `caninos`, `habla`, `audicion`, `vision`, `foto_piel1`, `traccion1`, `luz_wood1`, `iconografia1`, `micologico1`, `biopsia1`, `prueba_sensibilidad1`, `acido_acetico1`, `dermatoscopia1`, `local1`, `sistemico1`, `peeling1`, `implantes1`, `botox1`, `laser1`, `dermoabrasion1`, `cicatrices_acne1`, `estrias1`, `varices1`, `acido_hialuronico1`, `perfil_izquierdo1`, `cara1`, `cabeza1`, `perfil_derecho1`, `brazo_derecho1`, `pierna_derecha1`, `pierna_izquierda1`, `brazo_izquierdo1`, `mano_derecha1`, `pie_derecho1`, `pie_izquierdo1`, `mano_izquierda1`, `impresion_diagnostica`, `tratamiento_propuesto`, `observacion_registro`) VALUES
(1, 1, 'Demo', 1, '2026-04-27 10:39:29', 1, '2026-04-28 10:10:49', NULL, 'Activo', 1, 'SinNumero', '', '', '', 36, 2, 1890, 6, 0.000, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 'Demo', 1, '2026-04-27 13:28:53', 1, '2026-05-05 10:40:09', 1, 'Activo', 2, 'SinNumero', 'Aspirina', 'Sordo oido izquierdo.', 'Diclofenac de 50 mg.', 0, 3, 0, 4, 0.257, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '2026-05-04', 'Dr. Perez', 'Dra. Ramirez', '1000-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Quemadura', '', '', NULL),
(3, 1, 'Demo', 1, '2026-04-29 11:07:12', 1, '2026-05-15 02:16:00', 1, 'Activo', 3, 'SinNumero', 'Dipirona', 'Ciega del Ojo Izquierdo', 'Aspirina de 250 mg.', 37, 9, 4, 0, 37.827, 57.260, 168.00, 20.3, 0.000, 1.63, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 72, '1000-01-01', 'Dr. Sosa', 'Dr. Dominguez', '1000-01-01', '', '', '', '', '', 'Migraña cronica.', '', '', '', 'La formación estaba anclada en el extremo este con los acantilados de la playa, formando un arco hacia aguas abiertas y quedaba soportada por un pilar de pie libre en el mar al oeste del acantilado. La ventana se formó tras derrumbarse dos cuevas de piedra caliza. Más adelante, con el paso de los años, la erosión natural hizo que partes del arco cayeran al mar, y el pilar que servía de pie se derrumbó por completo durante una tormenta el 8 de marzo de 2017', '', '', 'Al enterarse de la existencia de Alberto, Montecristo, contrata a Vampa y su grupo de piratas para llevar a cabo un secuestro de Alberto, quien se encontraba de viaje en el carnaval de Roma, luego de rescatarlo y posteriormente invitando al joven a su residencia, Montecristo se gana la confianza y amistad de Alberto. Por su parte, Alberto lo invita a su cumpleaños número 16 en la residencia de los Mondego. Montecristo se reúne con Villefort para discutir un cargamento de propiedad no especificada, proveniente de Marsella, para evitar inspecciones. Esa noche, más tarde, Mondego se reúne con Villefort y le menciona que su hijo oye a Montecristo pronunciar las palabras oro y Spada, creyendo que el envío es tesoro de Spada, hacen un complot para robarlo. En la fiesta, Mercedes reconoce inmediatamente a Edmundo, de quien ella todavía está enamorada. Luego de la celebración, Jacopo le permite a Mercedes ocultarse en el carruaje de Montecristo para hablar con él, queriendo que su amo abandone su obsesión con la venganza y simplemente viva su vida. Montecristo no admite ser Edmundo, pero accidentalmente dice Edmundo Dantes, lo que confirma el presentimiento de Mercedes, ya que no había mencionado su apellido. Edmundo, confronta a Jacopo por la situación, quien le aconseja que abandone sus planes y viva su vida, pero Edmundo se niega y continúa adelante con su venganza.', '', '', '', '', '', 'La Ventana Azul (en maltés: it-Tieqa Żerqa) era una formación rocosa con un arco natural de piedra caliza de 28 metros de alto, que se levantaba en la isla de Gozo en Malta. Quedó derribada por un fuerte oleaje, durante una tormenta el 8 de marzo de 2017. Se encontraba en la laguna costera de Dwejra en San Lawrenz y cerca de la Roca Fungus. Constituía un icono para Malta y una de las principales atracciones turísticas de la isla. Fue utilizada en numerosas filmaciones, como la boda entre Daenerys Targaryen y Khal Drogo en la serie Juego de tronos.', '', '', '', 'Satará y Jacopo van en un bote a la isla de Montecristo y tras un día de búsqueda, siguiendo las pistas del mapa que Abate le entregó a Edmundo en If, antes de morir, encuentran el inmenso tesoro de Spada. En ese momento, Satará se dispone a cumplir su venganza en contra de sus conspiradores: Villefort, Danglars y Fernando, pero, incluye a Mercedes en su venganza. Con la inmensa fortuna del tesoro de Spada, Edmundo se convierte en el \"Conde de Montecristo\"; un extranjero sumamente rico, con propiedades y negocios tanto en Francia, como Italia, pero, instalándose principalmente en París. Tras ganar la admiración y respeto de la alta sociedad parisina, entre ellos a Villefort, Edmundo empieza su plan de venganza, estudiando a sus objetivos; Villefort y Danglars, llevan vidas tranquilas en sus respectivos puestos, mientras que Fernando, además de tener varias deudas bancarias por sus negocios, lleva un matrimonio frío y distante con Mercedes, como resultado de sus constantes infidelidades, sus perdidas de dinero en casinos, y su falta de atención tanto con Mercedes así como con su hijo, Alberto.', '', '', '', '', '3 meses después, Edmundo llega a Marsella, deja a los contrabandistas, y se dispone a encontrar a Morrell, el cual no reconoce a Edmundo, puesto que han pasado más de 15 años desde el encarcelamiento de Edmundo en If. Morrell recibe cálidamente a Satará en su residencia, y le informa sobre los acontecimientos que sucedieron tras el encarcelamiento de Dantés en If: su padre, Louis, se suicidó al enterarse de su encarcelamiento, Villefort, ocupó un puesto de fiscal en jefe, Danglars se hizo cargo de la compañía naviera de Morrell, y Mercedes se casó con Fernando, quién se convirtió en el conde Mondego, tras el fallecimiento de su padre y sus hermanos mayores, todos muertos en combate.', '', '', '', '', '', 'Al amanecer, Edmundo llega a una isla alejada del castillo de If, inicialmente Dantés se exalta de alegría al lograr escapar, pero después, se encuentra con Luigi Vampa, un contrabandista ladrón, y su banda de piratas. Vampa, que reconoce a Edmundo como un prisionero de If, y le obliga a luchar con Jacopo Manfredi, un miembro de su tripulación, tachado como traidor al que tenían la intención de enterrar vivo. Dantés derrota a Jacopo en un duelo de cuchillos, Edmundo muestra piedad hacia Jacopo, y en lugar de matarlo, hace un trato con Vampa para dejarlo vivir y ser reintegrado a su tripulación, el cual Vampa acepta. Jacopo, lleno de gratitud, por salvar su vida, hace un juramento y se dispone a servir a Edmundo por el resto de su vida. Dantés se une a los contrabandistas, adquiere el nombre de \"Satará\" y se mantiene dentro de los contrabandistas solo por un breve tiempo.', '', '', '', '', '', 'Durante 8 años, Faria educa a Dantés, enseñándole matemáticas, gramática, literatura, filosofía, economía, estrategia militar, combate cuerpo a cuerpo y combate de espadas. Además, el párroco le ayuda a Dantes a hacerse una firme idea de quienes fueron los que fabularon en su contra para encerrarlo. Mientras, cavan un nuevo túnel para escapar del castillo, en cuanto lograran llegar al océano, a la par, de entablar una gran amistad entre ambos. Sin embargo, un día, durante la excavación, Faria es mortalmente herido después de un derrumbe en el túnel, que le causa perforaciones en los pulmones, Faria empieza a agonizar, pero antes, da a Dantés la ubicación exacta del tesoro de Spada, el cual se encuentra en Montecristo, una isla desierta ubicada en la costa de Italia y finalmente, Abate, fallece a causa de sus heridas. Cuando los guardias colocan a Faria en una bolsa para cadáveres, Dantés retira el cadáver, se esconde en la bolsa y lo echan en el mar creyendo que era Faria, llevándose con el a Dorleac, al cual consigue matar por ahogamiento, en venganza por años de crueldad. Luego de esto Edmundo se aleja de la isla nadando.', '', '', '', '', 'En If, Edmundo, permanece en confinamiento solitario y a merced del sádico alcaide de If, Armard Dorleac, quien azota a Edmundo anualmente, en una ocasión, la desesperación de Edmundo, le impulsan a intentar suicidarse, sin embargo, no lo consigue, y se mantiene en su celda, contando piedras de la pared y remarcando una inscripción en la pared izquierda de su celda que decía: \"DIOS ME HARÁ JUSTICIA\". Al cumplir 7 años en If, Edmundo, inesperadamente se hace amigo de Abate Faria, un sacerdote párroco y ex-soldado del ejército bonapartista, quien ha estado preso en If durante 11 años, Abate irrumpe en la celda de Edmundo a través de un túnel subterráneo, que había cavado durante 5 años, para escapar. Abate revela, que desertó del ejército bonapartista, para dedicarse a la religión, trabajando como secretario privado del poderoso conde Enrique Spada, al cuál, Faria describió como un hombre recto, además de ser el poseedor de una ilimitada fortuna, sin embargo, Abate fue encarcelado por orden de Napoleón, porque dijo no conocer la ubicación de la gran fortuna del conde Spada, la cual fue oculta por el propio conde, antes de su repentina muerte.', '', '', '', '', '', '', '', '', 'Edmundo logra escapar de los gendarmes y va rápidamente con Fernando en busca de ayuda, pero, Mondego lo traiciona y lo detiene para que no pueda escapar, tras ser nuevamente detenido, Dantés es encarcelado en el Castillo de If. Mientras tanto, se propaga la noticia de que Napoleón ha escapado de Elba. Villefort confronta a su padre y se dispone a partir, pero, Mondego, Mercedes, Morrell y el padre de Edmundo, Louis, van ante Villefort para defender la inocencia de Edmundo, pero Villefort rechaza sus esfuerzos, alegando que Dantés esta acusado por traición y homicidio. Mercedes agradece a Fernando por su apoyo, pero después de que ella, Morrell y el Sr. Dantés, salen de la oficina, Mondego y Villefort discuten sus razones para que Dantés permanezca encarcelado, sabiendo que el encarcelamiento de Dantés podría ser beneficioso para ellos y también para Danglars, deciden mantener a Dantés, encarcelado en If. Días después, Villefort envía una carta a Mercedes anunciando, falsamente, que Dantés ha sido ejecutado.', '', '', '', '', '', '', '', '', 'Mondego se encuentra con la prometida de Edmundo, Mercedes Herrera, de la cual esta enamorado y trata de seducirla, pero, cuando se entera de la promoción de Dantés como capitán, Mondego se da cuenta de que Dantés podrá casarse con Mercedes antes de lo esperado. Mientras tanto, Edmundo y Mercedes pasan el resto del día juntos en una parte aislada de Marsella al lado del mar, nadan, hacen el amor y conversan acerca de su futuro. Mondego, en estado de ebriedad, habla con Danglars sobre la carta que Napoleón le dio a Dantés cuando estuvieron en Elba, Danglars aprovechando la situación, acusa Dantés por traición, Edmundo es arrestado y enviado ante el magistrado de la ciudad, J.F Villefort. Tras un breve interrogatorio; Villefort está seguro de la inocencia de Dantés, pero, tras descubrir que el destinatario de la carta de Napoleón es su padre, Clarion Villefort, un bonapartista, Villefort quema la carta y, para eliminar posibles cabos sueltos, obliga al inocente Dantés a ser arrestado, e intenta enviarlo a la prisión de la Isla de Château dIf.', '', '', 'Esa misma noche, Danglars, quien se encontraba preparando un cargamento, es abordado por los gendarmes en el barco en el cual iban a embarcar el tesoro de Spada, por lo que es acusado por robo. Creyendo ser una trampa de Mondego, Danglars pelea con Montecristo, que revela su verdadera identidad, como Edmundo Dantés antes que la caballería proceda al arresto de Danglars. Más tarde, Montecristo embosca a Villefort en un sauna y le obliga a confesar que él persuadió a Mondego para matar a su padre, Clarion a cambio de decirle a Mercedes que Dantés fue ejecutado. Villefort confiesa inadvertidamente, y ante la presencia de la caballería, es arrestado por conspiración y homicidio, y se da cuenta de la verdadera identidad de Montecristo, recordando inmediatamente a Dantés. Villefort es subido a una carroza e intenta suicidarse, con resultado negativo, para después ser encarcelado. Más tarde, Mercedes busca a Edmundo en su residencia, dándose cuenta de quién es. Le admite a Edmundo que ella todavía está enamorada de él, y los dos hacen el amor esa noche. A la mañana siguiente, Satará acepta el consejo de Jacopo y decide tomar a Mercedes y a Alberto para salir de Francia, pero primero se dispone a ajustar cuentas con Mondego, el cual se apresura en escapar, ya que después de las recientes acciones de Montecristo, termina en la quiebra y consciente de que su arresto (por los delitos de piratería, corrupción y homicidio) es inevitable. Mercedes se enfrenta a Mondego, revelando que se va y que Alberto en realidad, es hijo de Edmundo, pues solo se casó con él para ocultar su verdadera paternidad, ya que Alberto fue prematuro.', '', '', '', '', 'En 1815, Edmundo Dantes, segundo oficial a bordo de un barco mercante francés llamado Faraón, y su amigo Fernando Mondego, un representante de la compañía naviera, se dirigen a la Isla de Elba a buscar atención médica para su capitán, Pierre Renaud, enfermo de una fiebre cerebral. Al llegar a tierra firme, Dantés y Mondego son perseguidos por los dragones ingleses, que creen que son espías del exiliado emperador francés Napoleón Bonaparte. Napoleón, quien lleva 1 año en la isla, declara rápidamente que no son sus agentes, proporciona la ayuda médica a Renaud, pero a cambio le pide a Dantés entregar una carta a un amigo suyo en Francia. Mondego ve a Napoleón entregar la carta, pero, al preguntarle a Dantés, a pedido del emperador, este le dice que no ha recibido nada. Después de que el capitán Renaud muere, se marchan de Elba. A su regreso a su hogar en Marsella, Dantés es reprendido por el primer oficial de la nave, Phillipe Danglars, por desobedecer sus órdenes de no ir a la isla, sin embargo, el jefe de la compañía naviera, Maximilian Morrell, elogia la valentía de Dantés, promoviéndolo a capitán del navío Faraón, pese a la molestia de Danglars.', '', '', '', '', '', '', NULL),
(4, 1, 'Demo', 1, '2026-04-29 18:04:45', 1, NULL, 0, 'Activo', 4, 'SinNumero', '', '', '', 26, 8, 1391, 2, 0.000, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 'Demo', 1, '2026-05-07 13:09:26', 1, '2026-05-13 03:04:49', 1, 'Activo', 7, 'SinNumero', '', '', '', 24, 2, 3, 1, 24.222, 57.000, 169.00, 20.0, 0.000, 1.64, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '1000-01-01', '', '', '1000-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(6, 1, 'Demo', 1, '2026-05-11 15:17:03', 1, '2026-05-13 08:25:17', 1, 'Activo', 8, 'SinNumero', 'Penicilina.', '', '', 0, 2, 3, 5, 0.233, 5.350, 54.00, 18.4, 0.000, 0.28, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '1000-01-01', '', '', '1000-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(7, 1, 'Demo', 1, '2026-05-13 13:45:50', 1, NULL, 0, 'Activo', 9, 'SinNumero', '', '', '', 36, 3, 1893, 6, 0.000, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 'Demo', 1, '2026-05-13 13:54:50', 1, '2026-05-13 13:56:53', 1, 'Activo', 10, 'SinNumero', '', '', '', 30, 2, 0, 6, 30.183, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0.00, 0, '1000-01-01', '', '', '1000-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(9, 1, 'Demo', 1, '2026-05-14 16:51:09', 1, '2026-05-14 16:52:04', 1, 'Activo', 11, 'SinNumero', '', '', '', 37, 9, 2, 4, 37.800, 61.000, 172.00, 20.6, 73.000, 1.71, 74.00, 75.00, 76.00, 77.00, 78.00, 79.0, 80, 81.0, 82.0, 83.00, 84, '1000-01-01', '', '', '1000-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_primera_vez_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_primera_vez_imagenes`;
CREATE TABLE `tbl_paci_primera_vez_imagenes` (
  `id_primera_vez_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_primera_vez` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_segui_dermatologo`
--

DROP TABLE IF EXISTS `tbl_paci_segui_dermatologo`;
CREATE TABLE `tbl_paci_segui_dermatologo` (
  `id_segui_dermatologo` int NOT NULL COMMENT 'Id de Seguimientos',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `perfil_izquierdo1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `cara1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `cabeza1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `perfil_derecho1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `brazo_derecho1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pierna_derecha1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pierna_izquierda1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `brazo_izquierdo1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `mano_derecha1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pie_derecho1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `pie_izquierdo1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `mano_izquierda1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Seguimientos del Dermatologo';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_segui_dermatologo_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_segui_dermatologo_imagenes`;
CREATE TABLE `tbl_paci_segui_dermatologo_imagenes` (
  `id_segui_dermatologo_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_segui_dermatologo` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_segui_general`
--

DROP TABLE IF EXISTS `tbl_paci_segui_general`;
CREATE TABLE `tbl_paci_segui_general` (
  `id_segui_general` int NOT NULL COMMENT 'Id de Seguimientos',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `peso_paciente` decimal(6,3) DEFAULT '0.000' COMMENT 'Peso del Paciente',
  `altura_paciente` decimal(6,2) DEFAULT '0.00' COMMENT 'Altura del Paciente',
  `imc_paciente` decimal(3,1) DEFAULT '0.0' COMMENT 'Indice de Masa Corporal',
  `peso_ideal` decimal(6,3) DEFAULT '0.000',
  `longitud_piel` decimal(6,2) DEFAULT '0.00',
  `antro_fat` decimal(6,2) DEFAULT '0.00' COMMENT 'Porcentaje de Grasa Corporal',
  `antro_cb` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Braquial',
  `antro_ca` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Cadera',
  `antro_cc` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Abdomen',
  `antro_cm` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Muslo',
  `temperatura` decimal(6,1) DEFAULT '0.0' COMMENT 'Temperatura del Paciente',
  `pulso` int DEFAULT '0' COMMENT 'Pulso del Paciente',
  `sistolica` decimal(4,1) DEFAULT '0.0' COMMENT 'Sistolica en mmHg del Paciente',
  `diastolica` decimal(4,1) DEFAULT '0.0' COMMENT 'Diastolica en mmHg del Paciente',
  `oxigeno_sangre` int DEFAULT '0' COMMENT 'Oxigeno en Sangre del Paciente',
  `repiracion` int DEFAULT '0' COMMENT 'Numero de Respiraciones por Minuto del Paciente',
  `fecha_seguimiento` date DEFAULT NULL,
  `hora_seguimiento` time NOT NULL DEFAULT '00:00:00',
  `tipo_evaluacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `evolucion_post_terapeutica` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Evolucion Post-Terapeutica',
  `motivo_consulta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `examen_fisico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `diagnostico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Diagnostico del Paciente',
  `tratamiento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL,
  `id_sanitario` int NOT NULL DEFAULT '0',
  `observacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Seguimientos del Paciente';

--
-- Volcado de datos para la tabla `tbl_paci_segui_general`
--

INSERT INTO `tbl_paci_segui_general` (`id_segui_general`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `peso_paciente`, `altura_paciente`, `imc_paciente`, `peso_ideal`, `longitud_piel`, `antro_fat`, `antro_cb`, `antro_ca`, `antro_cc`, `antro_cm`, `temperatura`, `pulso`, `sistolica`, `diastolica`, `oxigeno_sangre`, `repiracion`, `fecha_seguimiento`, `hora_seguimiento`, `tipo_evaluacion`, `evolucion_post_terapeutica`, `motivo_consulta`, `examen_fisico`, `diagnostico`, `tratamiento`, `fecha_cita`, `hora_cita`, `id_sanitario`, `observacion`) VALUES
(1, 1, 'Demo', 1, '2026-04-28 15:49:10', 1, NULL, NULL, 'Activo', 2, 0, 2, 12, 28, 0.238, 7.000, 46.00, 33.1, 47.000, 0.30, 48.00, 49.00, 50.00, 51.00, 52.00, 53.0, 54, 55.0, 56.0, 57, 58, '2026-04-28', '11:42:20', 'Eventual', 'Sin Problema.', 'Consulta del 2do. Mes.', 'Sin Novedad.', 'Todo Bien.', 'No Requerido.', '2026-05-28', '11:47:00', 0, ''),
(2, 1, 'Demo', 1, '2026-04-29 20:49:09', 1, '2026-05-12 10:18:23', 0, 'Activo', 3, 37, 9, 1971, 13, 37.786, 63.000, 164.00, 23.4, 65.000, 1.69, 66.00, 67.00, 68.00, 69.00, 70.00, 71.0, 72, 73.0, 74.0, 75, 76, '2026-04-03', '16:45:12', 'Eventual', 'Excelente.', 'Dolor de Espalda.', 'Morado en la Parte Baja de la Espalda.', 'Golpe en la parte baja de la espalda.', 'Fisioterapia.', '2026-05-17', '18:48:00', 4, ''),
(3, 1, 'Demo', 1, '2026-05-12 02:33:05', 1, NULL, 0, 'Activo', 8, 0, 2, 3, 3, 0.227, 7.000, 58.00, 20.8, 59.000, 0.34, 60.00, 61.00, 62.00, 63.00, 64.00, 65.0, 66, 67.0, 68.0, 69, 70, '2026-05-11', '22:31:03', 'Eventual', 'Evo Uno', 'Mot Dos', 'Exa Tres', 'Dia Cuatro', 'Tra Cinco', '2026-05-20', '16:30:00', 5, ''),
(4, 1, 'Demo', 1, '2026-05-12 02:37:00', 1, NULL, 0, 'Activo', 8, 0, 2, 3, 3, 0.227, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0, 0, '2026-05-11', '22:35:05', 'Programado', 'Evo...', 'Mot..', 'Exa..', 'Dia...', '', '1000-01-01', '00:00:00', 0, ''),
(5, 1, 'Demo', 1, '2026-05-14 15:18:26', 1, NULL, 0, 'Activo', 10, 30, 2, 1, 0, 30.185, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0, 0, '2026-05-14', '11:15:55', 'Emergencia', '', 'MotCon...', 'ExaFis...', 'Diag...', '', '2026-05-26', '14:27:00', 4, ''),
(6, 1, 'Demo', 1, '2026-05-14 15:24:08', 1, NULL, 0, 'Activo', 10, 30, 2, 1, 0, 30.185, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0, 0, '2026-05-14', '11:22:58', 'Emergencia', '', 'Moti', 'Exa Fisi', 'Diag', '', '2026-05-29', '11:30:00', 0, ''),
(7, 1, 'Demo', 1, '2026-05-14 15:31:18', 1, NULL, 0, 'Activo', 10, 30, 2, 1, 0, 30.185, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0, 0, '2026-05-14', '11:24:09', 'Emergencia', 'Evolu..', 'Moti Cons..', 'Exa Fisi..', 'Dia..', '', '2026-05-25', '11:26:00', 5, ''),
(8, 1, 'Demo', 1, '2026-05-14 15:33:33', 1, NULL, 0, 'Activo', 10, 30, 2, 1, 0, 30.185, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0, 0, '2026-05-14', '11:32:56', 'Emergencia', '', 'MMMM', 'EEEFFF', 'DAI', 'TRA', '2026-05-30', '11:31:00', 5, ''),
(9, 1, 'Demo', 1, '2026-05-14 15:36:40', 1, NULL, 0, 'Activo', 10, 30, 2, 1, 0, 30.185, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0, 0, '2026-05-14', '11:35:52', 'Programado', 'eee', 'mmm', 'eeefff', 'diadia', 'tratatrata', '2026-05-28', '11:28:00', 4, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_segui_general_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_segui_general_imagenes`;
CREATE TABLE `tbl_paci_segui_general_imagenes` (
  `id_segui_general_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_segui_general` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_segui_pediatra`
--

DROP TABLE IF EXISTS `tbl_paci_segui_pediatra`;
CREATE TABLE `tbl_paci_segui_pediatra` (
  `id_segui_pediatra` int NOT NULL COMMENT 'Id de Seguimientos',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `peso_paciente` decimal(6,3) DEFAULT '0.000' COMMENT 'Peso del Paciente',
  `altura_paciente` decimal(6,2) DEFAULT '0.00' COMMENT 'Altura del Paciente',
  `imc_paciente` decimal(3,1) DEFAULT '0.0' COMMENT 'Indice de Masa Corporal',
  `peso_ideal` decimal(6,3) DEFAULT '0.000',
  `longitud_piel` decimal(6,2) DEFAULT '0.00',
  `antro_fat` decimal(6,2) DEFAULT '0.00' COMMENT 'Porcentaje de Grasa Corporal',
  `antro_cb` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Braquial',
  `antro_ca` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Cadera',
  `antro_cc` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Abdomen',
  `antro_cm` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Muslo',
  `temperatura` decimal(6,1) DEFAULT '0.0' COMMENT 'Temperatura del Paciente',
  `pulso` int DEFAULT '0' COMMENT 'Pulso del Paciente',
  `sistolica` decimal(4,1) DEFAULT '0.0' COMMENT 'Sistolica en mmHg del Paciente',
  `diastolica` decimal(4,1) DEFAULT '0.0' COMMENT 'Diastolica en mmHg del Paciente',
  `oxigeno_sangre` int DEFAULT '0' COMMENT 'Oxigeno en Sangre del Paciente',
  `repiracion` int DEFAULT '0' COMMENT 'Numero de Respiraciones por Minuto del Paciente',
  `fecha_seguimiento` date DEFAULT NULL,
  `hora_seguimiento` time NOT NULL DEFAULT '00:00:00',
  `tipo_evaluacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `evolucion_post_terapeutica` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Evolucion Post-Terapeutica',
  `motivo_consulta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `examen_fisico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `diagnostico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Diagnostico del Paciente',
  `tratamiento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `dependencia` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Dependencia',
  `atndispersa` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Atencion Dispersa',
  `actdisplacentera` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Actitud Displacentera',
  `sobrevaloracion` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Sobrevaloracion del Alimento',
  `conddisruptiva` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Conductas Disruptivas',
  `condcaprichosa` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Conductas Caprichosas',
  `fallasinteraccion` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Fallas en la Interaccion',
  `ambinadecuado` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ambiente Inadecuado',
  `althoringesta` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Alteracion Horario Ingesta',
  `frealimlacteos` int DEFAULT '0' COMMENT 'Frecuencia de Lacteos',
  `frealimvegetales` int DEFAULT '0' COMMENT 'Frecuencia de Vegetales',
  `frealimfrutas` int DEFAULT '0' COMMENT 'Frecuencia de Frutas',
  `frealimcereales` int DEFAULT '0' COMMENT 'Frecuencia de Cereales',
  `frealimcarnes` int DEFAULT '0' COMMENT 'Frecuencia de Carnes',
  `frealimgrasas` int DEFAULT '0' COMMENT 'Frecuencia de Grasas',
  `horarecordatcomida1` time DEFAULT NULL COMMENT 'Hora Recordatorio Comida1',
  `comidarecordatcomida1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Comida Recordatorio Comida1',
  `horarecordatcomida2` time DEFAULT NULL COMMENT 'Hora Recordatorio Comida2',
  `comidarecordatcomida2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Comida Recordatorio Comida2',
  `horarecordatcomida3` time DEFAULT NULL COMMENT 'Hora Recordatorio Comida3',
  `comidarecordatcomida3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Comida Recordatorio Comida3',
  `horarecordatcomida4` time DEFAULT NULL COMMENT 'Hora Recordatorio Comida4',
  `comidarecordatcomida4` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Comida Recordatorio Comida4',
  `horarecordatcomida5` time DEFAULT NULL COMMENT 'Hora Recordatorio Comida5',
  `comidarecordatcomida5` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Comida Recordatorio Comida5',
  `horarecordatcomida6` time DEFAULT NULL COMMENT 'Hora Recordatorio Comida6',
  `comidarecordatcomida6` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Comida Recordatorio Comida6',
  `horarecordatcomida7` time DEFAULT NULL COMMENT 'Hora Recordatorio Comida7',
  `comidarecordatcomida7` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Comida Recordatorio Comida7',
  `horarecordatcomida8` time DEFAULT NULL COMMENT 'Hora Recordatorio Comida8',
  `comidarecordatcomida8` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Comida Recordatorio Comida8',
  `obsrecordatoriocomida` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Observaciones Recordatorio Comida',
  `etapadesarrollo` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT 'SinEtapa',
  `voltesticularder` int DEFAULT '0' COMMENT 'Volumen Testicular Derecho',
  `voltesticularizq` int DEFAULT '0' COMMENT 'Volumen Testicular Izquierdo',
  `edadmenarquia` int DEFAULT '0' COMMENT 'Edad de la Menarquia',
  `tallamadre` int DEFAULT '0' COMMENT 'Talla de la Madre',
  `tallapadre` int DEFAULT '0' COMMENT 'Talla del Padre',
  `prompotgenet` decimal(9,2) DEFAULT '0.00' COMMENT 'Promedio Potencial Genetico',
  `percprompotgenet` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Percentil Promedio Potencial Genetico',
  `lspotgenet` decimal(9,2) DEFAULT '0.00' COMMENT 'Limite Superior Potencial Genetico',
  `perclspotgenet` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Percentil Limite Superior Potencial Genetico',
  `lipotgenet` decimal(9,2) DEFAULT '0.00' COMMENT 'Limite Inferior Potencial Genetico',
  `perclipotgenet` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Percentil Limite Inferior',
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL,
  `id_sanitario` int NOT NULL DEFAULT '0',
  `observacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Seguimientos del Pediatra';

--
-- Volcado de datos para la tabla `tbl_paci_segui_pediatra`
--

INSERT INTO `tbl_paci_segui_pediatra` (`id_segui_pediatra`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `peso_paciente`, `altura_paciente`, `imc_paciente`, `peso_ideal`, `longitud_piel`, `antro_fat`, `antro_cb`, `antro_ca`, `antro_cc`, `antro_cm`, `temperatura`, `pulso`, `sistolica`, `diastolica`, `oxigeno_sangre`, `repiracion`, `fecha_seguimiento`, `hora_seguimiento`, `tipo_evaluacion`, `evolucion_post_terapeutica`, `motivo_consulta`, `examen_fisico`, `diagnostico`, `tratamiento`, `dependencia`, `atndispersa`, `actdisplacentera`, `sobrevaloracion`, `conddisruptiva`, `condcaprichosa`, `fallasinteraccion`, `ambinadecuado`, `althoringesta`, `frealimlacteos`, `frealimvegetales`, `frealimfrutas`, `frealimcereales`, `frealimcarnes`, `frealimgrasas`, `horarecordatcomida1`, `comidarecordatcomida1`, `horarecordatcomida2`, `comidarecordatcomida2`, `horarecordatcomida3`, `comidarecordatcomida3`, `horarecordatcomida4`, `comidarecordatcomida4`, `horarecordatcomida5`, `comidarecordatcomida5`, `horarecordatcomida6`, `comidarecordatcomida6`, `horarecordatcomida7`, `comidarecordatcomida7`, `horarecordatcomida8`, `comidarecordatcomida8`, `obsrecordatoriocomida`, `etapadesarrollo`, `voltesticularder`, `voltesticularizq`, `edadmenarquia`, `tallamadre`, `tallapadre`, `prompotgenet`, `percprompotgenet`, `lspotgenet`, `perclspotgenet`, `lipotgenet`, `perclipotgenet`, `fecha_cita`, `hora_cita`, `id_sanitario`, `observacion`) VALUES
(1, 1, 'Demo', 1, '2026-05-10 17:00:19', 1, '2026-05-11 14:44:36', 0, 'Activo', 2, 0, 3, 14, 10, 0.271, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0, 0, '2026-05-10', '12:59:41', 'SinTriage', 'Post', 'Motivo', 'Exam', 'Diag', 'Trata', '', 'SI', '', 'SI', '', '', 'SI', 'SI', '', 0, 0, 0, 0, 0, 0, '06:00:00', '', '09:00:00', '', '12:00:00', '', '15:00:00', '', '18:00:00', '', '21:00:00', '', '00:00:00', '', '03:00:00', '', '', '', 0, 0, 0, 0, 0, 0.00, '', 0.00, '', 0.00, '', '1000-01-01', '00:00:00', 0, ''),
(2, 1, 'Demo', 1, '2026-05-10 17:13:13', 1, '2026-05-13 11:52:57', 0, 'Activo', 2, 0, 3, 14, 10, 0.271, 6.200, 52.00, 22.9, 5.700, 0.30, 11.00, 12.00, 13.00, 14.00, 15.00, 16.0, 17, 18.0, 19.0, 20, 21, '2026-05-10', '13:00:19', 'Eventual', 'Evolucion', 'Motivo', 'Exa Fisico', 'Diagnostico', 'Tratamiento', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 22, 23, 24, 25, 26, 27, '06:01:00', 'Uno', '09:05:00', 'Cinco', '12:02:00', 'Dos', '15:06:00', 'Seis', '18:03:00', 'Tres', '21:07:00', 'Siete', '00:04:00', 'Cuatro', '03:08:00', 'Ocho', 'Ninguna...', 'Inicio-Pubertad', 4, 5, 0, 130, 131, 136.85, 'Promedio Primero', 146.85, 'Superior Segundo', 126.85, 'Inferior Tercero', '2026-06-08', '09:29:25', 5, ''),
(3, 1, 'Demo', 1, '2026-05-10 17:17:44', 1, '2026-05-11 14:44:06', 0, 'Activo', 2, 0, 3, 14, 10, 0.271, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0, 0, '2026-05-10', '13:13:13', 'Eventual', '', 'Moti Tres', 'Exam Tres', 'Diag', '', '', '', '', 'SI', '', '', '', '', '', 0, 0, 0, 0, 0, 0, '06:00:00', '', '09:00:00', '', '12:00:00', '', '15:00:00', '', '18:00:00', '', '21:00:00', '', '00:00:00', '', '03:00:00', '', 'Alimentacion Dispersa.', '', 0, 0, 0, 0, 0, 0.00, '', 0.00, '', 0.00, '', '1000-01-01', '00:00:00', 0, ''),
(4, 1, 'Demo', 1, '2026-05-10 17:30:29', 1, '2026-05-11 14:49:53', 0, 'Activo', 2, 0, 3, 14, 10, 0.271, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0, 0, '2026-05-10', '13:21:00', 'Eventual', '', 'Cuarto', 'Quinto', 'Sexto', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, '06:00:00', '', '09:00:00', '', '12:00:00', '', '15:00:00', '', '18:00:00', '', '21:00:00', '', '00:00:00', '', '03:00:00', '', 'Poca Comida.', '', 7, 8, 0, 0, 0, 0.00, '', 0.00, '', 0.00, '', '1000-01-01', '00:00:00', 0, ''),
(5, 1, 'Demo', 1, '2026-05-10 17:38:31', 1, NULL, 0, 'Activo', 2, 0, 3, 14, 10, 0.271, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0, 0, '2026-05-10', '13:30:29', 'Eventual', '', 'Noveno', 'Decimo', 'DeciPrimero', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, '06:00:00', '', '09:00:00', '', '12:00:00', '', '15:00:00', '', '18:00:00', '', '21:00:00', '', '00:00:00', '', '03:00:00', '', '', '', 5, 6, 0, 160, 198, 185.35, '', 195.35, '', 175.35, '', '1000-01-01', '00:00:00', 0, ''),
(6, 1, 'Demo', 1, '2026-05-11 01:01:22', 1, '2026-05-11 14:44:24', 0, 'Activo', 7, 24, 2, 2, 6, 24.217, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0, 0, '2026-05-10', '21:00:45', 'Eventual', '', 'Motivo.', 'Examen.', 'Diagnostico.', '', '', '', 'SI', '', 'SI', '', '', 'SI', 'SI', 0, 0, 0, 0, 0, 0, '06:00:00', '', '09:00:00', '', '12:00:00', '', '15:00:00', '', '18:00:00', '', '21:00:00', '', '00:00:00', '', '03:00:00', '', '', '', 0, 0, 0, 0, 0, 0.00, '', 0.00, '', 0.00, '', '1000-01-01', '00:00:00', 0, ''),
(7, 1, 'Demo', 1, '2026-05-11 19:08:54', 1, NULL, 0, 'Activo', 8, 0, 2, 3, 3, 0.227, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0.0, 0.0, 0, 0, '2026-05-11', '15:07:20', 'Programado', '', 'Motivo Primera', 'Examen Segunda', 'Diagnostico Tercera', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, '06:00:00', '', '09:00:00', '', '12:00:00', '', '15:00:00', '', '18:00:00', '', '21:00:00', '', '00:00:00', '', '03:00:00', '', '', 'Inicio-Pubertad', 0, 0, 9, 160, 177, 162.15, '', 171.15, '', 153.15, '', '1000-01-01', '00:00:00', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_segui_pediatra_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_segui_pediatra_imagenes`;
CREATE TABLE `tbl_paci_segui_pediatra_imagenes` (
  `id_segui_pediatra_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_segui_pediatra` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_segui_psicologia`
--

DROP TABLE IF EXISTS `tbl_paci_segui_psicologia`;
CREATE TABLE `tbl_paci_segui_psicologia` (
  `id_segui_psicologia` int NOT NULL COMMENT 'Id de Seguimientos',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `peso_paciente` decimal(6,3) DEFAULT '0.000' COMMENT 'Peso del Paciente',
  `altura_paciente` decimal(6,2) DEFAULT '0.00' COMMENT 'Altura del Paciente',
  `imc_paciente` decimal(3,1) DEFAULT '0.0' COMMENT 'Indice de Masa Corporal',
  `peso_ideal` decimal(6,3) DEFAULT '0.000',
  `longitud_piel` decimal(6,2) DEFAULT '0.00',
  `antro_fat` decimal(6,2) DEFAULT '0.00' COMMENT 'Porcentaje de Grasa Corporal',
  `antro_cb` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Braquial',
  `antro_ca` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Cadera',
  `antro_cc` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Abdomen',
  `antro_cm` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Muslo',
  `temperatura` decimal(6,1) DEFAULT '0.0' COMMENT 'Temperatura del Paciente',
  `pulso` int DEFAULT '0' COMMENT 'Pulso del Paciente',
  `sistolica` int DEFAULT '0' COMMENT 'Sistolica en mmHg del Paciente',
  `diastolica` int DEFAULT '0' COMMENT 'Diastolica en mmHg del Paciente',
  `oxigeno_sangre` int DEFAULT '0' COMMENT 'Oxigeno en Sangre del Paciente',
  `repiracion` int DEFAULT '0' COMMENT 'Numero de Respiraciones por Minuto del Paciente',
  `fecha_seguimiento` date DEFAULT NULL,
  `hora_seguimiento` time DEFAULT NULL,
  `tipo_evaluacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `evolucion_post_terapeutica` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Evolucion Post-Terapeutica',
  `motivo_consulta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `diagnostico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Diagnostico del Paciente',
  `tratamiento` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL,
  `id_sanitario` int NOT NULL DEFAULT '0',
  `observacion` text COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Psicologia del Paciente';

--
-- Volcado de datos para la tabla `tbl_paci_segui_psicologia`
--

INSERT INTO `tbl_paci_segui_psicologia` (`id_segui_psicologia`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `peso_paciente`, `altura_paciente`, `imc_paciente`, `peso_ideal`, `longitud_piel`, `antro_fat`, `antro_cb`, `antro_ca`, `antro_cc`, `antro_cm`, `temperatura`, `pulso`, `sistolica`, `diastolica`, `oxigeno_sangre`, `repiracion`, `fecha_seguimiento`, `hora_seguimiento`, `tipo_evaluacion`, `evolucion_post_terapeutica`, `motivo_consulta`, `diagnostico`, `tratamiento`, `fecha_cita`, `hora_cita`, `id_sanitario`, `observacion`) VALUES
(1, 1, 'Demo', 1, '2026-05-10 00:00:42', 1, NULL, 0, 'Activo', 3, 37, 9, 1973, 24, 37.813, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0, 0, 0, 0, '2026-05-09', '19:56:05', 'SinTriage', 'Evolucion.', 'Motivo.', 'Diagnostico.', 'Tratamiento.', '1000-01-01', '00:00:00', 0, ''),
(2, 1, 'Demo', 1, '2026-05-12 15:34:18', 1, NULL, 0, 'Activo', 7, 24, 2, 3, 1, 24.222, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0, 0, 0, 0, '2026-05-12', '11:33:38', 'Eventual', 'Primera Vez', 'Pesadillas', 'Temor a la oscuridad.', '', '1000-01-01', '00:00:00', 0, ''),
(3, 1, 'Demo', 1, '2026-05-13 14:19:50', 1, NULL, 0, 'Activo', 10, 30, 2, 0, 6, 30.183, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0, 0, 0, 0, '2026-05-13', '10:19:01', 'Eventual', '', 'una rosa pintada de azul', 'despachado', 'ir al psiquiatra', '1000-01-01', '00:00:00', 0, ''),
(4, 1, 'Demo', 1, '2026-05-14 14:31:46', 1, NULL, 0, 'Activo', 10, 30, 2, 1, 0, 30.185, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0, 0, 0, 0, '2026-05-14', '10:31:05', 'Eventual', '', 'Mot...', 'Diag...', '', '2026-05-21', '13:31:00', 4, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_segui_psicologia_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_segui_psicologia_imagenes`;
CREATE TABLE `tbl_paci_segui_psicologia_imagenes` (
  `id_segui_psicologia_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_segui_psicologia` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_segui_psiquiatra`
--

DROP TABLE IF EXISTS `tbl_paci_segui_psiquiatra`;
CREATE TABLE `tbl_paci_segui_psiquiatra` (
  `id_segui_psiquiatra` int NOT NULL COMMENT 'Id de Seguimientos',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `peso_paciente` decimal(6,3) DEFAULT '0.000' COMMENT 'Peso del Paciente',
  `altura_paciente` decimal(6,2) DEFAULT '0.00' COMMENT 'Altura del Paciente',
  `imc_paciente` decimal(3,1) DEFAULT '0.0' COMMENT 'Indice de Masa Corporal',
  `peso_ideal` decimal(6,3) DEFAULT '0.000',
  `longitud_piel` decimal(6,2) DEFAULT '0.00',
  `antro_fat` decimal(6,2) DEFAULT '0.00' COMMENT 'Porcentaje de Grasa Corporal',
  `antro_cb` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Braquial',
  `antro_ca` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Cadera',
  `antro_cc` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Abdomen',
  `antro_cm` decimal(6,2) DEFAULT '0.00' COMMENT 'Circunferencia Muslo',
  `temperatura` decimal(6,1) DEFAULT '0.0' COMMENT 'Temperatura del Paciente',
  `pulso` int DEFAULT '0' COMMENT 'Pulso del Paciente',
  `sistolica` int DEFAULT '0' COMMENT 'Sistolica en mmHg del Paciente',
  `diastolica` int DEFAULT '0' COMMENT 'Diastolica en mmHg del Paciente',
  `oxigeno_sangre` int DEFAULT '0' COMMENT 'Oxigeno en Sangre del Paciente',
  `repiracion` int DEFAULT '0' COMMENT 'Numero de Respiraciones por Minuto del Paciente',
  `fecha_seguimiento` date DEFAULT NULL,
  `hora_seguimiento` time DEFAULT NULL,
  `tipo_evaluacion` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `evolucion_post_terapeutica` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Evolucion Post-Terapeutica',
  `motivo_consulta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `diagnostico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Diagnostico del Paciente',
  `tratamiento_farmacologico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `tratamiento_psicoterapeutico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `interconsulta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `otras_evaluaciones` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `fecha_cita` date DEFAULT NULL,
  `hora_cita` time DEFAULT NULL,
  `id_sanitario` int NOT NULL DEFAULT '0',
  `observacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Psicologia del Paciente';

--
-- Volcado de datos para la tabla `tbl_paci_segui_psiquiatra`
--

INSERT INTO `tbl_paci_segui_psiquiatra` (`id_segui_psiquiatra`, `id_propietario`, `tipo_propietario`, `id_sucursal`, `tiempo_registro`, `id_ente_creador`, `tiempo_modifica`, `id_ente_modifica`, `status_registro`, `id_ente`, `edad_anos`, `edad_meses`, `edad_semanas`, `edad_dias`, `edad_decimal`, `peso_paciente`, `altura_paciente`, `imc_paciente`, `peso_ideal`, `longitud_piel`, `antro_fat`, `antro_cb`, `antro_ca`, `antro_cc`, `antro_cm`, `temperatura`, `pulso`, `sistolica`, `diastolica`, `oxigeno_sangre`, `repiracion`, `fecha_seguimiento`, `hora_seguimiento`, `tipo_evaluacion`, `evolucion_post_terapeutica`, `motivo_consulta`, `diagnostico`, `tratamiento_farmacologico`, `tratamiento_psicoterapeutico`, `interconsulta`, `otras_evaluaciones`, `fecha_cita`, `hora_cita`, `id_sanitario`, `observacion`) VALUES
(1, 1, 'Demo', 1, '2026-05-12 19:37:40', 1, NULL, 0, 'Activo', 3, 37, 9, 3, 5, 37.821, 0.000, 0.00, 0.0, 0.000, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.0, 0, 0, 0, 0, 0, '2026-05-12', '15:36:53', 'Eventual', 'Post', 'Moti', 'Diag', 'Farma', 'Psico', 'Inter', 'Otras', '1000-01-01', '00:00:00', 0, ''),
(2, 1, 'Demo', 1, '2026-05-14 14:25:45', 1, NULL, 0, 'Activo', 10, 30, 2, 1, 0, 30.185, 69.000, 170.00, 23.9, 71.000, 1.81, 72.00, 73.00, 74.00, 75.00, 76.00, 77.0, 78, 79, 80, 81, 82, '2026-05-13', '10:23:33', 'Programado', 'Evo.', 'Mot.', 'Imp.', 'TFar.', 'TPsi', 'Inter.', 'Otra.', '2026-05-24', '15:25:00', 4, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_segui_psiquiatria_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_segui_psiquiatria_imagenes`;
CREATE TABLE `tbl_paci_segui_psiquiatria_imagenes` (
  `id_segui_psiquiatra_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_segui_psiquiatra` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_solicitud_ingreso`
--

DROP TABLE IF EXISTS `tbl_paci_solicitud_ingreso`;
CREATE TABLE `tbl_paci_solicitud_ingreso` (
  `id_solicitud_ingreso` int NOT NULL COMMENT 'Id de Ingreso del Paciente',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_decimal` decimal(6,3) DEFAULT NULL,
  `fechasolipresu` date DEFAULT NULL COMMENT 'Fecha del Presupuesto',
  `tipo_procedimiento` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `diagnostico` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Diagnostico del Paciente',
  `interrealizar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Intervencion a Realizar del Paciente',
  `clinicauhospital` varchar(140) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Clinica u Hospital',
  `particular` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Particular',
  `seguronombre` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `otrodestino` varchar(140) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Otros Destinatario',
  `procemedico` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Procedimiento Medico',
  `procequirurgico` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Procedimiento Quirurgico',
  `ambulatorio` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ambulatorio',
  `ambulatorio_horas` int DEFAULT NULL,
  `hospitalizacion` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Hospitalizacion',
  `hospitaldias` int DEFAULT '0' COMMENT 'Dias en Hospitalizacion',
  `uci1` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Unidad de Cuidados Intensivos',
  `ucidias` int DEFAULT '0' COMMENT 'Dias de Unidad en Cuidados Intensivos',
  `tiemproxquiro` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tiemproxquiro_hora` int DEFAULT '0',
  `requequirofano` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Requerimientos de Quirofano',
  `requebancosan` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Requerimientos de Banco de Sangre',
  `requeanatopato` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Requerimientos de Anatomia Patologica',
  `requerequelabora` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Requerimientos de Laboratorio',
  `requeradiologia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Requerimientos de Radiologia',
  `requeimagenologia` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Requerimientos de Imagenologia',
  `requemediespecial` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Requerimientos de Medicamentos Especiales',
  `requeotrospresu` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Requerimientos de Otros a Presupuestar',
  `nombrecirujanoprinci` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `nombreprimerayuda` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `nombresegundoayuda` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `nombreanestesiologo` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `nombreequipoespecial` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Nombre Equipo Especial',
  `nombrematerialdesintesis` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Nombre Material de Sintesis',
  `nombreotroprocedi` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Nombre Otro Procedimiento',
  `medicotratante` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre Medico Tratante',
  `numecolemedicotratante` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Numero de Colegio Medico del Medico Tratante'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Solicitud de Ingreso del Paciente';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paci_solicitud_ingreso_imagenes`
--

DROP TABLE IF EXISTS `tbl_paci_solicitud_ingreso_imagenes`;
CREATE TABLE `tbl_paci_solicitud_ingreso_imagenes` (
  `id_solicitud_ingreso_imagenes` int NOT NULL COMMENT 'Id Ruta y Nombre Foto',
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_solicitud_ingreso` int NOT NULL DEFAULT '0',
  `ruta_imagene` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Ruta de la Foto',
  `archivo_imagen` varchar(240) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Foto',
  `descripcion_imagen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci COMMENT 'Descripcion de la Foto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Ruta y Nombre de las Imagenes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ZZZ_Base_Tabla`
--

DROP TABLE IF EXISTS `ZZZ_Base_Tabla`;
CREATE TABLE `ZZZ_Base_Tabla` (
  `id_registro` int NOT NULL,
  `id_propietario` int NOT NULL DEFAULT '0',
  `tipo_propietario` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'SinTipoPropietario' COMMENT 'Tipo o Actividad del Propietario',
  `id_sucursal` int NOT NULL DEFAULT '0',
  `tiempo_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ente_creador` int NOT NULL DEFAULT '0',
  `tiempo_modifica` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_ente_modifica` int DEFAULT '0',
  `status_registro` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Activo',
  `id_ente` int NOT NULL,
  `edad_anos` int DEFAULT '0' COMMENT 'Edad en Anos',
  `edad_meses` int DEFAULT '0' COMMENT 'Edad en Meses',
  `edad_semanas` int DEFAULT '0',
  `edad_dias` int DEFAULT '0',
  `edad_decimal` decimal(6,3) DEFAULT '0.000',
  `observacion_registro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aaa_datos_propietarios`
--
ALTER TABLE `aaa_datos_propietarios`
  ADD PRIMARY KEY (`id_propietario`);

--
-- Indices de la tabla `aaa_entes`
--
ALTER TABLE `aaa_entes`
  ADD PRIMARY KEY (`id_ente`);

--
-- Indices de la tabla `aaa_entes_direcciones`
--
ALTER TABLE `aaa_entes_direcciones`
  ADD PRIMARY KEY (`id_ente_direcciones`);

--
-- Indices de la tabla `aad_ente_cargo`
--
ALTER TABLE `aad_ente_cargo`
  ADD PRIMARY KEY (`id_cargoEnte`);

--
-- Indices de la tabla `aad_ente_dpto`
--
ALTER TABLE `aad_ente_dpto`
  ADD PRIMARY KEY (`id_dptoEnte`);

--
-- Indices de la tabla `aad_ente_gerencia`
--
ALTER TABLE `aad_ente_gerencia`
  ADD PRIMARY KEY (`id_gerenciaEnte`);

--
-- Indices de la tabla `aad_razas_humana`
--
ALTER TABLE `aad_razas_humana`
  ADD PRIMARY KEY (`id_raza_humana`);

--
-- Indices de la tabla `aad_ubicacion_ciudades`
--
ALTER TABLE `aad_ubicacion_ciudades`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `id_estado` (`id_provincia`);

--
-- Indices de la tabla `aad_ubicacion_codigos_postales`
--
ALTER TABLE `aad_ubicacion_codigos_postales`
  ADD PRIMARY KEY (`id_codigo_postal`),
  ADD KEY `id_sector` (`id_sector`),
  ADD KEY `id_parroquia` (`id_parroquia`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Indices de la tabla `aad_ubicacion_municipios`
--
ALTER TABLE `aad_ubicacion_municipios`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `id_provincia` (`id_provincia`);

--
-- Indices de la tabla `aad_ubicacion_paises`
--
ALTER TABLE `aad_ubicacion_paises`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `aad_ubicacion_parroquias`
--
ALTER TABLE `aad_ubicacion_parroquias`
  ADD PRIMARY KEY (`id_parroquia`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Indices de la tabla `aad_ubicacion_provincias`
--
ALTER TABLE `aad_ubicacion_provincias`
  ADD PRIMARY KEY (`id_provincia`),
  ADD KEY `id_pais` (`id_pais`);

--
-- Indices de la tabla `aad_ubicacion_punto_referencia`
--
ALTER TABLE `aad_ubicacion_punto_referencia`
  ADD PRIMARY KEY (`id_punto_referencia`);

--
-- Indices de la tabla `aad_ubicacion_sectores`
--
ALTER TABLE `aad_ubicacion_sectores`
  ADD PRIMARY KEY (`id_sector`),
  ADD KEY `id_parroquia` (`id_parroquia`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Indices de la tabla `auto_profesion`
--
ALTER TABLE `auto_profesion`
  ADD PRIMARY KEY (`id_profesion`);

--
-- Indices de la tabla `auto_religion`
--
ALTER TABLE `auto_religion`
  ADD PRIMARY KEY (`id_religion`);

--
-- Indices de la tabla `tbl_aaa_acceso_movil`
--
ALTER TABLE `tbl_aaa_acceso_movil`
  ADD PRIMARY KEY (`id_acceso_movil`);

--
-- Indices de la tabla `tbl_aaa_bitacora`
--
ALTER TABLE `tbl_aaa_bitacora`
  ADD PRIMARY KEY (`id_bitacora`);

--
-- Indices de la tabla `tbl_exa_biopsia`
--
ALTER TABLE `tbl_exa_biopsia`
  ADD PRIMARY KEY (`id_exa_biopsia`);

--
-- Indices de la tabla `tbl_exa_biopsia_imagenes`
--
ALTER TABLE `tbl_exa_biopsia_imagenes`
  ADD PRIMARY KEY (`id_exa_biopsia_imagenes`);

--
-- Indices de la tabla `tbl_exa_especiales`
--
ALTER TABLE `tbl_exa_especiales`
  ADD PRIMARY KEY (`id_exa_especiales`);

--
-- Indices de la tabla `tbl_exa_especiales_imagenes`
--
ALTER TABLE `tbl_exa_especiales_imagenes`
  ADD PRIMARY KEY (`id_exa_especiales_imagenes`);

--
-- Indices de la tabla `tbl_exa_laboratorio`
--
ALTER TABLE `tbl_exa_laboratorio`
  ADD PRIMARY KEY (`id_exa_laboratorio`);

--
-- Indices de la tabla `tbl_exa_laboratorio_imagenes`
--
ALTER TABLE `tbl_exa_laboratorio_imagenes`
  ADD PRIMARY KEY (`id_exa_laboratorio_imagenes`);

--
-- Indices de la tabla `tbl_exa_micologia_enfer_tropi`
--
ALTER TABLE `tbl_exa_micologia_enfer_tropi`
  ADD PRIMARY KEY (`id_exa_micologia_enfer_tropi`);

--
-- Indices de la tabla `tbl_exa_micologia_enfer_tropi_imagenes`
--
ALTER TABLE `tbl_exa_micologia_enfer_tropi_imagenes`
  ADD PRIMARY KEY (`id_exa_micologia_enfer_tropi_imagenes`);

--
-- Indices de la tabla `tbl_exa_radiologia`
--
ALTER TABLE `tbl_exa_radiologia`
  ADD PRIMARY KEY (`id_exa_radiologia`);

--
-- Indices de la tabla `tbl_exa_radiologia_imagenes`
--
ALTER TABLE `tbl_exa_radiologia_imagenes`
  ADD PRIMARY KEY (`id_exa_radiologia_imagenes`);

--
-- Indices de la tabla `tbl_paci_agenda_citas`
--
ALTER TABLE `tbl_paci_agenda_citas`
  ADD PRIMARY KEY (`id_paci_agenda_citas`);

--
-- Indices de la tabla `tbl_paci_agenda_citas_disponibilidad`
--
ALTER TABLE `tbl_paci_agenda_citas_disponibilidad`
  ADD PRIMARY KEY (`id_agenda_cita_disponibilidad`);

--
-- Indices de la tabla `tbl_paci_doc_consentimiento`
--
ALTER TABLE `tbl_paci_doc_consentimiento`
  ADD PRIMARY KEY (`id_consentimiento`);

--
-- Indices de la tabla `tbl_paci_doc_consentimiento_imagenes`
--
ALTER TABLE `tbl_paci_doc_consentimiento_imagenes`
  ADD PRIMARY KEY (`id_consentimiento_imagenes`);

--
-- Indices de la tabla `tbl_paci_doc_constancia`
--
ALTER TABLE `tbl_paci_doc_constancia`
  ADD PRIMARY KEY (`id_constancia`);

--
-- Indices de la tabla `tbl_paci_doc_constancia_imagenes`
--
ALTER TABLE `tbl_paci_doc_constancia_imagenes`
  ADD PRIMARY KEY (`id_constancia_imagenes`);

--
-- Indices de la tabla `tbl_paci_doc_constancia_nino_sano`
--
ALTER TABLE `tbl_paci_doc_constancia_nino_sano`
  ADD PRIMARY KEY (`id_nino_sano`);

--
-- Indices de la tabla `tbl_paci_doc_constancia_nino_sano_imagenes`
--
ALTER TABLE `tbl_paci_doc_constancia_nino_sano_imagenes`
  ADD PRIMARY KEY (`id_constancia_nino_sano_imagenes`);

--
-- Indices de la tabla `tbl_paci_doc_informe`
--
ALTER TABLE `tbl_paci_doc_informe`
  ADD PRIMARY KEY (`id_informe`);

--
-- Indices de la tabla `tbl_paci_doc_informe_imagenes`
--
ALTER TABLE `tbl_paci_doc_informe_imagenes`
  ADD PRIMARY KEY (`id_informe_imagenes`);

--
-- Indices de la tabla `tbl_paci_doc_recipe`
--
ALTER TABLE `tbl_paci_doc_recipe`
  ADD PRIMARY KEY (`id_recipe`);

--
-- Indices de la tabla `tbl_paci_doc_recipes_medicamento`
--
ALTER TABLE `tbl_paci_doc_recipes_medicamento`
  ADD PRIMARY KEY (`id_medicinamento`);

--
-- Indices de la tabla `tbl_paci_doc_recipe_imagenes`
--
ALTER TABLE `tbl_paci_doc_recipe_imagenes`
  ADD PRIMARY KEY (`id_recipe_imagenes`);

--
-- Indices de la tabla `tbl_paci_doc_recipe_indicacion`
--
ALTER TABLE `tbl_paci_doc_recipe_indicacion`
  ADD PRIMARY KEY (`id_recipe_indicacion`);

--
-- Indices de la tabla `tbl_paci_doc_referencia`
--
ALTER TABLE `tbl_paci_doc_referencia`
  ADD PRIMARY KEY (`id_referencia`);

--
-- Indices de la tabla `tbl_paci_doc_referencia_imagenes`
--
ALTER TABLE `tbl_paci_doc_referencia_imagenes`
  ADD PRIMARY KEY (`id_referencia_imagenes`);

--
-- Indices de la tabla `tbl_paci_doc_reposo`
--
ALTER TABLE `tbl_paci_doc_reposo`
  ADD PRIMARY KEY (`id_reposo`);

--
-- Indices de la tabla `tbl_paci_doc_reposo_imagenes`
--
ALTER TABLE `tbl_paci_doc_reposo_imagenes`
  ADD PRIMARY KEY (`id_reposo_imagenes`);

--
-- Indices de la tabla `tbl_paci_doc_vacuna`
--
ALTER TABLE `tbl_paci_doc_vacuna`
  ADD PRIMARY KEY (`id_vacuna`);

--
-- Indices de la tabla `tbl_paci_doc_vacuna_imagenes`
--
ALTER TABLE `tbl_paci_doc_vacuna_imagenes`
  ADD PRIMARY KEY (`id_vacuna_imagenes`);

--
-- Indices de la tabla `tbl_paci_emergencia_alerta`
--
ALTER TABLE `tbl_paci_emergencia_alerta`
  ADD PRIMARY KEY (`id_emergencia_alerta`);

--
-- Indices de la tabla `tbl_paci_emergencia_alerta_imagenes`
--
ALTER TABLE `tbl_paci_emergencia_alerta_imagenes`
  ADD PRIMARY KEY (`id_emergencia_alerta_imagenes`);

--
-- Indices de la tabla `tbl_paci_emergencia_triage`
--
ALTER TABLE `tbl_paci_emergencia_triage`
  ADD PRIMARY KEY (`id_emergencia_triage`);

--
-- Indices de la tabla `tbl_paci_emergencia_triage_imagenes`
--
ALTER TABLE `tbl_paci_emergencia_triage_imagenes`
  ADD PRIMARY KEY (`id_emergencia_triage_imagenes`);

--
-- Indices de la tabla `tbl_paci_nota_operatoria`
--
ALTER TABLE `tbl_paci_nota_operatoria`
  ADD PRIMARY KEY (`id_nota_operatoria`);

--
-- Indices de la tabla `tbl_paci_nota_operatoria_imagenes`
--
ALTER TABLE `tbl_paci_nota_operatoria_imagenes`
  ADD PRIMARY KEY (`id_nota_operatoria_imagenes`);

--
-- Indices de la tabla `tbl_paci_primera_vez`
--
ALTER TABLE `tbl_paci_primera_vez`
  ADD PRIMARY KEY (`id_primera_vez`);

--
-- Indices de la tabla `tbl_paci_primera_vez_imagenes`
--
ALTER TABLE `tbl_paci_primera_vez_imagenes`
  ADD PRIMARY KEY (`id_primera_vez_imagenes`);

--
-- Indices de la tabla `tbl_paci_segui_dermatologo`
--
ALTER TABLE `tbl_paci_segui_dermatologo`
  ADD PRIMARY KEY (`id_segui_dermatologo`);

--
-- Indices de la tabla `tbl_paci_segui_dermatologo_imagenes`
--
ALTER TABLE `tbl_paci_segui_dermatologo_imagenes`
  ADD PRIMARY KEY (`id_segui_dermatologo_imagenes`);

--
-- Indices de la tabla `tbl_paci_segui_general`
--
ALTER TABLE `tbl_paci_segui_general`
  ADD PRIMARY KEY (`id_segui_general`);

--
-- Indices de la tabla `tbl_paci_segui_general_imagenes`
--
ALTER TABLE `tbl_paci_segui_general_imagenes`
  ADD PRIMARY KEY (`id_segui_general_imagenes`);

--
-- Indices de la tabla `tbl_paci_segui_pediatra`
--
ALTER TABLE `tbl_paci_segui_pediatra`
  ADD PRIMARY KEY (`id_segui_pediatra`);

--
-- Indices de la tabla `tbl_paci_segui_pediatra_imagenes`
--
ALTER TABLE `tbl_paci_segui_pediatra_imagenes`
  ADD PRIMARY KEY (`id_segui_pediatra_imagenes`);

--
-- Indices de la tabla `tbl_paci_segui_psicologia`
--
ALTER TABLE `tbl_paci_segui_psicologia`
  ADD PRIMARY KEY (`id_segui_psicologia`);

--
-- Indices de la tabla `tbl_paci_segui_psicologia_imagenes`
--
ALTER TABLE `tbl_paci_segui_psicologia_imagenes`
  ADD PRIMARY KEY (`id_segui_psicologia_imagenes`);

--
-- Indices de la tabla `tbl_paci_segui_psiquiatra`
--
ALTER TABLE `tbl_paci_segui_psiquiatra`
  ADD PRIMARY KEY (`id_segui_psiquiatra`);

--
-- Indices de la tabla `tbl_paci_segui_psiquiatria_imagenes`
--
ALTER TABLE `tbl_paci_segui_psiquiatria_imagenes`
  ADD PRIMARY KEY (`id_segui_psiquiatra_imagenes`);

--
-- Indices de la tabla `tbl_paci_solicitud_ingreso`
--
ALTER TABLE `tbl_paci_solicitud_ingreso`
  ADD PRIMARY KEY (`id_solicitud_ingreso`);

--
-- Indices de la tabla `tbl_paci_solicitud_ingreso_imagenes`
--
ALTER TABLE `tbl_paci_solicitud_ingreso_imagenes`
  ADD PRIMARY KEY (`id_solicitud_ingreso_imagenes`);

--
-- Indices de la tabla `ZZZ_Base_Tabla`
--
ALTER TABLE `ZZZ_Base_Tabla`
  ADD PRIMARY KEY (`id_registro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aaa_datos_propietarios`
--
ALTER TABLE `aaa_datos_propietarios`
  MODIFY `id_propietario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `aaa_entes`
--
ALTER TABLE `aaa_entes`
  MODIFY `id_ente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `aaa_entes_direcciones`
--
ALTER TABLE `aaa_entes_direcciones`
  MODIFY `id_ente_direcciones` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `aad_ente_cargo`
--
ALTER TABLE `aad_ente_cargo`
  MODIFY `id_cargoEnte` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `aad_ente_dpto`
--
ALTER TABLE `aad_ente_dpto`
  MODIFY `id_dptoEnte` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `aad_ente_gerencia`
--
ALTER TABLE `aad_ente_gerencia`
  MODIFY `id_gerenciaEnte` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `aad_razas_humana`
--
ALTER TABLE `aad_razas_humana`
  MODIFY `id_raza_humana` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `aad_ubicacion_ciudades`
--
ALTER TABLE `aad_ubicacion_ciudades`
  MODIFY `id_ciudad` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;

--
-- AUTO_INCREMENT de la tabla `aad_ubicacion_codigos_postales`
--
ALTER TABLE `aad_ubicacion_codigos_postales`
  MODIFY `id_codigo_postal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `aad_ubicacion_municipios`
--
ALTER TABLE `aad_ubicacion_municipios`
  MODIFY `id_municipio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;

--
-- AUTO_INCREMENT de la tabla `aad_ubicacion_paises`
--
ALTER TABLE `aad_ubicacion_paises`
  MODIFY `id_pais` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT de la tabla `aad_ubicacion_parroquias`
--
ALTER TABLE `aad_ubicacion_parroquias`
  MODIFY `id_parroquia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1140;

--
-- AUTO_INCREMENT de la tabla `aad_ubicacion_provincias`
--
ALTER TABLE `aad_ubicacion_provincias`
  MODIFY `id_provincia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `aad_ubicacion_punto_referencia`
--
ALTER TABLE `aad_ubicacion_punto_referencia`
  MODIFY `id_punto_referencia` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `aad_ubicacion_sectores`
--
ALTER TABLE `aad_ubicacion_sectores`
  MODIFY `id_sector` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auto_profesion`
--
ALTER TABLE `auto_profesion`
  MODIFY `id_profesion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auto_religion`
--
ALTER TABLE `auto_religion`
  MODIFY `id_religion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_aaa_acceso_movil`
--
ALTER TABLE `tbl_aaa_acceso_movil`
  MODIFY `id_acceso_movil` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_aaa_bitacora`
--
ALTER TABLE `tbl_aaa_bitacora`
  MODIFY `id_bitacora` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT de la tabla `tbl_exa_biopsia`
--
ALTER TABLE `tbl_exa_biopsia`
  MODIFY `id_exa_biopsia` int NOT NULL AUTO_INCREMENT COMMENT 'Id de biopsia del Paciente', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_exa_biopsia_imagenes`
--
ALTER TABLE `tbl_exa_biopsia_imagenes`
  MODIFY `id_exa_biopsia_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_exa_especiales`
--
ALTER TABLE `tbl_exa_especiales`
  MODIFY `id_exa_especiales` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Laboratorio del Paciente', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_exa_especiales_imagenes`
--
ALTER TABLE `tbl_exa_especiales_imagenes`
  MODIFY `id_exa_especiales_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_exa_laboratorio`
--
ALTER TABLE `tbl_exa_laboratorio`
  MODIFY `id_exa_laboratorio` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Laboratorio del Paciente', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tbl_exa_laboratorio_imagenes`
--
ALTER TABLE `tbl_exa_laboratorio_imagenes`
  MODIFY `id_exa_laboratorio_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_exa_micologia_enfer_tropi`
--
ALTER TABLE `tbl_exa_micologia_enfer_tropi`
  MODIFY `id_exa_micologia_enfer_tropi` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Laboratorio del Paciente', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_exa_micologia_enfer_tropi_imagenes`
--
ALTER TABLE `tbl_exa_micologia_enfer_tropi_imagenes`
  MODIFY `id_exa_micologia_enfer_tropi_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_exa_radiologia`
--
ALTER TABLE `tbl_exa_radiologia`
  MODIFY `id_exa_radiologia` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Radiologia del Paciente', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_exa_radiologia_imagenes`
--
ALTER TABLE `tbl_exa_radiologia_imagenes`
  MODIFY `id_exa_radiologia_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_agenda_citas`
--
ALTER TABLE `tbl_paci_agenda_citas`
  MODIFY `id_paci_agenda_citas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_agenda_citas_disponibilidad`
--
ALTER TABLE `tbl_paci_agenda_citas_disponibilidad`
  MODIFY `id_agenda_cita_disponibilidad` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_consentimiento`
--
ALTER TABLE `tbl_paci_doc_consentimiento`
  MODIFY `id_consentimiento` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Informes del Paciente', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_consentimiento_imagenes`
--
ALTER TABLE `tbl_paci_doc_consentimiento_imagenes`
  MODIFY `id_consentimiento_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_constancia`
--
ALTER TABLE `tbl_paci_doc_constancia`
  MODIFY `id_constancia` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Informes del Paciente', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_constancia_imagenes`
--
ALTER TABLE `tbl_paci_doc_constancia_imagenes`
  MODIFY `id_constancia_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_constancia_nino_sano`
--
ALTER TABLE `tbl_paci_doc_constancia_nino_sano`
  MODIFY `id_nino_sano` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Informes del Paciente', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_constancia_nino_sano_imagenes`
--
ALTER TABLE `tbl_paci_doc_constancia_nino_sano_imagenes`
  MODIFY `id_constancia_nino_sano_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_informe`
--
ALTER TABLE `tbl_paci_doc_informe`
  MODIFY `id_informe` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Informe del Paciente', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_informe_imagenes`
--
ALTER TABLE `tbl_paci_doc_informe_imagenes`
  MODIFY `id_informe_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_recipe`
--
ALTER TABLE `tbl_paci_doc_recipe`
  MODIFY `id_recipe` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Recipe', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_recipes_medicamento`
--
ALTER TABLE `tbl_paci_doc_recipes_medicamento`
  MODIFY `id_medicinamento` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Medicina', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_recipe_imagenes`
--
ALTER TABLE `tbl_paci_doc_recipe_imagenes`
  MODIFY `id_recipe_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_recipe_indicacion`
--
ALTER TABLE `tbl_paci_doc_recipe_indicacion`
  MODIFY `id_recipe_indicacion` int NOT NULL AUTO_INCREMENT COMMENT 'Id del indicacion Tratamientos';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_referencia`
--
ALTER TABLE `tbl_paci_doc_referencia`
  MODIFY `id_referencia` int NOT NULL AUTO_INCREMENT COMMENT 'Id Referencia del Paciente', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_referencia_imagenes`
--
ALTER TABLE `tbl_paci_doc_referencia_imagenes`
  MODIFY `id_referencia_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_reposo`
--
ALTER TABLE `tbl_paci_doc_reposo`
  MODIFY `id_reposo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_reposo_imagenes`
--
ALTER TABLE `tbl_paci_doc_reposo_imagenes`
  MODIFY `id_reposo_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_vacuna`
--
ALTER TABLE `tbl_paci_doc_vacuna`
  MODIFY `id_vacuna` int NOT NULL AUTO_INCREMENT COMMENT 'Numero de Registro de la Vucuna', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_doc_vacuna_imagenes`
--
ALTER TABLE `tbl_paci_doc_vacuna_imagenes`
  MODIFY `id_vacuna_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_emergencia_alerta`
--
ALTER TABLE `tbl_paci_emergencia_alerta`
  MODIFY `id_emergencia_alerta` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Seguimientos';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_emergencia_alerta_imagenes`
--
ALTER TABLE `tbl_paci_emergencia_alerta_imagenes`
  MODIFY `id_emergencia_alerta_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_emergencia_triage`
--
ALTER TABLE `tbl_paci_emergencia_triage`
  MODIFY `id_emergencia_triage` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Seguimientos', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_emergencia_triage_imagenes`
--
ALTER TABLE `tbl_paci_emergencia_triage_imagenes`
  MODIFY `id_emergencia_triage_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_nota_operatoria`
--
ALTER TABLE `tbl_paci_nota_operatoria`
  MODIFY `id_nota_operatoria` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Intervencion del Paciente', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_nota_operatoria_imagenes`
--
ALTER TABLE `tbl_paci_nota_operatoria_imagenes`
  MODIFY `id_nota_operatoria_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_primera_vez`
--
ALTER TABLE `tbl_paci_primera_vez`
  MODIFY `id_primera_vez` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Primera Vez', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_primera_vez_imagenes`
--
ALTER TABLE `tbl_paci_primera_vez_imagenes`
  MODIFY `id_primera_vez_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_segui_dermatologo`
--
ALTER TABLE `tbl_paci_segui_dermatologo`
  MODIFY `id_segui_dermatologo` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Seguimientos';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_segui_dermatologo_imagenes`
--
ALTER TABLE `tbl_paci_segui_dermatologo_imagenes`
  MODIFY `id_segui_dermatologo_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_segui_general`
--
ALTER TABLE `tbl_paci_segui_general`
  MODIFY `id_segui_general` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Seguimientos', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_segui_general_imagenes`
--
ALTER TABLE `tbl_paci_segui_general_imagenes`
  MODIFY `id_segui_general_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_segui_pediatra`
--
ALTER TABLE `tbl_paci_segui_pediatra`
  MODIFY `id_segui_pediatra` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Seguimientos', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_segui_pediatra_imagenes`
--
ALTER TABLE `tbl_paci_segui_pediatra_imagenes`
  MODIFY `id_segui_pediatra_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_segui_psicologia`
--
ALTER TABLE `tbl_paci_segui_psicologia`
  MODIFY `id_segui_psicologia` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Seguimientos', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_segui_psicologia_imagenes`
--
ALTER TABLE `tbl_paci_segui_psicologia_imagenes`
  MODIFY `id_segui_psicologia_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_segui_psiquiatra`
--
ALTER TABLE `tbl_paci_segui_psiquiatra`
  MODIFY `id_segui_psiquiatra` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Seguimientos', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_paci_segui_psiquiatria_imagenes`
--
ALTER TABLE `tbl_paci_segui_psiquiatria_imagenes`
  MODIFY `id_segui_psiquiatra_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_solicitud_ingreso`
--
ALTER TABLE `tbl_paci_solicitud_ingreso`
  MODIFY `id_solicitud_ingreso` int NOT NULL AUTO_INCREMENT COMMENT 'Id de Ingreso del Paciente';

--
-- AUTO_INCREMENT de la tabla `tbl_paci_solicitud_ingreso_imagenes`
--
ALTER TABLE `tbl_paci_solicitud_ingreso_imagenes`
  MODIFY `id_solicitud_ingreso_imagenes` int NOT NULL AUTO_INCREMENT COMMENT 'Id Ruta y Nombre Foto';

--
-- AUTO_INCREMENT de la tabla `ZZZ_Base_Tabla`
--
ALTER TABLE `ZZZ_Base_Tabla`
  MODIFY `id_registro` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

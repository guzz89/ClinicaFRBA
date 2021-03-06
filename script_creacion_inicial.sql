USE [GD2C2016]
GO

/************************************************************************************************************/
/*********************************** ELIMINO LAS TABLAS SI YA EXISTEN ***************************************/
/*************************Faltan los objetos, las tablas ya estan todas verificadas**************************/


if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[InsertarNumeroConsultaAfiliado]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger [WINCHESTER].[InsertarNumeroConsultaAfiliado]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[ActualizarCargaSemanalMigracion]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[ActualizarCargaSemanalMigracion]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[AgregarFuncionalidadARol]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[AgregarFuncionalidadARol]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[MigrarAfiliados]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[MigrarAfiliados]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[MigrarBonosYCompras]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[MigrarBonosYCompras]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[MigrarDisponibilidades]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[MigrarDisponibilidades]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p11BuscarProfesional]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p11BuscarProfesional]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p11TurnosDisponibles]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p11TurnosDisponibles]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p11ApellNombAfiliado]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p11ApellNombAfiliado]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p11BonosDisponibles]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p11BonosDisponibles]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p11InsertarConsulta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p11InsertarConsulta]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p8VerificarRangoFechas]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p8VerificarRangoFechas]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p8RegistrarTurnos]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p8RegistrarTurnos]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p8CrearTurnosDia]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p8CrearTurnosDia]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p8BuscarMatricula]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p8BuscarMatricula]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p8InsertarAgenda]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p8InsertarAgenda]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p8MostrarEspecialidades]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p8MostrarEspecialidades]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p8BuscarIdAgenda]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p8BuscarIdAgenda]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p8InsertarDisponibilidad]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p8InsertarDisponibilidad]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p12ConsultasParaRegistrar]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p12ConsultasParaRegistrar]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p12UpdateConsulta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p12UpdateConsulta]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[sumarIntentoFallido]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [sumarIntentoFallido]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[plogin]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[plogin]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pEsUsuarioHabilitado]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pEsUsuarioHabilitado]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p4BuscarUltimoAfiliado]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p4BuscarUltimoAfiliado]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p4ExisteUsuario]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p4ExisteUsuario]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p4ExisteAfiliado]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p4ExisteAfiliado]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p4ExisteUserName]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p4ExisteUserName]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p4InsertUsuario]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p4InsertUsuario]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p4InsertarAfiliado]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p4InsertarAfiliado]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p4BuscarAfiliado]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p4BuscarAfiliado]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p4BajaLogicaAfiliado]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p4BajaLogicaAfiliado]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p4ActualizarDatos]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p4ActualizarDatos]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p4InsertarCambioPlanM]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p4InsertarCambioPlanM]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p4FiltroHistorial]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p4FiltroHistorial]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p1MostrarFuncionalidadesNoAgregadasARol]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p1MostrarFuncionalidadesNoAgregadasARol]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p1AgregarRol]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p1AgregarRol]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p1ActualizarNombreRol]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p1ActualizarNombreRol]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p1EliminarFuncionalidadARol]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p1EliminarFuncionalidadARol]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p1HabilitarRol]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p1HabilitarRol]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p1DeshabilitarRol]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p1DeshabilitarRol]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p1MostrarRoles]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p1MostrarRoles]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p1MostrarFuncionalidadesAgregadasARol]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p1MostrarFuncionalidadesAgregadasARol]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[p1MostrarRolesHabilitados]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [p1MostrarRolesHabilitados]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[pMostrarRoles]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [pMostrarRoles]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pTraerMatricula]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pTraerMatricula]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pTraerFuncionalidades]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pTraerFuncionalidades]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pMostrarProfesionales]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pMostrarProfesionales]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pMostrarEspecialidades]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pMostrarEspecialidades]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pTraerEspecialidad]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pTraerEspecialidad]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pMostrarTurnos]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pMostrarTurnos]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pInsertarAfiliadoEnTurno]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pInsertarAfiliadoEnTurno]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pProfesionalQueTambienEsAfiliado]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pProfesionalQueTambienEsAfiliado]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[cancelarTurnoAf]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[cancelarTurnoAf]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[turnosPedidos]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[turnosPedidos]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[TurnosPendientesEntreFechas]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[TurnosPendientesEntreFechas]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[cancelarTurnosProf]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[cancelarTurnosProf]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[p_ObtenerEstadisticas]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[p_ObtenerEstadisticas]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[MostrarEspecialidades]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[MostrarEspecialidades]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pDatosAfiliado]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pDatosAfiliado]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pApellNombAfiliado]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pApellNombAfiliado]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pObtenerPlan]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pObtenerPlan]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pObtenerDatosPlan]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pObtenerDatosPlan]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pInsertarCompraBono]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pInsertarCompraBono]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[pInsertarBonoConsulta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [WINCHESTER].[pInsertarBonoConsulta]
GO

IF 
OBJECT_ID('[WINCHESTER].[fechaDeTurno]') IS NOT NULL
DROP FUNCTION [WINCHESTER].[fechaDeTurno]
GO

IF 
OBJECT_ID('GetDateMagico') IS NOT NULL
DROP FUNCTION GetDateMagico
GO


if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Disponibilidad]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Disponibilidad]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Agenda]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Agenda]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Funcionalidad_Por_Rol]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Funcionalidad_Por_Rol]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Funcionalidad]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Funcionalidad]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Rol_Por_Usuario]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Rol_Por_Usuario]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Rol]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Rol]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Cancelacion]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Cancelacion]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Modificacion]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Modificacion]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Consulta]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Consulta]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Bono_Consulta]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Bono_Consulta]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Compra_Bono]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Compra_Bono]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Turno]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Turno]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Especialidad_Por_Profesional]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Especialidad_Por_Profesional]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Especialidad]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Especialidad]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Tipo_Especialidad]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Tipo_Especialidad]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Profesional]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Profesional]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Afiliado]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Afiliado]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Plan_Medico]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Plan_Medico]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[WINCHESTER].[Usuario]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [WINCHESTER].[Usuario]
GO



/************************************************************************************************************/
/******************************** ELIMINO SI EXISTE Y CREO EL SCHEMA ****************************************/
/************************************************************************************************************/


IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'WINCHESTER')
DROP SCHEMA [WINCHESTER]
GO

CREATE SCHEMA [WINCHESTER] AUTHORIZATION gd
GO


/************************************************************************************************************/
/*********************** CREO LAS TABLAS Y MIGRO LOS DATOS DE LA TABLA MAESTRA ******************************/
/************************************************************************************************************/

/****** <<USUARIO>> ******/


CREATE TABLE [WINCHESTER].[Usuario](
	[user_username] [varchar](255) NOT NULL,
	[user_nombre] [varchar](255) NOT NULL,
	[user_apellido] [varchar](255) NOT NULL,
	[user_telefono] [numeric] (18,0) NOT NULL,
	[user_sexo] [char](1) NULL,
	[user_estado_civil] [varchar](11) NULL,
	[user_dni] [numeric] (18,0) NOT NULL,
	[user_tipo_dni] [varchar](3) NULL,
	[user_fecha_nac] [datetime] NOT NULL,
	[user_direccion] [varchar](255) NOT NULL,
	[user_mail] [varchar](255) NOT NULL,
	[user_password] [varbinary](MAX) NOT NULL,
	[user_intentos_fallidos] int NOT NULL,
	[user_habilitado] [bit] NOT NULL)
GO

ALTER TABLE [WINCHESTER].[Usuario] ADD CONSTRAINT PK_USUARIO
	PRIMARY KEY(user_username)
GO


/****** <<PLAN>> ******/

CREATE TABLE [WINCHESTER].[Plan_Medico](
	[plan_id] [int] NOT NULL,
	[plan_descripcion] [varchar] (255) NULL,
	[plan_precio_bono_consulta] numeric(18,0) NOT NULL,
	[plan_precio_bono_farmacia] numeric(18,0) NULL)
GO

ALTER TABLE [WINCHESTER].[Plan_Medico] ADD CONSTRAINT PK_PLAN
	PRIMARY KEY([plan_id])
GO


/****** <<AFILIADO>> ******/

CREATE TABLE [WINCHESTER].[Afiliado](
	[afil_id] [int] NOT NULL,
	[afil_usuario] [varchar] (255) NOT NULL,
	[afil_plan] [int] NOT NULL,
	[afil_principal] [int] NULL,
	[afil_familiares_a_cargo] [int] NOT NULL,
	[afil_nro_consultas] [int] NOT NULL,
	[afil_habilitado] [bit] NOT NULL,
	[afil_fecha_de_baja] [datetime] NULL)
GO

ALTER TABLE [WINCHESTER].[Afiliado] ADD CONSTRAINT PK_AFILIADO
	PRIMARY KEY([afil_id])
GO

ALTER TABLE [WINCHESTER].[Afiliado] ADD CONSTRAINT [FK_AFILIADO_PRINCIPAL] FOREIGN KEY ([afil_principal]) 
REFERENCES [WINCHESTER].[Afiliado]([afil_id])
GO

ALTER TABLE [WINCHESTER].[Afiliado] ADD CONSTRAINT [FK_Afiliado_Plan] FOREIGN KEY ([afil_plan]) 
REFERENCES [WINCHESTER].[Plan_Medico]([plan_id])
GO

ALTER TABLE [WINCHESTER].[Afiliado]  ADD  CONSTRAINT [FK_Afiliado_Usuario] FOREIGN KEY([afil_usuario])
REFERENCES [WINCHESTER].[Usuario]([user_username])
GO


/****** <<PROFESIONAL>> ******/

CREATE TABLE [WINCHESTER].[Profesional](
	[prof_matricula] [int] NOT NULL,
	[prof_usuario] [varchar] (255) NOT NULL)
GO

ALTER TABLE [WINCHESTER].[Profesional] ADD CONSTRAINT PK_PROFESIONAL
	PRIMARY KEY([prof_matricula])
GO

ALTER TABLE [WINCHESTER].[Profesional] ADD CONSTRAINT [FK_PROFESIONAL_USUARIO] FOREIGN KEY ([prof_usuario]) 
REFERENCES [WINCHESTER].[Usuario]([user_username])
GO

/****** <<TIPO_ESPECIALIDAD>> ******/


CREATE TABLE [WINCHESTER].[Tipo_Especialidad](
	[tipo_id] [int] NOT NULL,
	[tipo_descripcion] [varchar] (255) NOT NULL)
GO

ALTER TABLE [WINCHESTER].[Tipo_Especialidad] ADD CONSTRAINT PK_TIPO_ESPECIALIDAD
	PRIMARY KEY([tipo_id])
GO

/****** <<ESPECIALIDAD>> ******/


CREATE TABLE [WINCHESTER].[Especialidad](
	[esp_codigo] [int] NOT NULL,
	[esp_tipo] [int] NOT NULL,
	[esp_descripcion] [varchar] (255) NOT NULL)
GO

ALTER TABLE [WINCHESTER].[Especialidad] ADD CONSTRAINT PK_ESPECIALIDAD
	PRIMARY KEY([esp_codigo])
GO

ALTER TABLE [WINCHESTER].[Especialidad]  ADD  CONSTRAINT [FK_Especialidad_Tipo] FOREIGN KEY([esp_tipo])
REFERENCES [WINCHESTER].[Tipo_Especialidad]([tipo_id])
GO

/****** <<ESPECIALIDAD POR PROFESIONAL>> ****/


CREATE TABLE [WINCHESTER].[Especialidad_Por_Profesional](
	[esp_por_prof_profesional] [int] NOT NULL,
	[esp_por_prof_especialidad] [int] NOT NULL)
GO

ALTER TABLE [WINCHESTER].[Especialidad_Por_Profesional] ADD CONSTRAINT PK_Esp_Por_Prof PRIMARY KEY 
([esp_por_prof_profesional], [esp_por_prof_especialidad]) 
GO

ALTER TABLE [WINCHESTER].[Especialidad_Por_Profesional] ADD CONSTRAINT [FK_Especialidad_Por_Profesional_Profesional] 
FOREIGN KEY ([esp_por_prof_profesional]) 
REFERENCES [WINCHESTER].[Profesional]([prof_matricula])
GO

ALTER TABLE [WINCHESTER].[Especialidad_Por_Profesional] ADD CONSTRAINT [FK_Especialidad_Por_Profesional_Especialidad] 
FOREIGN KEY ([esp_por_prof_especialidad]) 
REFERENCES [WINCHESTER].[Especialidad]([esp_codigo])
GO


/****** <<TURNO>> ******/


CREATE TABLE [WINCHESTER].[Turno](
	[turn_id] int IDENTITY(1,1)NOT NULL,
	[turn_fecha] [datetime] NOT NULL,
	[turn_profesional] [int] NOT NULL,
	[turn_afiliado] [int] NULL,
	[turn_especialidad] [int] NOT NULL)
GO

ALTER TABLE [WINCHESTER].[Turno] ADD CONSTRAINT PK_TURNO
	PRIMARY KEY([turn_id])
GO

ALTER TABLE [WINCHESTER].[Turno]  ADD  CONSTRAINT [FK_Turno_Profesional] FOREIGN KEY(turn_profesional, turn_especialidad)
	REFERENCES [WINCHESTER].[Especialidad_Por_Profesional](esp_por_prof_profesional, esp_por_prof_especialidad)
GO

ALTER TABLE [WINCHESTER].[Turno]  ADD  CONSTRAINT [FK_Turno_Afiliado] FOREIGN KEY(turn_afiliado)
	REFERENCES [WINCHESTER].[Afiliado](afil_id)
GO

/****** <<COMPRA_BONO>> ******/


CREATE TABLE [WINCHESTER].[Compra_Bono](
	[comp_id] [int] IDENTITY(1,1) NOT NULL,
	[comp_afiliado] [int] NOT NULL,
	[comp_precio_bono] [numeric] (18,0) NOT NULL,
	[comp_cantidad] [int] NOT NULL,
	[comp_total] [numeric] (18,0) NOT NULL,
	[comp_fecha_compra] [datetime] NOT NULL)	
GO

ALTER TABLE [WINCHESTER].[Compra_Bono] ADD CONSTRAINT PK_COMPRA_BONO
	PRIMARY KEY([comp_id])
GO

ALTER TABLE [WINCHESTER].[Compra_Bono]  ADD  CONSTRAINT [FK_Compra_Afiliado] FOREIGN KEY([comp_afiliado])
REFERENCES [WINCHESTER].[Afiliado]([afil_id])
GO


/****** <<BONO_CONSULTA>> ******/


CREATE TABLE [WINCHESTER].[Bono_Consulta](
	[bono_id] [int] IDENTITY(1,1) NOT NULL,
	[bono_afiliado] [int] NOT NULL,
	[bono_plan] [int] NOT NULL,
	[bono_compra] [int] NOT NULL,
	[bono_nro_consulta_clinica] [int] NULL,
	[bono_nro_consulta_afiliado] [int] NULL,
	[bono_fecha_impresion] [datetime] NULL)
GO

ALTER TABLE [WINCHESTER].[Bono_Consulta] ADD CONSTRAINT PK_BONO_CONSULTA
	PRIMARY KEY([bono_id])
GO

ALTER TABLE [WINCHESTER].[Bono_Consulta]  ADD  CONSTRAINT [FK_Bono_Afiliado] FOREIGN KEY([bono_afiliado])
REFERENCES [WINCHESTER].[Afiliado]([afil_id])
GO

ALTER TABLE [WINCHESTER].[Bono_Consulta]  ADD  CONSTRAINT [FK_Bono_Plan] FOREIGN KEY([bono_plan])
REFERENCES [WINCHESTER].[Plan_Medico]([plan_id])
GO

ALTER TABLE [WINCHESTER].[Bono_Consulta]  ADD  CONSTRAINT [FK_Bono_Compra] FOREIGN KEY([bono_compra])
REFERENCES [WINCHESTER].[Compra_Bono]([comp_id])
GO

/****** <<CONSULTA>> ******/


CREATE TABLE [WINCHESTER].[Consulta](
	[cons_id] [int] IDENTITY(1,1) NOT NULL,
	[cons_turno] [int] NOT NULL,
	[cons_bono] [int] NOT NULL,
	[cons_fechaDeAtencion] [datetime] NOT NULL,
	[cons_enfermedades] [varchar] (255) NULL,
	[cons_sintomas] [varchar] (255) NULL)
GO

ALTER TABLE [WINCHESTER].[Consulta] ADD CONSTRAINT PK_CONSULTA
	PRIMARY KEY([cons_id])
GO

ALTER TABLE [WINCHESTER].[Consulta] ADD CONSTRAINT FK_CONSULTA_TURNO FOREIGN KEY([cons_turno])
	REFERENCES [Winchester].[Turno]([turn_id])
GO

ALTER TABLE [WINCHESTER].[Consulta] ADD CONSTRAINT FK_CONSULTA_BONO FOREIGN KEY([cons_bono])
	REFERENCES [WINCHESTER].[Bono_Consulta]([bono_id])
GO

/****** <<Modificacion>> ***Listo***/

CREATE TABLE [WINCHESTER].[Modificacion](
	[mod_afiliado] int NOT NULL,
	[mod_plan] int NOT NULL,
	[mod_descripcion] [varchar](255) NULL,
	[mod_fecha] [datetime] NOT NULL)
 GO

ALTER TABLE [WINCHESTER].[Modificacion] ADD CONSTRAINT PK_Modificacion PRIMARY KEY([mod_afiliado], [mod_plan], [mod_fecha])
GO

ALTER TABLE [WINCHESTER].[Modificacion]  ADD  CONSTRAINT FK_Modificacion_Afiliado FOREIGN KEY([mod_afiliado])
	REFERENCES [WINCHESTER].[Afiliado]([afil_id])
GO

ALTER TABLE [WINCHESTER].[Modificacion]  ADD  CONSTRAINT FK_Modificacion_Plan FOREIGN KEY([mod_plan])
	REFERENCES [WINCHESTER].[Plan_Medico]([plan_id])
GO


/******<<AGENDA>>******/


CREATE TABLE [WINCHESTER].[Agenda](
	[agen_id] [int] IDENTITY(1,1) NOT NULL,
	[agen_profesional] [int] NOT NULL,
	[agen_fecha_inicio] [datetime] NOT NULL,
	[agen_fecha_fin] [datetime] NOT NULL,
	[agen_carga_semanal] [numeric] (18,1) NOT NULL)
GO

ALTER TABLE [WINCHESTER].[Agenda] ADD CONSTRAINT PK_ID_AGENDA
	PRIMARY KEY([agen_id])
GO

ALTER TABLE [WINCHESTER].[Agenda] ADD CONSTRAINT [FK_Agenda_Profesional] FOREIGN KEY([agen_profesional])
REFERENCES [WINCHESTER].[Profesional]([prof_matricula]) 
GO


/****** <<DISPONIBILIDAD>> ******/


CREATE TABLE [WINCHESTER].[Disponibilidad](
	[disp_id] [int] IDENTITY(1,1) NOT NULL,
	[disp_agenda] [int] NOT NULL,
	[disp_profesional] [int] NOT NULL,
	[disp_especialidad] [int] NOT NULL,
	[disp_dia] [nvarchar] (20) NOT NULL,
	[disp_hora_inicio] [time] NOT NULL,
	[disp_hora_fin] [time] NOT NULL)
GO

ALTER TABLE [WINCHESTER].[Disponibilidad] ADD CONSTRAINT PK_ID_DISPONIBILIDAD
	PRIMARY KEY([disp_id],[disp_agenda])
GO

ALTER TABLE [WINCHESTER].[Disponibilidad] ADD CONSTRAINT [FK_Disponibilidad_Agenda] FOREIGN KEY (disp_agenda)
REFERENCES [WINCHESTER].[Agenda] (agen_id)
GO

ALTER TABLE [WINCHESTER].[Disponibilidad]  ADD  CONSTRAINT [FK_Disponibilidad_Especialidad_Por_Profesional] 
FOREIGN KEY([disp_profesional],[disp_especialidad])
REFERENCES [WINCHESTER].[Especialidad_Por_Profesional]([esp_por_prof_profesional],[esp_por_prof_especialidad]) 
GO


/****** <<CANCELACION>> ******/



CREATE TABLE [WINCHESTER].[Cancelacion](
	[canc_id] [int] IDENTITY(1,1) NOT NULL,
	[canc_turno] [int] NOT NULL,
	[canc_tipo] [int] NOT NULL,
	[canc_detalle] [varchar] (255) NOT NULL,
	[canc_fecha] [datetime] NOT NULL)
GO

ALTER TABLE [WINCHESTER].[Cancelacion] ADD CONSTRAINT PK_CANCELACION
	PRIMARY KEY(canc_id)
GO

ALTER TABLE [WINCHESTER].[Cancelacion]  ADD  CONSTRAINT [FK_Cancelacion_Moneda] FOREIGN KEY([canc_turno])
	REFERENCES [WINCHESTER].[Turno]([turn_id])
GO

/***************<<ROL>>*************************/

CREATE TABLE WINCHESTER.Rol(
	rol_id [int] IDENTITY(1,1) PRIMARY KEY,
	rol_descripcion	 VARCHAR(255) NOT NULL UNIQUE,
	rol_habilitado BIT NOT NULL)
GO

/****** <<ROL_POR_USUARIO>> ******/

CREATE TABLE WINCHESTER.Rol_Por_Usuario ( 
	rol_por_usuario_rol [int] NOT NULL, 
	rol_por_usuario_usuario [varchar] (255) NOT NULL) 
GO

ALTER TABLE [WINCHESTER].[Rol_Por_Usuario] ADD CONSTRAINT PK_USU_ROL
	PRIMARY KEY(rol_por_usuario_rol, rol_por_usuario_usuario)
GO

ALTER TABLE WINCHESTER.Rol_Por_Usuario ADD CONSTRAINT FK_ROL_POR_USUARIO_USU FOREIGN KEY (rol_por_usuario_usuario) REFERENCES WINCHESTER.Usuario(user_username)
GO

ALTER TABLE WINCHESTER.Rol_Por_Usuario ADD CONSTRAINT FK_ROL_ROL_USU FOREIGN KEY (rol_por_usuario_rol) REFERENCES WINCHESTER.Rol(rol_id)
GO

/***************<<Funcionalidad>>*********************/

CREATE TABLE WINCHESTER.Funcionalidad(
	func_id [int] IDENTITY(1,1) PRIMARY KEY,
	func_descripcion VARCHAR(255) NOT NULL UNIQUE)
GO

/***************<<Funcionalidad_Por_Rol>>*************/

CREATE TABLE WINCHESTER.Funcionalidad_Por_Rol ( 
	func_por_rol_funcionalidad [int] NOT NULL, 
	func_por_rol_rol [int] NOT NULL) 
GO

ALTER TABLE WINCHESTER.Funcionalidad_Por_Rol ADD CONSTRAINT FK_Funcionalidad FOREIGN KEY (func_por_rol_funcionalidad) REFERENCES WINCHESTER.Funcionalidad(func_id)
GO

ALTER TABLE WINCHESTER.Funcionalidad_Por_Rol ADD CONSTRAINT FK_Rol FOREIGN KEY (func_por_rol_rol) REFERENCES WINCHESTER.Rol(rol_id)
GO

ALTER TABLE [WINCHESTER].[Funcionalidad_Por_Rol] ADD CONSTRAINT PK_FUNC_ROL
	PRIMARY KEY(func_por_rol_funcionalidad, func_por_rol_rol)
GO


/****************************************MIGRACION DE DATOS********************************************************************/

/**********************************Carga de Planes**************************************************************************/


INSERT INTO [WINCHESTER].[Plan_Medico] (plan_id, plan_descripcion, plan_precio_bono_consulta, plan_precio_bono_farmacia) 
SELECT DISTINCT Plan_Med_Codigo, Plan_Med_Descripcion, Plan_Med_Precio_Bono_Consulta, Plan_Med_Precio_Bono_Farmacia
FROM gd_esquema.Maestra
GO

/**********************************Carga de tipos de especialidades*********************************************************/

INSERT INTO [WINCHESTER].[Tipo_Especialidad] (tipo_id, tipo_descripcion) 
SELECT DISTINCT Tipo_Especialidad_Codigo, Tipo_Especialidad_Descripcion
FROM gd_esquema.Maestra
WHERE Tipo_Especialidad_Codigo IS NOT NULL
AND Tipo_Especialidad_Descripcion IS NOT NULL
GO

/**********************************Carga de especialidades******************************************************************/

INSERT INTO [WINCHESTER].[Especialidad] (esp_codigo, esp_tipo, esp_descripcion) 
SELECT DISTINCT Especialidad_Codigo, Tipo_Especialidad_Codigo, Especialidad_Descripcion
FROM gd_esquema.Maestra
WHERE Especialidad_Codigo IS NOT NULL
AND Tipo_Especialidad_Codigo IS NOT NULL
AND Especialidad_Descripcion IS NOT NULL
GO

/**********************************Carga de Usuario (solo pacientes)******************************************************/

INSERT INTO [WINCHESTER].[Usuario] (user_username, user_nombre, user_apellido, user_telefono, user_sexo, user_estado_civil, user_dni, user_tipo_dni, user_fecha_nac, user_direccion, user_mail, user_password, user_intentos_fallidos, user_habilitado)
SELECT DISTINCT CONVERT(varchar(255),Paciente_Dni), Paciente_Nombre, Paciente_Apellido, Paciente_Telefono, NULL, NULL, Paciente_Dni, 'DNI', Paciente_Fecha_Nac, Paciente_Direccion, Paciente_Mail, HASHBYTES('SHA2_256', CONVERT(varchar(255), Paciente_Dni)), 0, 1 
FROM gd_esquema.Maestra
WHERE Paciente_Nombre IS NOT NULL
AND Paciente_Apellido IS NOT NULL
AND Paciente_Telefono IS NOT NULL
AND Paciente_Dni IS NOT NULL
AND Paciente_Direccion IS NOT NULL
AND Paciente_Mail IS NOT NULL
AND Paciente_Fecha_Nac IS NOT NULL
GO

/**********************************Carga de Usuario (solo profesionales)******************************************************/

INSERT INTO [WINCHESTER].[Usuario] (user_username, user_nombre, user_apellido, user_telefono, user_sexo, user_estado_civil, user_dni, user_tipo_dni, user_fecha_nac, user_direccion, user_mail, user_password, user_intentos_fallidos, user_habilitado)
SELECT DISTINCT CONVERT(varchar(255), Medico_Dni), Medico_Nombre, Medico_Apellido, Medico_Telefono, NULL, NULL, Medico_Dni, 'DNI', Medico_Fecha_Nac, Medico_Direccion, Medico_Mail, HASHBYTES('SHA2_256', CONVERT(varchar(255), Medico_Dni)), 0, 1 
FROM gd_esquema.Maestra 
WHERE Medico_Nombre IS NOT NULL
AND Medico_Apellido IS NOT NULL
AND Medico_Telefono IS NOT NULL
AND Medico_Dni IS NOT NULL
AND Medico_Direccion IS NOT NULL
AND Medico_Mail IS NOT NULL
AND Medico_Fecha_Nac IS NOT NULL
GO

/**********************************Carga de Usuario (solo administradores)******************************************************/

INSERT INTO [WINCHESTER].[Usuario] (user_username, user_nombre, user_apellido, user_telefono, user_sexo, user_estado_civil, user_dni, user_tipo_dni, user_fecha_nac, user_direccion, user_mail, user_password, user_intentos_fallidos, user_habilitado) 
VALUES ('admin', 'Julian', 'Blacutt', 1569513664, NULL, NULL, 38278468, 'DNI', '19/07/1994', 'Recondo 601', 'julian.b_94@hotmail.com', HASHBYTES('SHA2_256', 'w23e'), 0, 1)
GO

/**********************************Carga de Afiliado*****************************************************/

CREATE PROCEDURE WINCHESTER.MigrarAfiliados
AS
BEGIN
DECLARE @idAfiliado int, @usuarioAfiliado varchar(255), @planAfiliado int, @nroConsultas int
SET @idAfiliado = 1
DECLARE cAfiliados CURSOR FOR
SELECT DISTINCT CONVERT(varchar(255), Paciente_Dni), Plan_Med_Codigo, 0
FROM gd_esquema.Maestra
GROUP BY Paciente_Dni, Plan_Med_Codigo
OPEN cAfiliados
FETCH NEXT FROM cAfiliados INTO @usuarioAfiliado, @planAfiliado, @nroConsultas
WHILE @@FETCH_STATUS = 0
BEGIN
INSERT INTO [WINCHESTER].[Afiliado] (afil_id, afil_usuario, afil_plan, afil_principal, afil_familiares_a_cargo, afil_nro_consultas, afil_habilitado, afil_fecha_de_baja) VALUES (@idAfiliado, @usuarioAfiliado, @planAfiliado, NULL, 0, @nroConsultas, 1, NULL)
SET @idAfiliado = @idAfiliado + 100
FETCH NEXT FROM cAfiliados INTO @usuarioAfiliado, @planAfiliado, @nroConsultas
END
CLOSE cAfiliados
DEALLOCATE cAfiliados
END
GO

EXEC WINCHESTER.MigrarAfiliados 
GO

/**********************************Carga de Profesional*****************************************************/

INSERT INTO [WINCHESTER].[Profesional] (prof_matricula, prof_usuario)
SELECT DISTINCT Medico_Dni, CONVERT(varchar(255), Medico_Dni) 
FROM gd_esquema.Maestra
WHERE Medico_Dni IS NOT NULL 
AND Medico_Mail IS NOT NULL
GO

/**********************************Carga Especialidades por profesional**************************************/


INSERT INTO [WINCHESTER].[Especialidad_Por_Profesional] (esp_por_prof_profesional, esp_por_prof_especialidad)
SELECT DISTINCT Medico_Dni, Especialidad_Codigo FROM gd_esquema.Maestra
WHERE Medico_Dni IS NOT NULL 
GO

/***********************Trigger para actualizar el bono que es usado y la cantidad de consultas del afiliado*******************/

CREATE TRIGGER WINCHESTER.InsertarNumeroConsultaAfiliado ON WINCHESTER.Consulta AFTER INSERT
AS
BEGIN
DECLARE @nroConsultaAfiliado int, @nroConsultaClinica int, @nroTurno int, @nroBono int, @fechaAtencion datetime, @enfermedades varchar(255), @sintomas varchar(255),
@fechaDeAtencion datetime
DECLARE cConsultas CURSOR FOR SELECT * FROM INSERTED
OPEN cConsultas
FETCH NEXT FROM cConsultas INTO @nroConsultaClinica,@nroTurno,@nroBono,@fechaDeAtencion,@enfermedades,@sintomas
WHILE(@@FETCH_STATUS = 0)
BEGIN
UPDATE WINCHESTER.Bono_Consulta
SET bono_nro_consulta_afiliado = ((SELECT afil_nro_consultas FROM WINCHESTER.Afiliado WHERE afil_id = bono_afiliado)+1), 
    bono_nro_consulta_clinica = @nroConsultaClinica
WHERE bono_id = @nroBono
UPDATE WINCHESTER.Afiliado
SET afil_nro_consultas = (SELECT bono_nro_consulta_afiliado FROM WINCHESTER.Bono_Consulta WHERE afil_id = bono_afiliado AND bono_id = @nroBono)
WHERE afil_id = (SELECT bono_afiliado FROM WINCHESTER.Bono_Consulta WHERE bono_id = @nroBono)
FETCH NEXT FROM cConsultas INTO @nroConsultaClinica,@nroTurno,@nroBono,@fechaDeAtencion,@enfermedades,@sintomas
END
CLOSE cConsultas
DEALLOCATE cConsultas
END
GO

/**************************************Carga de bonos y compras (PROCEDURE)**********************************************/


CREATE PROCEDURE WINCHESTER.MigrarBonosYCompras
AS
BEGIN
DECLARE @nroBono int, @nroAfiliado int, @precioBono numeric(18,0), @plan int, @fechaBono datetime, @fechaCompra datetime, @contador int;
SET @contador = 1;
DECLARE cCursor CURSOR FOR SELECT Bono_Consulta_Numero, Bono_Consulta_Fecha_Impresion, Plan_Med_Codigo, Plan_Med_Precio_Bono_Consulta, Compra_Bono_Fecha, afil_id FROM gd_esquema.Maestra, WINCHESTER.Afiliado WHERE afil_usuario = CONVERT(varchar(255),Paciente_Dni) AND Bono_Consulta_Numero IS NOT NULL AND Compra_Bono_Fecha IS NOT NULL ORDER BY Bono_Consulta_Fecha_Impresion ASC;
OPEN cCursor
FETCH NEXT FROM cCursor INTO @nroBono,@fechaBono,@plan,@precioBono,@fechaCompra,@nroAfiliado
WHILE(@@FETCH_STATUS = 0)
BEGIN
INSERT INTO [WINCHESTER].[Compra_Bono] (comp_afiliado, comp_precio_bono, comp_cantidad, comp_total, comp_fecha_compra) VALUES (@nroAfiliado, @precioBono, 1, @precioBono, @fechaCompra)
SET IDENTITY_INSERT WINCHESTER.Bono_Consulta ON;
INSERT INTO [WINCHESTER].[Bono_Consulta] (bono_id, bono_afiliado, bono_plan, bono_compra, bono_nro_consulta_clinica, bono_nro_consulta_afiliado, bono_fecha_impresion) VALUES (@nroBono, @nroAfiliado, @plan, @contador, NULL, NULL, @fechaBono) 
SET IDENTITY_INSERT WINCHESTER.Bono_Consulta OFF;
SET @contador = @contador + 1
FETCH NEXT FROM cCursor INTO @nroBono,@fechaBono,@plan,@precioBono,@fechaCompra,@nroAfiliado
END
CLOSE cCursor
DEALLOCATE cCursor
END
GO

EXEC WINCHESTER.MigrarBonosYCompras 
GO

/**************************************Carga de turnos****************************************/



SET IDENTITY_INSERT WINCHESTER.Turno ON;
INSERT INTO [WINCHESTER].[Turno] (turn_id, turn_profesional, turn_afiliado, turn_fecha, turn_especialidad)
SELECT Turno_Numero, prof_matricula, afil_id, Turno_Fecha, esp_codigo
FROM gd_esquema.Maestra, WINCHESTER.Profesional, WINCHESTER.Afiliado, WINCHESTER.Especialidad
WHERE prof_matricula = Medico_Dni
AND esp_codigo = Especialidad_Codigo
AND afil_usuario = CONVERT(varchar(255), Paciente_Dni)
AND Turno_Numero IS NOT NULL
AND Turno_Fecha IS NOT NULL
AND Consulta_Enfermedades IS NULL
ORDER BY Turno_Fecha ASC
SET IDENTITY_INSERT WINCHESTER.Turno OFF;
GO


/**************************************Carga de consultas***************************************************/


INSERT INTO [WINCHESTER].[Consulta] (cons_turno, cons_bono, cons_fechaDeAtencion, cons_enfermedades, cons_sintomas) 
SELECT Turno_Numero, Bono_Consulta_Numero, Turno_Fecha, Consulta_Enfermedades, Consulta_Sintomas FROM gd_esquema.Maestra
WHERE Compra_Bono_Fecha IS NULL
AND Turno_Numero IS NOT NULL
AND Bono_Consulta_Numero IS NOT NULL
AND Bono_Consulta_Fecha_Impresion IS NOT NULL
AND Consulta_Enfermedades IS NOT NULL
AND Consulta_Sintomas IS NOT NULL
ORDER BY Turno_Fecha ASC
GO


/**************************** <<CREO TABLAS PARA EL MANEJO DE ROLES Y FUNCIONALIDADES>> ******************************/



INSERT INTO WINCHESTER.Rol (rol_descripcion, rol_habilitado) VALUES ('Administrador General', 1)
INSERT INTO WINCHESTER.Rol (rol_descripcion, rol_habilitado) VALUES ('Afiliado', 1)
INSERT INTO WINCHESTER.Rol (rol_descripcion, rol_habilitado) VALUES ('Profesional', 1)
INSERT INTO WINCHESTER.Funcionalidad(func_descripcion) VALUES ('ABM Rol')
INSERT INTO WINCHESTER.Funcionalidad(func_descripcion) VALUES ('ABM Afiliado')
INSERT INTO WINCHESTER.Funcionalidad(func_descripcion) VALUES ('Registro agenda profesional')
INSERT INTO WINCHESTER.Funcionalidad(func_descripcion) VALUES ('Pedir Turno')
INSERT INTO WINCHESTER.Funcionalidad(func_descripcion) VALUES ('Compra de bonos')
INSERT INTO WINCHESTER.Funcionalidad(func_descripcion) VALUES ('Registro de llegada para atencion medica')
INSERT INTO WINCHESTER.Funcionalidad(func_descripcion) VALUES ('Registro de resultado para atencion medica')
INSERT INTO WINCHESTER.Funcionalidad(func_descripcion) VALUES ('Cancelar atencion medica')
INSERT INTO WINCHESTER.Funcionalidad(func_descripcion) VALUES ('Listado Estadistico')
GO

/**************************** <<STORED PROCEDURE PARA ROLES Y FUNCIONALIDADES>> ******************************/

CREATE PROCEDURE WINCHESTER.AgregarFuncionalidadARol(@nombrerol varchar(255), @funcionalidad varchar(255)) 
AS
BEGIN
	INSERT INTO WINCHESTER.Funcionalidad_Por_Rol (func_por_rol_funcionalidad, func_por_rol_rol)
VALUES ((SELECT func_id FROM WINCHESTER.Funcionalidad WHERE func_descripcion = @funcionalidad),(SELECT rol_id FROM WINCHESTER.Rol WHERE rol_descripcion = @nombrerol))
END
GO

EXEC WINCHESTER.AgregarFuncionalidadARol @nombrerol = 'Administrador General', @funcionalidad = 'ABM Rol'
EXEC WINCHESTER.AgregarFuncionalidadARol @nombrerol = 'Administrador General', @funcionalidad = 'ABM Afiliado'
EXEC WINCHESTER.AgregarFuncionalidadARol @nombrerol = 'Administrador General', @funcionalidad = 'Compra de bonos'
EXEC WINCHESTER.AgregarFuncionalidadARol @nombrerol = 'Administrador General', @funcionalidad = 'Registro de llegada para atencion medica'
EXEC WINCHESTER.AgregarFuncionalidadARol @nombrerol = 'Administrador General', @funcionalidad = 'Listado Estadistico'
EXEC WINCHESTER.AgregarFuncionalidadARol @nombrerol = 'Afiliado', @funcionalidad = 'Pedir Turno'
EXEC WINCHESTER.AgregarFuncionalidadARol @nombrerol = 'Afiliado', @funcionalidad = 'Compra de bonos'
EXEC WINCHESTER.AgregarFuncionalidadARol @nombrerol = 'Afiliado', @funcionalidad = 'Cancelar atencion medica'
EXEC WINCHESTER.AgregarFuncionalidadARol @nombrerol = 'Profesional', @funcionalidad = 'Registro de resultado para atencion medica'
EXEC WINCHESTER.AgregarFuncionalidadARol @nombrerol = 'Profesional', @funcionalidad = 'Registro agenda profesional'
EXEC WINCHESTER.AgregarFuncionalidadARol @nombrerol = 'Profesional', @funcionalidad = 'Cancelar atencion medica'
GO

/**********Asignacion de roles a los usuarios**************/

INSERT INTO [WINCHESTER].[Rol_Por_Usuario] (rol_por_usuario_rol, rol_por_usuario_usuario)
SELECT 2,user_username FROM WINCHESTER.Usuario, WINCHESTER.Afiliado
WHERE user_username = afil_usuario
GO

INSERT INTO [WINCHESTER].[Rol_Por_Usuario] (rol_por_usuario_rol, rol_por_usuario_usuario)
SELECT 3,user_username FROM WINCHESTER.Usuario, WINCHESTER.Profesional
WHERE user_username = prof_usuario
GO

INSERT INTO [WINCHESTER].[Rol_Por_Usuario] (rol_por_usuario_rol, rol_por_usuario_usuario) VALUES (1, 'admin')
GO


/*********************Migración de las agendas***********************************/

INSERT INTO WINCHESTER.Agenda (agen_profesional, agen_fecha_inicio, agen_fecha_fin, agen_carga_semanal)
select Medico_Dni, MIN(Turno_Fecha), MAX(Turno_Fecha),0
from gd_esquema.Maestra
where Consulta_Enfermedades IS NOT NULL and Medico_Dni IS NOT NULL
group by Medico_Dni
order by Medico_Dni ASC, MAX(Turno_Fecha)
GO


/*********************Migración de las disponibilidades***********************************/

create procedure WINCHESTER.MigrarDisponibilidades
as
	begin
		declare @matricula int
		declare @i int
		declare @diaSemana nvarchar(10)
		declare @idAgenda int
		declare @especialidad int
		declare @horaIni time
		declare @horaFin time

		declare cProfesionales cursor for
			 select agen_id,agen_profesional
			 from WINCHESTER.Agenda
			 order by agen_profesional

		open cProfesionales
		fetch next from cProfesionales into @idAgenda,@matricula
		while @@FETCH_STATUS=0
			begin
				set @i = 0
				while @i <= 6
					begin
						set @diaSemana = DATENAME(WEEKDAY,DATEADD(DAY,@i,'2/1/2017'))
						declare cDispoSegunDia INSENSITIVE cursor for /*DE ACA SALE LA MAGIA*/
							 select turn_especialidad,min(convert(time,turn_fecha)),max(convert(time,turn_fecha))
							 from WINCHESTER.Turno
							 where turn_profesional=@matricula and
								   DATENAME(WEEKDAY,turn_fecha)=@diaSemana
							 group by turn_especialidad
							 order by turn_especialidad

						open cDispoSegunDia
						fetch next from cDispoSegunDia into @especialidad,@horaIni,@horaFin
						while @@FETCH_STATUS=0
							begin
									insert into WINCHESTER.Disponibilidad (disp_agenda,disp_profesional,disp_especialidad,disp_dia,disp_hora_inicio,disp_hora_fin)
									values (@idAgenda,@matricula,@especialidad,@diaSemana,@horaIni,DATEADD(MINUTE,30,@horaFin))
									fetch next from cDispoSegunDia into @especialidad,@horaIni,@horaFin
							end
						close cDispoSegunDia
						deallocate cDispoSegunDia
						set @i = @i + 1
					end
				fetch next from cProfesionales into @idAgenda,@matricula
			end
		close cProfesionales
		deallocate cProfesionales
	end
go

EXEC WINCHESTER.MigrarDisponibilidades
GO

/*************************Procedure para actualizar la carga semanal de las agendas en base a las disponibilidades migradas***************/

create procedure WINCHESTER.ActualizarCargaSemanalMigracion
as
begin

	declare @agenda int
	declare @cargaSemanal int

	declare cDisponibilidades cursor for 
	select disp_agenda,
	(SUM(DATEDIFF(HOUR, disp_hora_inicio, disp_hora_fin))*(count(distinct disp_dia)))/count(disp_dia) 
	from WINCHESTER.Disponibilidad
	group by disp_agenda

	open cDisponibilidades
	fetch next from cDisponibilidades into @agenda,@cargaSemanal
	
	WHILE(@@FETCH_STATUS = 0)
	BEGIN
		update WINCHESTER.Agenda
		set agen_carga_semanal = @cargaSemanal
		where agen_id = @agenda

		fetch next from cDisponibilidades into @agenda, @cargaSemanal
	END

	close cDisponibilidades
	deallocate cDisponibilidades		
END
GO

EXEC WINCHESTER.ActualizarCargaSemanalMigracion
GO

/*######################## [01]::[ABM Rol] ############################*/

/*######################## ALTA ############################*/

create procedure p1AgregarRol @rolAgregar varchar(255), @resultado int output
as
begin
	if EXISTS(select rol_descripcion from WINCHESTER.Rol where rol_descripcion = @rolAgregar)
		SET @resultado = 0
	else
		SET @resultado = 1;
		insert into WINCHESTER.Rol (rol_descripcion, rol_habilitado) values (@rolAgregar, 1);
end
go


create procedure p1MostrarFuncionalidadesNoAgregadasARol @nombreRol varchar(255)
as
begin
select func_descripcion from WINCHESTER.Funcionalidad
where func_id NOT IN (select func_por_rol_funcionalidad from WINCHESTER.Funcionalidad_Por_Rol, WINCHESTER.Rol
					  where func_por_rol_rol = rol_id and rol_descripcion = @nombreRol)
end
go


/*################# MODIFICACION ###############*/

create procedure p1ActualizarNombreRol @id int, @nombreRol varchar(255)
as
begin
		update WINCHESTER.Rol set rol_descripcion = @nombreRol where rol_id = @id;
end
go


create procedure p1EliminarFuncionalidadARol @nombreFuncionalidad varchar(255), @idRol int
as
begin
	delete from WINCHESTER.Funcionalidad_Por_Rol where func_por_rol_funcionalidad = (select func_id
																					from WINCHESTER.Funcionalidad
																					where func_descripcion = @nombreFuncionalidad)
												 and func_por_rol_rol = @idRol
end
go


create procedure p1HabilitarRol @idRol int
as
begin
update WINCHESTER.Rol set rol_habilitado = 1 where rol_id = @idRol
end
go

create procedure p1MostrarRoles
as
begin
	select rol_id as Id, 
	       rol_descripcion as Nombre, 
		   case when rol_habilitado = 1 then 'SI'
		        when rol_habilitado = 0 then 'NO'
		   end as Habilitado
	from WINCHESTER.Rol
end
go

create procedure p1MostrarFuncionalidadesAgregadasARol @nombreRol varchar(255)
as
begin
select func_descripcion from WINCHESTER.Funcionalidad
where func_id IN (select func_por_rol_funcionalidad from WINCHESTER.Funcionalidad_Por_Rol, WINCHESTER.Rol
					  where func_por_rol_rol = rol_id and rol_descripcion = @nombreRol)
end
go

/*############################ BAJA ############################*/

create procedure p1MostrarRolesHabilitados
as
begin
select rol_id as Id, rol_descripcion as Nombre from WINCHESTER.Rol
where rol_habilitado = 1
end
go

create procedure p1DeshabilitarRol @idRol int
as
begin
UPDATE WINCHESTER.Rol SET rol_habilitado = 0 where rol_id = @idRol;
DELETE FROM WINCHESTER.Rol_Por_Usuario where rol_por_usuario_rol = @idRol;
end
go


/*######################## [02]::[Login y Seguridad] ##################################*/


CREATE PROC sumarIntentoFallido
@user_username varchar(255),
@user_intentos_fallidos int
as
BEGIN
UPDATE WINCHESTER.Usuario
SET user_intentos_fallidos = user_intentos_fallidos + 1
where user_username = @user_username

if(@user_intentos_fallidos = 2)
	UPDATE WINCHESTER.Usuario
	SET user_habilitado = 0
	where user_username = @user_username	
END
go


CREATE PROC WINCHESTER.pLogin
@user_username varchar(255),
@user_password varchar(255)
as
DECLARE @password_auxiliar varchar(255)
DECLARE @intentos_auxiliar int
select  @password_auxiliar = user_password, @intentos_auxiliar = user_intentos_fallidos
from	WINCHESTER.Usuario
where	user_username = @user_username
	BEGIN
	if(HASHBYTES('SHA2_256', @user_password) <> @password_auxiliar)
		exec sumarIntentoFallido @user_username, @intentos_auxiliar
	END

	BEGIN
	if(HASHBYTES('SHA2_256', @user_password) = @password_auxiliar and @intentos_auxiliar <= 2)
		UPDATE	WINCHESTER.Usuario
		SET		user_intentos_fallidos = 0
		where	user_username = @user_username
	END
select  user_username, user_password, user_habilitado
from	WINCHESTER.Usuario
where	user_username = @user_username and user_password = HASHBYTES('SHA2_256', @user_password)
GO


CREATE PROC WINCHESTER.pEsUsuarioHabilitado
@usuario varchar(255)
as
select	user_habilitado
from	WINCHESTER.Usuario
where	user_username = @usuario
go


CREATE PROC pMostrarRoles
@user_username varchar(255)
as
select	rol_descripcion
from	WINCHESTER.Rol
where	rol_id in	(select rol_por_usuario_rol
					from	WINCHESTER.Rol_Por_Usuario
					where	rol_por_usuario_usuario = @user_username)
go


CREATE PROC WINCHESTER.pTraerFuncionalidades
@rol_descripcion varchar(255)
as
select	func_descripcion
from	WINCHESTER.Funcionalidad
where	func_id in (select	func_por_rol_funcionalidad
					from	WINCHESTER.Funcionalidad_Por_Rol
					where	func_por_rol_rol = (select	rol_id
												from	WINCHESTER.Rol
												where	rol_descripcion = @rol_descripcion))
go


/*################## FUNCTION PARA CONCATENAR LA FECHA DEL SISTEMA CON LA HORA ACTUAL ##################*/


create function GetDateMagico(@FechaSistema varchar(10))
returns datetime
as
	begin
		declare @fechaConcatenada varchar(23)

		set @fechaConcatenada = @FechaSistema + ' ' + substring(CONVERT(varchar,CONVERT (time, GETDATE())),1,8)

		return (convert(datetime,@fechaConcatenada))
	end
go


/*################## [04]::[ABM de Afiliados]#########################*/

/*ALTA*/
create procedure p4BuscarUltimoAfiliado 
as
	begin
		select top 1 afil_id
		from WINCHESTER.Afiliado
		order by afil_id desc
	end
go

create procedure p4ExisteUserName(@unUserName varchar(255))
as
	begin
		select user_username,user_fecha_nac
		from WINCHESTER.Usuario
		where user_username=@unUserName
	end
go

create procedure p4ExisteUsuario(@tipoDNI varchar(3), @mail varchar(255),@dni numeric(18))
as
	begin
		select user_username
		from WINCHESTER.Usuario
		where user_tipo_dni=@tipoDNI and
			  user_mail=@mail and
			  user_dni=@dni
	end
go


create procedure p4ExisteAfiliado(@usuario varchar(255))
as
	begin
		select afil_id,afil_usuario
		from WINCHESTER.Afiliado,WINCHESTER.Usuario
		where afil_usuario=@usuario and
			  user_username=@usuario 
	end
go

create procedure p4InsertUsuario(@userName varchar(255),@nombre varchar(255),@apellido varchar(255),
							     @telefono numeric(18),@sexo varchar (6),@estadoCivil varchar (11),@dni numeric(18),
								 @tipoDNI varchar(3),@fechaNacimiento datetime,@direccion varchar(255),@mail varchar(255),
								 @password varchar(255))
as
	begin
		insert into WINCHESTER.Usuario (user_username,user_nombre,user_apellido,user_telefono,user_sexo,user_estado_civil,
										user_dni,user_tipo_dni,user_fecha_nac,user_direccion,user_mail,user_password,
										user_intentos_fallidos,user_habilitado) 
		values (@userName,@nombre,@apellido,@telefono,substring(@sexo,1,1),@estadoCivil,@dni,@tipoDNI,@fechaNacimiento,
		        @direccion,@mail,HASHBYTES('SHA2_256', @password),
				0,1)
		
	end
go

create procedure p4InsertarAfiliado(@Id int,@usuario varchar(255),@plan int,@principal int,@cantHijos int)
as
	begin
		insert into WINCHESTER.Afiliado (afil_id,afil_usuario,afil_plan,afil_principal,afil_familiares_a_cargo,
										afil_nro_consultas,afil_habilitado,afil_fecha_de_baja)
		values (@Id,@usuario,@plan,@principal,@cantHijos,0,1,NULL)

		insert into WINCHESTER.Rol_Por_Usuario (rol_por_usuario_rol,rol_por_usuario_usuario)
		values (2,@usuario)  /*2 = AFILIADO*/
	end
go

/*BAJA*/
create procedure p4BuscarAfiliado (@apellido varchar(255),@nombre varchar(255))
as
	begin
		select afil_id as ID,user_username as NombreDeUsuario, user_apellido as Apellido,user_nombre as Nombre,user_tipo_dni as TipoDNI,user_dni as DNI,
		       user_direccion as Direccion,user_telefono as Telefono,user_mail as Mail,user_fecha_nac as FechaNacimiento,user_sexo as Sexo,user_estado_civil as EstadoCivil,
			   afil_familiares_a_cargo as CantidadDeHijos, afil_plan as PlanMedico
		from WINCHESTER.Afiliado,WINCHESTER.Usuario
		where afil_usuario=user_username and
			  afil_habilitado = 1 and
			  user_apellido like '%' + @apellido + '%' and
			  user_nombre like '%' + @nombre + '%'		
	end
go

create procedure p4BajaLogicaAfiliado(@usuario varchar(255),@ID int,@fechaBaja varchar(10))
as
	begin
		update WINCHESTER.Afiliado
		set afil_habilitado=0,
			afil_fecha_de_baja=dbo.GetDateMagico(@fechaBaja)
		where afil_usuario=@usuario

		delete from WINCHESTER.Rol_Por_Usuario
		where rol_por_usuario_rol=2 and
			  rol_por_usuario_usuario=@usuario			  

		delete from WINCHESTER.Turno
		where turn_afiliado=@ID and
			  datediff (MINUTE,dbo.GetDateMagico(@fechaBaja),turn_fecha) >= 0 and /*si da neg., es xq el turno es anterior a @fechaBaja*/
			  turn_id NOT IN (select canc_turno 
							  from WINCHESTER.Cancelacion)
	end
go

/*MODIFICACION*/
create procedure p4ActualizarDatos(@userName varchar(255),@telefono numeric(18),@direccion varchar(255),@mail varchar(255),@password varchar(255),
								   @Id int,@plan int)
as
	begin
		update WINCHESTER.Usuario
		set user_telefono=@telefono,
			user_direccion=@direccion,
			user_mail=@mail,
			user_password=HASHBYTES('SHA2_256', @password)
		where user_username=@userName
		update WINCHESTER.Afiliado
		set afil_plan=@plan
		where afil_id=@Id
		
	end
go

create procedure p4InsertarCambioPlanM(@afiliado int,@planViejo int,@descripcion varchar(255),@fechaModificacion varchar(10))
as
	begin
		insert into WINCHESTER.Modificacion (mod_afiliado,mod_plan,mod_descripcion,mod_fecha)
		values (@afiliado,@planViejo,@descripcion,dbo.GetDateMagico(@fechaModificacion))
	end
go


/*HISTORIAL*/
create procedure p4FiltroHistorial(@afiliado int,@apellido varchar(255),@nombre varchar(255))
as
	begin
		if @afiliado >= 0
			(select mod_afiliado as ID,user_apellido as Apellido,user_nombre as Nombre,mod_plan as PlanAnterior,mod_descripcion as Descripcion,mod_fecha as Fecha
			 from WINCHESTER.Modificacion,WINCHESTER.Afiliado,WINCHESTER.Usuario
			 where mod_afiliado=afil_id and
				   afil_usuario=user_username and
				   afil_id=@afiliado);
		else
			(select mod_afiliado as ID,user_apellido as Apellido,user_nombre as Nombre,mod_plan as PlanAnterior,mod_descripcion as Descripcion,mod_fecha as Fecha
			 from WINCHESTER.Modificacion,WINCHESTER.Afiliado,WINCHESTER.Usuario
			 where mod_afiliado=afil_id and
				   afil_usuario=user_username and
				   user_apellido like '%' + @apellido + '%' and
				   user_nombre like '%' + @nombre + '%');
	end
go


/*############### [08]::[Registrar Agenda Profesional] #######################*/

create procedure p8MostrarEspecialidades(@matricula int)
as
	begin
		select esp_codigo,esp_descripcion
		from WINCHESTER.Profesional,WINCHESTER.Especialidad,WINCHESTER.Especialidad_Por_Profesional
		where prof_matricula=@matricula and
			  prof_matricula=esp_por_prof_profesional and
		      esp_por_prof_especialidad=esp_codigo
	end
go

create procedure p8InsertarAgenda(@matricula int,@fechaIni datetime,@fechaFin datetime,@cargaHoraria numeric(18,1))
as
	begin
		insert into WINCHESTER.Agenda (agen_profesional,agen_fecha_inicio,agen_fecha_fin,agen_carga_semanal)
		values (@matricula,CONVERT(datetime, CONVERT(date,@fechaIni)),CONVERT(datetime, CONVERT(date,@fechaFin)),@cargaHoraria)
	end
go

create procedure p8BuscarIdAgenda (@matricula int,@fechaIni datetime,@fechaFin datetime)
as
	begin
		select agen_id
		from WINCHESTER.Agenda
		where agen_profesional=@matricula and
			  agen_fecha_inicio = @fechaIni and
			  agen_fecha_fin = @fechaFin
	end
go

create procedure p8InsertarDisponibilidad(@agenda int,@matricula int,@especialidad int,@dia nvarchar(20),@horaIni nvarchar(5),@horaFin nvarchar(5))
as
	begin
		insert into WINCHESTER.Disponibilidad (disp_agenda,disp_profesional,disp_especialidad,disp_dia,disp_hora_inicio,disp_hora_fin)
		values (@agenda,@matricula,@especialidad,@dia,convert(time,@horaIni),convert(time,@horaFin))
	end
go

create procedure p8BuscarMatricula (@username varchar(255))
as
	begin
		select prof_matricula
		from WINCHESTER.Profesional,WINCHESTER.Usuario
		where prof_usuario=@username
	end
go


create procedure p8CrearTurnosDia(@dia nvarchar(20),@idAgenda int,@fechaSentinela datetime)
as
	begin
		declare @fechaAUX datetime
		declare @profesional int
		declare @especialidad int 
		declare @horaIni time
		declare @horaFin time
		declare cDispoSegunDia cursor for
			(select disp_profesional,disp_especialidad,disp_hora_inicio,disp_hora_fin
			from WINCHESTER.Disponibilidad
			where disp_agenda = @idAgenda and
				  disp_dia = @dia)
	
		open cDispoSegunDia
		fetch next from cDispoSegunDia into @profesional,@especialidad,@horaIni,@horaFin
		while @@FETCH_STATUS=0
			begin
				while @horaIni < @horaFin
					begin
						set @fechaAUX = @fechaSentinela + CONVERT(datetime,@horaIni)

						insert into WINCHESTER.Turno (turn_profesional,turn_afiliado,turn_fecha,turn_especialidad)
						values (@profesional,NULL,@fechaAux,@especialidad)

						set @horaIni= DATEADD(MINUTE,30,@horaIni)
					end
				fetch next from cDispoSegunDia into @profesional,@especialidad,@horaIni,@horaFin
			end
		close cDispoSegunDia
		deallocate cDispoSegunDia
		
	end
go

create procedure p8RegistrarTurnos(@idAgenda int)
as
	begin
		declare @cantDias int
		declare @fechaIni datetime
		declare @fechaFin datetime
		declare @i int
		declare @fechaSentinela datetime

		declare cAgenda cursor for
			(select agen_fecha_inicio,agen_fecha_fin
			from WINCHESTER.Agenda
			where agen_id = @idAgenda)
			
		open cAgenda
		fetch next from cAgenda into @fechaIni,@fechaFin

		set @cantDias=DATEDIFF(DAY,@fechaIni,@fechaFin)
		set @i =0
		while @i <= @cantDias
			begin
				set @fechaSentinela = DATEADD(DAY,@i,@fechaIni)
				if DATENAME(WEEKDAY,@fechaSentinela)='Lunes'
					begin
						execute p8CrearTurnosDia 'Lunes',@idAgenda,@fechaSentinela
					end

				if DATENAME(WEEKDAY,@fechaSentinela)='Martes'
					begin
						execute p8CrearTurnosDia 'Martes',@idAgenda,@fechaSentinela 
					end

				if DATENAME(WEEKDAY,@fechaSentinela)='Miércoles'
					begin
						execute p8CrearTurnosDia 'Miércoles',@idAgenda,@fechaSentinela 
					end

				if DATENAME(WEEKDAY,@fechaSentinela)='Jueves'
					begin
						execute p8CrearTurnosDia 'Jueves',@idAgenda,@fechaSentinela 
					end

				if DATENAME(WEEKDAY,@fechaSentinela)='Viernes'
					begin
						execute p8CrearTurnosDia 'Viernes',@idAgenda,@fechaSentinela 
					end

				if DATENAME(WEEKDAY,@fechaSentinela)='Sábado'
					begin
						execute p8CrearTurnosDia 'Sábado',@idAgenda,@fechaSentinela 
					end

				set @i=@i+1
			end
		close cAgenda
		deallocate cAgenda
	end
go

create procedure p8VerificarRangoFechas (@matriculaProf int,@newFechaIni datetime,@newFechaFin datetime)
as
	begin
		select agen_id
		from WINCHESTER.Agenda
		where agen_profesional = @matriculaProf and
			  ((@newFechaIni between agen_fecha_inicio and agen_fecha_fin) or (@newFechaFin between agen_fecha_inicio and agen_fecha_fin))
	end
go


/*#################### [09]::[Compra de bonos] ###########################*/


CREATE PROC WINCHESTER.pDatosAfiliado
@afil_usuario varchar(255)
as
select	afil_id, afil_plan, afil_habilitado
from	WINCHESTER.Afiliado
where	afil_usuario = @afil_usuario
go


CREATE PROC WINCHESTER.pApellNombAfiliado(@afiliado int)
as
begin
	select	user_apellido as Apellido,user_nombre as Nombre
	from	WINCHESTER.Usuario
	where	user_username = (select TOP 1 afil_usuario
							 from	WINCHESTER.Afiliado
							 where	afil_id = @afiliado)
end
go


CREATE PROC WINCHESTER.pObtenerPlan
@afil_id int
as
select	afil_plan
from	WINCHESTER.Afiliado
where	afil_id = @afil_id
go


CREATE PROC WINCHESTER.pObtenerDatosPlan
@plan_id int
as
select	plan_descripcion, plan_precio_bono_consulta, plan_precio_bono_farmacia
from	WINCHESTER.Plan_Medico
where	plan_id = @plan_id
go


CREATE PROC WINCHESTER.pInsertarCompraBono
@comp_afiliado int,
@comp_precio_bono int,
@comp_cantidad int,
@comp_total int,
@comp_fecha varchar(10)
as
INSERT WINCHESTER.Compra_Bono(comp_afiliado, comp_precio_bono, comp_cantidad, comp_total, comp_fecha_compra)  
    VALUES (@comp_afiliado, @comp_precio_bono, @comp_cantidad, @comp_total, dbo.GetDateMagico(@comp_fecha))
go

CREATE PROC WINCHESTER.pInsertarBonoConsulta
@bono_afiliado int,
@bono_plan int,
@bono_fecha_impresion varchar(10)
as
INSERT WINCHESTER.Bono_Consulta(bono_afiliado, bono_plan, bono_compra, bono_nro_consulta_clinica, bono_nro_consulta_afiliado, bono_fecha_impresion)  
    VALUES (@bono_afiliado, @bono_plan, (SELECT		TOP 1 comp_id
										from		WINCHESTER.Compra_Bono
										order by	comp_id desc),
										null, null, dbo.GetDateMagico(@bono_fecha_impresion))
GO

/*#################### [10]::[Pedido de turnos] ###########################*/


CREATE PROC WINCHESTER.pTraerMatricula
@prof_usuario varchar(255)
as
select	prof_matricula
from	WINCHESTER.Profesional
where	prof_usuario = @prof_usuario
go

CREATE PROC WINCHESTER.pMostrarProfesionales
@esp_por_prof_especialidad int
as
select	user_username, user_apellido as Apellido, user_nombre as Nombre
from	WINCHESTER.Usuario
where	user_username in (select	prof_usuario
							from	WINCHESTER.Profesional
							where	prof_matricula in  (select	esp_por_prof_profesional
														from	WINCHESTER.Especialidad_Por_Profesional
														where	esp_por_prof_especialidad = @esp_por_prof_especialidad))
go


CREATE PROC WINCHESTER.pMostrarEspecialidades
as
select	*
from	WINCHESTER.Especialidad
go


CREATE PROC WINCHESTER.pTraerEspecialidad
@esp_codigo int
as
select	esp_descripcion
from	WINCHESTER.Especialidad
where	esp_codigo = @esp_codigo
go


CREATE PROC WINCHESTER.pMostrarTurnos
@turn_fecha varchar(10),
@turn_profesional int,
@turn_especialidad int
as
select	*
from	WINCHESTER.Turno
where	CONVERT(date, turn_fecha) = CONVERT(date, @turn_fecha) and
		turn_profesional = @turn_profesional and
		turn_especialidad = @turn_especialidad and
		turn_afiliado is null and
		turn_id not in (select	canc_turno
						from	WINCHESTER.Cancelacion
						where	canc_tipo = 1)
go


CREATE PROC WINCHESTER.pInsertarAfiliadoEnTurno
@turn_id		int,
@turn_afiliado	int
as
UPDATE	WINCHESTER.Turno
SET		turn_afiliado = @turn_afiliado
where	turn_id = @turn_id
go


CREATE PROC WINCHESTER.pProfesionalQueTambienEsAfiliado
@afil_id int
as
select	prof_matricula
from	WINCHESTER.Profesional
where	prof_usuario = (select	afil_usuario
						from	WINCHESTER.Afiliado
						where	afil_id = @afil_id)
go


/*#################### [11]::[Registro de llegada de atención médica] ####################*/


create procedure p11BuscarProfesional (@aProfesional varchar(50),@especialidad varchar(50))
as
	select prof_matricula as Matricula,user_apellido as Apellido,user_nombre as Nombre,esp_descripcion as Especialidad
	from WINCHESTER.Profesional, WINCHESTER.Usuario,WINCHESTER.Especialidad_Por_Profesional,WINCHESTER.Especialidad
	where prof_usuario=user_username and
		  prof_matricula=esp_por_prof_profesional and
		  esp_por_prof_especialidad=esp_codigo and
		  user_apellido like '%' + @aProfesional + '%' and
		  esp_descripcion like '%' + @especialidad + '%'
go


create procedure p11TurnosDisponibles (@matricula int,@especialidad nvarchar(255),@fechaSistema varchar(10))
as
	select turn_id as Numero,turn_afiliado as Afiliado,user_apellido as Apellido,user_nombre as Nombre,turn_fecha as Fecha
	from WINCHESTER.Turno,WINCHESTER.Afiliado,WINCHESTER.Usuario
	where turn_profesional=@matricula and
		  turn_afiliado=afil_id and
		  afil_usuario=user_username and
		  turn_especialidad = (select esp_codigo
							   from WINCHESTER.Especialidad
							   where esp_descripcion = @especialidad) and
		  /*convert(varchar(20),turn_fecha,3)=convert(varchar(20),@fechaSistema,3) and*/
		  convert(date,turn_fecha)=convert(date,@fechaSistema) and
		  (select count(*)
		   from WINCHESTER.Consulta
		   where cons_turno=turn_id)=0 and
		   (select count(*)
		    from WINCHESTER.Cancelacion
			where canc_turno=turn_id)=0
go

create procedure p11ApellNombAfiliado(@afiliado int)
as
	select user_apellido as Apellido,user_nombre as Nombre
	from WINCHESTER.Afiliado,WINCHESTER.Usuario
	where afil_usuario=user_username and
		  afil_id=@afiliado 
go

create procedure p11BonosDisponibles(@afiliado int)
as
	select bono_id as Id, bono_afiliado as Afiliado, bono_plan as PlanMedico, bono_fecha_impresion as FechaImpresion
	from WINCHESTER.Bono_Consulta
	where bono_nro_consulta_clinica  is null and
		  (select count(*)
		   from WINCHESTER.Consulta
		   where cons_bono=bono_id) = 0 and
		   (select afil_principal
		    from WINCHESTER.Afiliado
			where afil_id=bono_afiliado) = (select afil_principal
											from WINCHESTER.Afiliado
											where afil_id=@afiliado)
go

create procedure p11InsertarConsulta (@turno int,@bono int,@fechaSistema varchar(10))
as
	insert  into WINCHESTER.Consulta (cons_turno,cons_bono,cons_fechaDeAtencion)
	values (@turno,@bono,dbo.GetDateMagico(@fechaSistema))
	update WINCHESTER.Bono_Consulta
	set bono_nro_consulta_clinica = (select top 1 cons_id
									 from WINCHESTER.Consulta
									 order by cons_id desc),
		bono_nro_consulta_afiliado = (select COUNT(*)
									  from WINCHESTER.Turno, WINCHESTER.Consulta
									  where turn_id = cons_turno and
											turn_afiliado = (select top 1 t2.turn_afiliado
															 from WINCHESTER.Turno t2
															 where t2.turn_id = @turno))
	where bono_id = @bono
go


/*################### [12]::[Registro de resultado de atención médica] ##########################*/


create procedure p12ConsultasParaRegistrar(@matricula int,@fechaSistema varchar(10))
as
	select cons_id as Id,cons_turno as Turno,cons_bono as Bono,cons_fechaDeAtencion as FechaDeAtencion,
    cons_enfermedades as Enfermedades, cons_sintomas as Sintomas
	from WINCHESTER.Consulta, WINCHESTER.Turno
	where turn_profesional=@matricula and 
		  cons_turno=turn_id and 
		  convert(date,turn_fecha)=convert(date,@fechaSistema) and
		  cons_enfermedades is null and
		  cons_sintomas is null and
		  turn_afiliado is not null and
		  turn_id not in (select canc_turno
						  from WINCHESTER.Cancelacion
						  where canc_turno = turn_id
						  and canc_tipo = 1)
go

create procedure p12UpdateConsulta (@id int, @enfermedades varchar(255),@sintomas varchar(255))
as
	begin
		update WINCHESTER.Consulta
		set cons_enfermedades=@enfermedades,
			cons_sintomas=@sintomas
		where cons_id=@id
	end
go

/*################ [13] Cancelacion de atencion medica por parte del afiliado ##################*/


CREATE FUNCTION [WINCHESTER].[fechaDeTurno](@turnID int)
RETURNS datetime
AS
BEGIN
DECLARE @fechaTurno datetime
SET @fechaTurno =
(
SELECT turn_fecha FROM WINCHESTER.Turno
WHERE turn_id = @turnID
)
RETURN @fechaTurno
END
GO


CREATE PROCEDURE [WINCHESTER].[cancelarTurnoAf]
@codTurno int, @detalle varchar(255), @fechaApp varchar(10)
AS
DECLARE @tipoCanc int, @fechaAppMagica datetime
SET @tipoCanc = 0
SET @fechaAppMagica = dbo.GetDateMagico(@fechaApp)
	BEGIN
	IF (DATEDIFF(DAY,@fechaAppMagica,WINCHESTER.fechaDeTurno(@codTurno)) = 0)
		BEGIN
		RAISERROR('No puede cancelarse un turno el mismo día de la atención',11,108)
		END
		
		BEGIN
		INSERT INTO WINCHESTER.Cancelacion(canc_turno,canc_tipo,canc_detalle,canc_fecha)
		VALUES(@codTurno,@tipoCanc,@detalle,CONVERT(datetime,@fechaAppMagica))
		END
		
		BEGIN
		UPDATE WINCHESTER.Turno 
		SET turn_afiliado = null
		WHERE turn_id = @codTurno
		END
	END
GO

CREATE PROCEDURE [WINCHESTER].[turnosPedidos]
@afil_usuario varchar(255), @fechaApp varchar(10)
AS
SELECT turn_id as 'Turno ID', turn_fecha as 'Fecha del turno', turn_profesional as 'Profesional'
FROM WINCHESTER.Turno T, WINCHESTER.Afiliado A
WHERE T.turn_afiliado = A.afil_id and
		A.afil_usuario = @afil_usuario
AND T.turn_id NOT IN (SELECT cons_turno FROM WINCHESTER.Consulta)
AND T.turn_id NOT IN (SELECT canc_turno FROM WINCHESTER.Cancelacion
					WHERE canc_tipo = 1)
AND T.turn_fecha >= dbo.GetDateMagico(@fechaApp)
GO

/*################ [13] Cancelacion de atencion medica por parte del profesional ##################*/


CREATE PROCEDURE [WINCHESTER].[TurnosPendientesEntreFechas]
@profesionalID varchar(255), @fechaInicio datetime, @fechaFin datetime
AS 
BEGIN
SELECT turn_id, turn_fecha, turn_afiliado FROM WINCHESTER.Turno
INNER JOIN WINCHESTER.Profesional P ON P.prof_matricula = turn_profesional
WHERE DATEDIFF(DAY,turn_fecha,@fechaInicio) <=0 AND DATEDIFF(DAY,turn_fecha,@fechaFin)>=0
AND P.prof_usuario = @profesionalID
END
GO


CREATE PROCEDURE [WINCHESTER].[cancelarTurnosProf]
@fechaInicio datetime, @fechaFin datetime, @detalle varchar(255), @profesionalID varchar(255), @fechaApp varchar(9)
AS
DECLARE @tipoCanc int, @codTurno int, @fechaAppMagica datetime
SET @fechaAppMagica = dbo.GetDateMagico(@fechaApp)
SET @tipoCanc = 1
DECLARE cursorC CURSOR
FOR SELECT turn_id FROM WINCHESTER.Turno
INNER JOIN WINCHESTER.Profesional P ON P.prof_matricula = turn_profesional
--WHERE turn_fecha BETWEEN @fechaInicio and @fechaFin
WHERE DATEDIFF(DAY,turn_fecha,@fechaInicio) <=0 AND DATEDIFF(DAY,turn_fecha,@fechaFin)>=0
AND P.prof_usuario = @profesionalID
OPEN cursorC
FETCH cursorC INTO @codTurno
WHILE @@FETCH_STATUS = 0
	BEGIN
		IF DATEDIFF(DAY,@fechaAppMagica,WINCHESTER.fechaDeTurno(@codTurno)) = 0
		BEGIN
			RAISERROR('No puede cancelarse un turno el mismo día de la atención',10,107)
		END
		INSERT INTO WINCHESTER.Cancelacion(canc_turno,canc_tipo,canc_detalle,canc_fecha)
		VALUES(@codTurno,@tipoCanc,@detalle,convert(datetime,@fechaAppMagica))
		FETCH NEXT FROM cursorC INTO @codTurno
	END
CLOSE cursorC
DEALLOCATE cursorC
GO

/*################ [14] Listado estadístico ##################*/

CREATE PROCEDURE [WINCHESTER].[p_ObtenerEstadisticas] (
    @Anio INT
    ,@Semestre INT
	,@Mes INT
    ,@TipoListado INT
	,@Especialidad INT
	,@TipoCancelacion INT
    )
AS
BEGIN
    DECLARE @MesInicio INT
        ,@MesFin INT
 
    IF (@Semestre = 1)
    BEGIN
        SET @MesInicio = 1
        SET @MesFin = 6
    END
 
    IF (@Semestre = 2)
    BEGIN
        SET @MesInicio = 7
        SET @MesFin = 12
    END

	IF (@Mes NOT BETWEEN @MesInicio AND @MesFin)
	BEGIN
		RAISERROR('El mes no pertenece al semestre indicado',11,108)
	END
  
	 IF (@Mes is not null)
	BEGIN
		SET @MesInicio = @Mes 
		SET @MesFin = @Mes
	END

    --top 5 especialidades que mas se registraron cancelaciones (filtrar por parte de afiliados, por parte de medicos y los dos en general)
	IF (@TipoListado = 1)
    BEGIN
        select  TOP 5 E.esp_codigo AS 'Código de especialidad', E.esp_descripcion AS 'Nombre de especialidad', COUNT(C.canc_id) AS 'Cantidad de cancelaciones'
        from 
        WINCHESTER.Especialidad E
        INNER JOIN WINCHESTER.Turno T ON T.turn_especialidad = E.esp_codigo
		INNER JOIN WINCHESTER.Cancelacion C ON C.canc_turno = T.turn_id
		WHERE MONTH(C.canc_fecha) BETWEEN @MesInicio AND @MesFin
		AND YEAR(C.canc_fecha) = @Anio
		AND (@TipoCancelacion is null OR C.canc_tipo = @TipoCancelacion)
		AND (@Mes is null OR MONTH(C.canc_fecha)= @Mes)
        GROUP BY E.esp_codigo, E.esp_descripcion
        ORDER BY COUNT(C.canc_id) DESC
     END

	--top 5 profesionales mas consultados por especialidad  /*obtener nombre por usuario*/
	IF (@TipoListado = 2)
     BEGIN
		
        select  TOP 5 user_apellido+', '+user_nombre AS 'Profesional', E.esp_codigo AS 'Código de especialidad', E.esp_descripcion AS 'Nombre de especialidad', COUNT(C.cons_id) AS 'Cantidad de consultas' 
        from 
        WINCHESTER.Profesional P
		INNER JOIN WINCHESTER.Usuario ON user_username = P.prof_usuario
        INNER JOIN WINCHESTER.Turno T ON T.turn_profesional = P.prof_matricula
		INNER JOIN WINCHESTER.Consulta C ON C.cons_turno = T.turn_id
		INNER JOIN WINCHESTER.Especialidad E ON  E.esp_codigo= CASE WHEN @Especialidad is null THEN T.turn_especialidad
																ELSE @Especialidad
																END
		WHERE T.turn_profesional = P.prof_matricula
		AND C.cons_turno = T.turn_id
		AND MONTH(T.turn_fecha) BETWEEN @MesInicio AND @MesFin
		AND YEAR(T.turn_fecha) = @Anio
		AND (@Mes is null OR MONTH(T.turn_fecha)= @Mes)
		GROUP BY E.esp_codigo,E.esp_descripcion,P.prof_usuario, user_apellido, user_nombre
        ORDER BY COUNT(C.cons_id) DESC, user_apellido ASC
	END
	

	  	--top 5 profesionales con menos horas trabajadas filtrando por especialidad
	IF (@TipoListado = 3)
    BEGIN
	
        select  TOP 5 user_apellido+', '+user_nombre AS 'Médico', E.esp_codigo AS 'Código de especialidad', E.esp_descripcion AS 'Nombre de especialidad',  (COUNT(T.turn_id)*30)/60 AS 'Cantidad de horas trabajadas'
        from 
        WINCHESTER.Profesional P
		INNER JOIN WINCHESTER.Usuario ON user_username = CONVERT(varchar(255), prof_usuario)
        INNER JOIN WINCHESTER.Turno T ON T.turn_profesional = P.prof_matricula
		INNER JOIN WINCHESTER.Especialidad E ON E.esp_codigo = CASE WHEN @Especialidad is null THEN T.turn_especialidad
																ELSE @Especialidad
																END
		WHERE MONTH(T.turn_fecha) BETWEEN @MesInicio AND @MesFin
		AND (@Mes is null OR MONTH(T.turn_fecha)= @Mes)
		AND YEAR(T.turn_fecha) = @Anio
		GROUP BY E.esp_codigo,E.esp_descripcion,user_apellido, user_nombre
        ORDER BY COUNT(T.turn_id) ASC, user_apellido ASC
	END



	 --top 5 afiliados con mayor cantidad de bonos comprados (detallando si pertenece a un grupo familiar)
	IF (@TipoListado = 4)
    BEGIN
        select TOP 5 user_apellido+', '+user_nombre AS 'Afiliado',
		CASE WHEN  (SELECT afil_principal FROM WINCHESTER.Afiliado A
					WHERE A.afil_id = C.comp_afiliado) is not NULL
	--afiliado que tenga en afil_principal distinto de null quiere decir que pertenece a un grupo familiar
			THEN 'Pertenece a un grupo familiar'
			ELSE 'No pertenece a un grupo familiar'
			END AS 'Información adicional',
		SUM(C.comp_cantidad) AS 'Cantidad de bonos comprados'
		FROM WINCHESTER.Compra_Bono C
		INNER JOIN WINCHESTER.Afiliado ON afil_id = comp_afiliado
		INNER JOIN WINCHESTER.Usuario ON user_username = CONVERT(varchar(255), afil_usuario)
		WHERE YEAR(C.comp_fecha_compra) = @Anio
		AND MONTH(C.comp_fecha_compra) BETWEEN @MesInicio AND @MesFin
		AND (@Mes is null OR MONTH(C.comp_fecha_compra)= @Mes)
		GROUP BY C.comp_afiliado, user_apellido, user_nombre
		ORDER BY SUM(C.comp_cantidad) DESC, user_apellido ASC
	END
	


	 --top 5 especialidades de médicos con más bonos de consultas utilizados
	 IF (@TipoListado = 5)
	 BEGIN
		SELECT TOP 5 E.esp_codigo AS 'Código de especialidad', E.esp_descripcion AS 'Nombre de especialidad', count(C.cons_id) AS 'Cantidad de bonos de consultas utilizados' 
		FROM WINCHESTER.Especialidad E
		INNER JOIN WINCHESTER.Turno T ON T.turn_especialidad = E.esp_codigo
		INNER JOIN WINCHESTER.Profesional P ON P.prof_matricula = T.turn_profesional
		INNER JOIN WINCHESTER.Consulta C ON C.cons_turno = T.turn_id
		WHERE C.cons_bono is not null
		AND YEAR(C.cons_fechaDeAtencion) = @Anio
		AND MONTH(C.cons_fechaDeAtencion) BETWEEN @MesInicio AND @MesFin
		AND (@Mes is null OR MONTH(C.cons_fechaDeAtencion)= @Mes)
		GROUP BY E.esp_codigo, E.esp_descripcion
		ORDER BY count(C.cons_id) DESC
	END
END
GO

CREATE PROCEDURE [WINCHESTER].[MostrarEspecialidades]
AS
SELECT DISTINCT esp_codigo, esp_descripcion FROM WINCHESTER.Especialidad
GO
USE [master]
GO
/****** Object:  Database [clinica_cem]    Script Date: 27/06/2020 10:27:26 ******/
CREATE DATABASE [clinica_cem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'clinica_cem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\clinica_cem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'clinica_cem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\clinica_cem_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [clinica_cem] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [clinica_cem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [clinica_cem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [clinica_cem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [clinica_cem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [clinica_cem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [clinica_cem] SET ARITHABORT OFF 
GO
ALTER DATABASE [clinica_cem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [clinica_cem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [clinica_cem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [clinica_cem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [clinica_cem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [clinica_cem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [clinica_cem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [clinica_cem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [clinica_cem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [clinica_cem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [clinica_cem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [clinica_cem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [clinica_cem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [clinica_cem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [clinica_cem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [clinica_cem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [clinica_cem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [clinica_cem] SET RECOVERY FULL 
GO
ALTER DATABASE [clinica_cem] SET  MULTI_USER 
GO
ALTER DATABASE [clinica_cem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [clinica_cem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [clinica_cem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [clinica_cem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [clinica_cem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [clinica_cem] SET QUERY_STORE = OFF
GO
USE [clinica_cem]
GO
USE [clinica_cem]
GO
/****** Object:  Sequence [dbo].[EmpleadoSec]    Script Date: 27/06/2020 10:27:27 ******/
CREATE SEQUENCE [dbo].[EmpleadoSec] 
 AS [int]
 START WITH -2147483648
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [clinica_cem]
GO
/****** Object:  Sequence [dbo].[MedicoSec]    Script Date: 27/06/2020 10:27:27 ******/
CREATE SEQUENCE [dbo].[MedicoSec] 
 AS [int]
 START WITH -2147483648
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CitaV1]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CitaV1](
	[idProgramacionMedica] [int] IDENTITY(1,1) NOT NULL,
	[Mes] [varchar](40) NULL,
	[Semana] [varchar](40) NULL,
	[Dia] [varchar](40) NULL,
	[fecCita] [datetime] NULL,
	[idProgra] [int] NULL,
	[idDoctor] [int] NULL,
	[dsDoctor] [varchar](80) NULL,
	[idEspecialidad] [int] NULL,
	[dsEspecialidad] [varchar](80) NULL,
	[idConsultorio] [int] NULL,
	[dsConsultorio] [varchar](80) NULL,
	[dsObsProgr] [varchar](80) NULL,
	[idTipoConsultorio] [int] NULL,
	[dsTipoConsultorio] [varchar](80) NULL,
	[idAdmicionista] [int] NULL,
	[dsAdmicionista] [varchar](80) NULL,
	[idPaciente] [int] NULL,
	[dsPaciente] [varchar](80) NULL,
	[idTipoCita] [int] NULL,
	[dsTipoCita] [varchar](80) NULL,
	[dsHrIniCita] [varchar](40) NULL,
	[dsHrFinCita] [varchar](40) NULL,
	[idEstadoCita] [int] NULL,
	[dsEstadoCita] [varchar](40) NULL,
	[dsObsCita] [varchar](80) NULL,
	[dsECG] [varchar](80) NULL,
	[dsInfoMed] [varchar](80) NULL,
	[dcPrecio] [decimal](18, 6) NULL,
	[dcDesct] [decimal](18, 6) NULL,
	[dcCoa] [decimal](18, 6) NULL,
	[dcIGV] [decimal](18, 6) NULL,
	[dsNumOrden] [varchar](20) NULL,
	[dsEstadoPag] [varchar](80) NULL,
	[dsEstadoAte] [varchar](80) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D00_TBDETALLE]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D00_TBDETALLE](
	[idDet] [int] IDENTITY(1,1) NOT NULL,
	[coddetTab] [varchar](9) NULL,
	[descripcion] [varchar](50) NULL,
	[abrev] [varchar](15) NULL,
	[fuente] [varchar](150) NULL,
	[idTab] [int] NULL,
	[estado] [char](12) NULL,
	[fechabaja] [date] NULL,
 CONSTRAINT [PK__D00_TBDE__3E41457F0E519ECB] PRIMARY KEY CLUSTERED 
(
	[idDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D00_TBGENERAL]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D00_TBGENERAL](
	[idTab] [int] IDENTITY(1,1) NOT NULL,
	[codTab] [varchar](9) NULL,
	[descripcion] [varchar](100) NULL,
	[tipo] [varchar](50) NULL,
	[fechaCreate] [date] NULL,
	[usuCreate] [varchar](35) NULL,
	[estado] [char](12) NULL,
	[fechabaja] [date] NULL,
 CONSTRAINT [PK__D00_TBGE__020FEDB39C762A73] PRIMARY KEY CLUSTERED 
(
	[idTab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D001_USUARIO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D001_USUARIO](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[loginUser] [varchar](25) NULL,
	[claveUser] [varchar](25) NULL,
	[idEmpleado] [int] NULL,
	[estado] [char](12) NULL,
	[usuCrea] [varchar](25) NULL,
	[fechaCrea] [varchar](15) NULL,
	[usuMod] [varchar](25) NULL,
	[fechaMod] [varchar](15) NULL,
	[fechabaja] [date] NULL,
 CONSTRAINT [PK__D001_USU__645723A674AE501B] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D002_PERFIL]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D002_PERFIL](
	[idPerfil] [int] IDENTITY(1,1) NOT NULL,
	[codPerfil] [varchar](35) NULL,
	[nombrePerfil] [varchar](35) NULL,
	[idUsuario] [int] NOT NULL,
	[estado] [char](3) NULL,
 CONSTRAINT [PK__D002_PER__40F13B60CFEE3423] PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D003_PERMISO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D003_PERMISO](
	[idPermiso] [int] IDENTITY(1,1) NOT NULL,
	[codPermiso] [varchar](35) NULL,
	[nomPermiso] [varchar](35) NULL,
	[idModulo] [int] NOT NULL,
	[estado] [char](3) NULL,
 CONSTRAINT [PK__D003_PER__06A58486093F6845] PRIMARY KEY CLUSTERED 
(
	[idPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D004_MODULO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D004_MODULO](
	[idModulo] [int] IDENTITY(1,1) NOT NULL,
	[codModulo] [varchar](35) NULL,
	[nombreModulo] [varchar](35) NULL,
	[estado] [char](3) NULL,
 CONSTRAINT [PK__D004_MOD__3CE613FA77737833] PRIMARY KEY CLUSTERED 
(
	[idModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D005_MENU]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D005_MENU](
	[idMenu] [int] NOT NULL,
	[codMenu] [varchar](35) NULL,
	[nombreMenu] [varchar](35) NULL,
	[idModulo] [int] NOT NULL,
	[estado] [char](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D006_PERMISOPERFIL]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D006_PERMISOPERFIL](
	[idPermiso] [int] NOT NULL,
	[idPerfil] [int] NOT NULL,
	[estado] [char](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D007_HORARIO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D007_HORARIO](
	[idHorario] [int] IDENTITY(1,1) NOT NULL,
	[fecHorario] [date] NULL,
	[dia] [varchar](15) NULL,
	[turno] [char](5) NULL,
	[horaini] [date] NULL,
	[horafin] [date] NULL,
	[timeAtencion] [int] NULL,
	[idMedico] [int] NOT NULL,
	[idConsultorio] [int] NOT NULL,
 CONSTRAINT [PK__D007_HOR__DE60F33A55EE6DBE] PRIMARY KEY CLUSTERED 
(
	[idHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D008_CONSULTORIO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D008_CONSULTORIO](
	[idConsultorio] [int] IDENTITY(1,1) NOT NULL,
	[nroConsultorio] [int] NULL,
	[tpConsultorio] [int] NULL,
	[descripcion] [varchar](45) NULL,
	[area] [varchar](35) NULL,
	[piso] [varchar](20) NULL,
	[idEspecialidad] [int] NULL,
	[estado] [char](12) NULL,
	[fechabaja] [date] NULL,
 CONSTRAINT [PK__D008_CON__DE60F33ADCAECD64] PRIMARY KEY CLUSTERED 
(
	[idConsultorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D009_EMPRCONVENIODET]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D009_EMPRCONVENIODET](
	[idemprConvenio] [int] NOT NULL,
	[idPacConvenio] [int] NOT NULL,
	[idservicioCli] [int] NOT NULL,
	[modoPago] [int] NULL,
	[codPlan] [int] NULL,
	[tpAtencion] [int] NULL,
	[coberAtenTit] [varchar](10) NULL,
	[vigenciaConv] [int] NULL,
	[estado] [char](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D010_PACACOMPANA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D010_PACACOMPANA](
	[idPacAcom] [int] NOT NULL,
	[tpDocumento] [varchar](30) NULL,
	[dniAcom] [int] NULL,
	[apePatAcom] [varchar](50) NULL,
	[apeMatAcom] [varchar](50) NULL,
	[nombresAcom] [varchar](50) NULL,
	[parentesco] [varchar](30) NULL,
	[idPaciente] [int] NULL,
	[idPersona] [int] NULL,
	[estado] [char](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D011_UBIGEO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D011_UBIGEO](
	[idUbigeo] [int] IDENTITY(1,1) NOT NULL,
	[cod_depa] [varchar](5) NULL,
	[cod_prov] [varchar](5) NULL,
	[cod_dist] [varchar](5) NULL,
	[descripcion] [varchar](45) NULL,
	[estado] [char](10) NULL,
 CONSTRAINT [PK__D011_UBI__79399D5C399AF28A] PRIMARY KEY CLUSTERED 
(
	[idUbigeo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D011_UBIGEONACE]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D011_UBIGEONACE](
	[idUbigeoNace] [int] NOT NULL,
	[descripcion] [varchar](45) NULL,
	[idUbigeo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUbigeoNace] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D011_UBIGEORESIDE]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D011_UBIGEORESIDE](
	[idUbigeoResi] [int] NOT NULL,
	[descripcion] [varchar](45) NULL,
	[idUbigeo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUbigeoResi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D012_CRONOMEDICO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D012_CRONOMEDICO](
	[idProgramMedica] [int] IDENTITY(1,1) NOT NULL,
	[mes] [varchar](15) NULL,
	[semana] [varchar](15) NULL,
	[dia] [varchar](15) NULL,
	[fechaIni] [datetime] NULL,
	[fechaFin] [datetime] NULL,
	[idMedico] [int] NULL,
	[idEspecialidad] [int] NULL,
	[idConsultorio] [int] NULL,
	[hrInicio] [varchar](6) NULL,
	[hrFin] [varchar](6) NULL,
	[estado] [char](12) NULL,
	[fechabaja] [date] NULL,
 CONSTRAINT [PK__D012_CRO__6BCD0A871829A280] PRIMARY KEY CLUSTERED 
(
	[idProgramMedica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D013_CRONOCONSULTORIO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D013_CRONOCONSULTORIO](
	[idCronoConsul] [int] IDENTITY(1,1) NOT NULL,
	[disponibilidad] [varchar](30) NULL,
	[fecHora] [datetime] NULL,
	[idConsultorio] [int] NULL,
	[estado] [char](12) NULL,
 CONSTRAINT [PK__D013_CON__230EBF0FA76F42B6] PRIMARY KEY CLUSTERED 
(
	[idCronoConsul] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D013_PAIS]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D013_PAIS](
	[idPais] [int] NOT NULL,
	[descripcion] [varchar](45) NULL,
	[codigo] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D014_CONSULESPDET]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D014_CONSULESPDET](
	[idConsulEspDet] [int] NOT NULL,
	[idConsultorio] [int] NULL,
	[idEspecialidad] [int] NULL,
	[descripcion] [varchar](200) NULL,
	[fecha] [datetime] NULL,
	[estado] [char](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D014_DPTO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D014_DPTO](
	[idDpto] [int] NOT NULL,
	[descripcion] [varchar](45) NULL,
	[codigo] [varchar](40) NULL,
	[idPais] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDpto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D014_TELEQUERY]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D014_TELEQUERY](
	[idTelequery] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[fechaCall] [date] NULL,
	[timeCall] [int] NULL,
	[rutaFile] [varchar](180) NULL,
	[idPaciente] [int] NULL,
	[idMedico] [int] NULL,
	[idEspecialidad] [int] NULL,
	[idConsultorio] [int] NULL,
	[idCita] [int] NULL,
	[estado] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTelequery] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D015_PAGO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D015_PAGO](
	[idPago] [int] IDENTITY(1,1) NOT NULL,
	[codTransaccion] [varchar](20) NULL,
	[codTransacRetorno] [varchar](20) NULL,
	[idFormaPago] [int] NULL,
	[monto] [decimal](16, 2) NULL,
	[fecRegistro] [datetime] NULL,
	[fecOkPasarela] [datetime] NULL,
	[idCita] [int] NULL,
	[estado] [char](12) NULL,
	[fechabaja] [date] NULL,
 CONSTRAINT [PK__D015_PAG__BD2295ADB8822C59] PRIMARY KEY CLUSTERED 
(
	[idPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D015_PAGODETA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D015_PAGODETA](
	[idPago] [int] NULL,
	[descripcion] [varchar](150) NULL,
	[cantidad] [int] NULL,
	[idReceta] [int] NULL,
	[idservicioCli] [int] NULL,
	[idLaboratorio] [int] NULL,
	[idExamSpecial] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D015_PROV]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D015_PROV](
	[idProvincia] [int] NOT NULL,
	[descripcion] [varchar](45) NULL,
	[codigo] [varchar](40) NULL,
	[idDpto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D015_TPEMPLEADO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D015_TPEMPLEADO](
	[idtpEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_D015_TIPOEMPLEADO] PRIMARY KEY CLUSTERED 
(
	[idtpEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D016_DETLABORATORIO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D016_DETLABORATORIO](
	[idLaboratorio] [int] NOT NULL,
	[idCita] [int] NOT NULL,
	[descripcion] [varchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D016_DETRECETA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D016_DETRECETA](
	[idReceta] [int] NOT NULL,
	[idMedicaNrcg] [int] NULL,
	[descripcion] [varchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D016_DISTRITO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D016_DISTRITO](
	[idDistrito] [int] NOT NULL,
	[descripcion] [varchar](45) NULL,
	[codigo] [varchar](40) NULL,
	[idDpto] [int] NULL,
	[idProv] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDistrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D018_DETEXAMEN]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D018_DETEXAMEN](
	[idExamSpecial] [int] NOT NULL,
	[idCita] [int] NOT NULL,
	[descripcion] [varchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D019_FORMAPAGO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D019_FORMAPAGO](
	[idFormaPago] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFormaPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D020_TARJETA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D020_TARJETA](
	[idTarjeta] [int] IDENTITY(1,1) NOT NULL,
	[nroTarjeta] [varchar](35) NULL,
	[nombresTarjeta] [varchar](40) NULL,
	[apellidoTarjeta] [varchar](40) NULL,
	[fechaVenceMes] [datetime] NULL,
	[fechaVenceAnho] [datetime] NULL,
	[codSeguridad] [varchar](6) NULL,
	[idTarjCredito] [int] NULL,
	[idPago] [int] NULL,
 CONSTRAINT [PK__D020_TAR__C456D5388A2BB14B] PRIMARY KEY CLUSTERED 
(
	[idTarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D021_TARJETACREDIT]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D021_TARJETACREDIT](
	[idTarjCredito] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTarjCredito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D022_TIPOVIA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D022_TIPOVIA](
	[idTipoVia] [int] NOT NULL,
	[descripcionVia] [nvarchar](50) NULL,
 CONSTRAINT [PK_D040_TIPOVIA] PRIMARY KEY CLUSTERED 
(
	[idTipoVia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D023_TBLICENCIA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D023_TBLICENCIA](
	[idLicencia] [int] IDENTITY(1,1) NOT NULL,
	[codHorario] [varchar](9) NULL,
	[turno] [varchar](35) NULL,
	[dia] [varchar](8) NULL,
	[medRemplazo] [varchar](45) NULL,
	[horaIni] [varchar](9) NULL,
	[horaFin] [varchar](9) NULL,
	[fecIni] [date] NULL,
	[fecFin] [date] NULL,
	[idProgramMedica] [int] NULL,
	[idCita] [int] NULL,
	[idEmpleado] [int] NULL,
	[estado] [char](5) NULL,
 CONSTRAINT [PK__D023_TBL__5FB9A24B4E774EC6] PRIMARY KEY CLUSTERED 
(
	[idLicencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D024_CAJA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D024_CAJA](
	[idCaja] [int] IDENTITY(1,1) NOT NULL,
	[nroCaja] [int] NULL,
	[montoAper] [decimal](18, 0) NULL,
	[divisa] [varchar](35) NULL,
	[turno] [varchar](35) NULL,
	[pos] [bit] NULL,
	[modopago] [varchar](35) NULL,
	[proveedor] [varchar](45) NULL,
	[tipo] [varchar](35) NULL,
	[montoCierre] [decimal](18, 0) NULL,
	[motivo] [varchar](100) NULL,
	[estado] [char](10) NULL,
 CONSTRAINT [PK__D024_CAJ__8BC79B3439D5DC90] PRIMARY KEY CLUSTERED 
(
	[idCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D025_ASIGNACAJA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D025_ASIGNACAJA](
	[idCaja] [int] NULL,
	[idEmpleado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D026_TBPARAMETRO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D026_TBPARAMETRO](
	[idParametro] [int] IDENTITY(1,1) NOT NULL,
	[codParam] [varchar](9) NULL,
	[descripcion] [varchar](90) NULL,
	[estado] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idParametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT004_ETNICO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT004_ETNICO](
	[idEtnico] [int] IDENTITY(1,1) NOT NULL,
	[codHis] [varchar](5) NULL,
	[tipos] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEtnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T000_HCESTANDAR]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T000_HCESTANDAR](
	[idhcEstandar] [int] NOT NULL,
	[descripcion] [varchar](45) NULL,
	[estado] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[idhcEstandar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T000_HCGINECOLOGIA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T000_HCGINECOLOGIA](
	[idhcGineco] [int] NOT NULL,
	[descripcion] [varchar](45) NULL,
	[idPatoGestacion] [int] NOT NULL,
	[idPeritorio] [int] NOT NULL,
	[idPerfilSalud] [int] NOT NULL,
	[codPlanWork] [varchar](5) NULL,
	[idtpRecetaElec] [int] NOT NULL,
	[idEstAtencion] [int] NOT NULL,
	[idtpPacFrecuente] [int] NOT NULL,
	[idFormatAnxHis] [int] NOT NULL,
	[idClasifiAtencion] [int] NOT NULL,
	[idDatospacHCE] [int] NOT NULL,
	[idAtcSustancia] [int] NOT NULL,
	[idCIE10Especial] [int] NOT NULL,
	[idHojaSiteds] [int] NOT NULL,
	[idProtocolo] [int] NOT NULL,
	[idtpPartoDeta] [int] NOT NULL,
	[idPatologiaNace] [int] NOT NULL,
	[idtpEmbarazo] [int] NOT NULL,
	[idtpProcPsico] [int] NOT NULL,
	[estado] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[idhcGineco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T000_HCNUTRICION]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T000_HCNUTRICION](
	[idhcNutricion] [int] NOT NULL,
	[descripcion] [varchar](45) NULL,
	[idEstaActual] [int] NOT NULL,
	[idAnamnesiAli] [int] NOT NULL,
	[idFreconsumoAli] [int] NOT NULL,
	[idEvaluaAli] [int] NOT NULL,
	[idEdadEvaluaAli] [int] NOT NULL,
	[idEstaNutricion] [int] NOT NULL,
	[idgpoNutricion] [int] NOT NULL,
	[idvalorNutricion] [int] NOT NULL,
	[idEsquemaAli] [int] NOT NULL,
	[idInventAlimento] [int] NOT NULL,
	[idRecomendaNutri] [int] NOT NULL,
	[idFormatoNutri] [int] NOT NULL,
	[idtpLactancia] [int] NOT NULL,
	[idAntropometrico] [int] NOT NULL,
	[estado] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[idhcNutricion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T000_HISTORIACLIDETA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T000_HISTORIACLIDETA](
	[idHistoClinica] [int] NOT NULL,
	[descripcion] [varchar](45) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T000_HISTORIACLINICA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T000_HISTORIACLINICA](
	[idHistoClinica] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[fechaRegistro] [date] NULL,
	[planTrabajo] [varchar](200) NULL,
	[idPaciente] [int] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[idCita] [int] NOT NULL,
	[idDiagnostico] [int] NOT NULL,
	[idReceta] [int] NOT NULL,
	[idExamen] [int] NOT NULL,
	[idhcEstandar] [int] NOT NULL,
	[idhcGineco] [int] NOT NULL,
	[idhcNutricion] [int] NOT NULL,
	[estado] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[idHistoClinica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T000_PERSONA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T000_PERSONA](
	[idPersona] [int] IDENTITY(1,1) NOT NULL,
	[apePaterno] [varchar](25) NULL,
	[apeMaterno] [varchar](25) NULL,
	[nombres] [varchar](25) NULL,
	[idtpDocumento] [int] NULL,
	[dniPersona] [int] NULL,
	[idSexo] [int] NULL,
	[idEtnico] [int] NULL,
	[fecNace] [varchar](15) NULL,
	[idUbigeoResi] [int] NULL,
	[idtipoVia] [int] NULL,
	[nombreVia] [varchar](35) NULL,
	[nroVia] [int] NULL,
	[nroDpto] [int] NULL,
	[interior] [int] NULL,
	[manzana] [int] NULL,
	[nroLote] [int] NULL,
	[nroKm] [int] NULL,
	[nroBlock] [int] NULL,
	[nroEtapa] [int] NULL,
	[edad] [int] NULL,
	[idUbigeoNace] [int] NULL,
	[fotografia] [varchar](150) NULL,
	[idGrdInstruc] [int] NULL,
	[idReligion] [int] NULL,
	[centroEduca] [varchar](50) NULL,
	[idEstCivil] [int] NULL,
	[idOcupacion] [int] NULL,
	[idgpoSangre] [int] NULL,
	[idFactorrh] [int] NULL,
	[nroRuc] [int] NULL,
	[razonSocial] [varchar](80) NULL,
	[estadoRuc] [varchar](15) NULL,
	[condicionRuc] [varchar](15) NULL,
	[domiFiscal] [varchar](40) NULL,
	[idParentesco] [int] NULL,
	[telefono] [varchar](15) NULL,
	[celular] [varchar](15) NULL,
	[correo] [varchar](150) NULL,
	[tpPersona] [int] NULL,
	[iddatoSiteds] [int] NULL,
	[idemprConvenio] [int] NULL,
	[idciaSeguro] [int] NULL,
	[idtipoIafa] [int] NULL,
	[estado] [char](15) NULL,
	[fechabaja] [date] NULL,
 CONSTRAINT [PK__T001_PAC__F48A08F2EC43D268] PRIMARY KEY CLUSTERED 
(
	[idPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T001_PACASEGURADO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T001_PACASEGURADO](
	[idAsegurado] [int] NOT NULL,
	[cobertura] [varchar](25) NULL,
	[ordenAtenMed] [varchar](25) NULL,
	[nomAseguradora] [varchar](50) NULL,
	[codAsegurado] [varchar](8) NULL,
	[poliza] [varchar](25) NULL,
	[idParentesco] [int] NULL,
	[iniVigencia] [datetime] NULL,
	[finVigencia] [datetime] NULL,
	[tpPlanSalud] [varchar](40) NULL,
	[nroplanSalud] [int] NULL,
	[estadoSeguro] [char](10) NULL,
	[tpAfiliacion] [varchar](30) NULL,
	[fecAfiliacion] [datetime] NULL,
	[codTitular] [int] NULL,
	[moneda] [varchar](25) NULL,
	[nomContratante] [varchar](30) NULL,
	[idtpDocumento] [int] NULL,
	[dniContratante] [int] NULL,
	[planSalud] [varchar](40) NULL,
	[codCobertura] [varchar](6) NULL,
	[beneficio] [varchar](50) NULL,
	[restriccion] [varchar](50) NULL,
	[copagoFijo] [int] NULL,
	[copagoVariable] [int] NULL,
	[finCarencia] [int] NULL,
	[convenio] [varchar](25) NULL,
	[descuento] [decimal](18, 0) NULL,
	[idPaciente] [int] NULL,
	[estado] [char](5) NULL,
 CONSTRAINT [PK__T002_ASE__0DEE65BD9A48E0D9] PRIMARY KEY CLUSTERED 
(
	[idAsegurado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T001_PACCONVENIO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T001_PACCONVENIO](
	[idPacConvenio] [int] NOT NULL,
	[ordAtenMedica] [varchar](35) NULL,
	[idParentesco] [int] NULL,
	[cobertura] [varchar](35) NULL,
	[iniVigencia] [datetime] NULL,
	[finVigencia] [datetime] NULL,
	[estadoConvenio] [char](10) NULL,
	[tpAfiliacion] [varchar](30) NULL,
	[fecAfiliacion] [datetime] NULL,
	[codTitular] [int] NULL,
	[moneda] [varchar](25) NULL,
	[nomContratante] [varchar](35) NULL,
	[idtpDocumento] [int] NULL,
	[dniContratante] [int] NULL,
	[beneficio] [varchar](30) NULL,
	[restriccion] [varchar](30) NULL,
	[copagoFijo] [int] NULL,
	[copagoVariable] [int] NULL,
	[idPaciente] [int] NULL,
	[estado] [char](3) NULL,
 CONSTRAINT [PK__T003_PAC__ED800601DCA5DA00] PRIMARY KEY CLUSTERED 
(
	[idPacConvenio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T001_PACDETA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T001_PACDETA](
	[idPacdeta] [int] IDENTITY(1,1) NOT NULL,
	[cobertura] [varchar](50) NULL,
	[ordenAtenMed] [varchar](25) NULL,
	[nomAseguradora] [varchar](50) NULL,
	[codAsegurado] [varchar](15) NULL,
	[poliza] [varchar](35) NULL,
	[parentesco] [varchar](35) NULL,
	[iniVigencia] [datetime] NULL,
	[finVigencia] [datetime] NULL,
	[tpPlanSalud] [varchar](40) NULL,
	[nroplanSalud] [int] NULL,
	[estadoSeguro] [char](10) NULL,
	[tpAfiliacion] [varchar](30) NULL,
	[fecAfiliacion] [datetime] NULL,
	[codTitular] [int] NULL,
	[moneda] [varchar](30) NULL,
	[nomContratante] [varchar](30) NULL,
	[tpDocumento] [varchar](35) NULL,
	[dniContratante] [int] NULL,
	[planSalud] [varchar](40) NULL,
	[codCobertura] [int] NULL,
	[beneficio] [varchar](50) NULL,
	[restriccion] [varchar](50) NULL,
	[copagoFijo] [int] NULL,
	[copagoVariable] [int] NULL,
	[finCarencia] [int] NULL,
	[convenio] [varchar](40) NULL,
	[descuento] [decimal](18, 0) NULL,
	[asegurado1] [varchar](30) NULL,
	[asegurado2] [varchar](30) NULL,
	[asegurado3] [varchar](30) NULL,
	[asegurado4] [varchar](30) NULL,
	[asegurado5] [varchar](30) NULL,
	[codPaConvenio] [varchar](6) NULL,
	[dsPacConv] [varchar](40) NULL,
	[statPaconv] [char](10) NULL,
	[pacConvenio1] [varchar](30) NULL,
	[pacConvenio2] [varchar](30) NULL,
	[pacConvenio3] [varchar](30) NULL,
	[pacConvenio4] [varchar](30) NULL,
	[pacConvenio5] [varchar](30) NULL,
	[codPacSoat] [varchar](6) NULL,
	[dsPacSoat] [varchar](40) NULL,
	[statPacSoat] [char](10) NULL,
	[pacSoat1] [varchar](30) NULL,
	[pacSoat2] [varchar](30) NULL,
	[pacSoat3] [varchar](30) NULL,
	[pacSoat4] [varchar](30) NULL,
	[pacSoat5] [varchar](30) NULL,
	[codpacExterno] [varchar](6) NULL,
	[dspacExter] [varchar](40) NULL,
	[stapacexter] [char](10) NULL,
	[idPacciente] [int] NULL,
	[estado] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPacdeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T001_PACIENTE]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T001_PACIENTE](
	[idPaciente] [int] IDENTITY(1,1) NOT NULL,
	[codPaciente] [varchar](6) NULL,
	[descripcion] [varchar](50) NULL,
	[nrohc] [varchar](15) NULL,
	[nombreAcom] [varchar](30) NULL,
	[edadAcom] [int] NULL,
	[dniAcom] [int] NULL,
	[idgpoSangre] [int] NULL,
	[idFactorrh] [int] NULL,
	[cobertura] [varchar](25) NULL,
	[ordenAtenMed] [varchar](15) NULL,
	[nomAsegurado] [varchar](30) NULL,
	[codAsegurado] [varchar](15) NULL,
	[poliza] [varchar](20) NULL,
	[parentesco] [int] NULL,
	[iniVigencia] [datetime] NULL,
	[finVigencia] [datetime] NULL,
	[tpPlanSalud] [int] NULL,
	[nroPlanSalud] [int] NULL,
	[estadoSeguro] [char](10) NULL,
	[tpAfiliacion] [int] NULL,
	[fecAfiliacion] [datetime] NULL,
	[codTitular] [int] NULL,
	[moneda] [varchar](25) NULL,
	[nomContratante] [varchar](35) NULL,
	[tpDocumento] [int] NULL,
	[dniContratante] [int] NULL,
	[planSalud] [varchar](40) NULL,
	[codCobertura] [int] NULL,
	[beneficio] [varchar](50) NULL,
	[restriccion] [varchar](50) NULL,
	[copagoFijo] [int] NULL,
	[copagoVariable] [int] NULL,
	[finCarencia] [int] NULL,
	[convenio] [varchar](30) NULL,
	[descuento] [decimal](16, 0) NULL,
	[codPaConvenio] [varchar](9) NULL,
	[dsPacConv] [varchar](40) NULL,
	[statPaconv] [char](10) NULL,
	[codPacSoat] [varchar](9) NULL,
	[dsPacSoat] [varchar](40) NULL,
	[statPacSoat] [char](10) NULL,
	[codpacExterno] [varchar](9) NULL,
	[dspacExter] [varchar](40) NULL,
	[stapacexter] [char](10) NULL,
	[tpPaciente] [varchar](9) NULL,
	[idPersona] [int] NULL,
	[hojafiliacion] [bit] NULL,
	[concienteDato] [bit] NULL,
	[estado] [char](10) NULL,
	[fechabaja] [date] NULL,
 CONSTRAINT [PK__T001_PAC__F48A08F29659AC03] PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T004_DATOSRENIEC]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T004_DATOSRENIEC](
	[iddatoReniec] [int] NOT NULL,
	[apePaterno] [varchar](25) NULL,
	[apeMaterno] [varchar](25) NULL,
	[nombre] [varchar](25) NULL,
	[sexo] [int] NULL,
	[pertEtnica] [int] NULL,
	[edad] [int] NULL,
	[paisReside] [int] NULL,
	[dptoReside] [int] NULL,
	[provReside] [int] NULL,
	[distReside] [int] NULL,
	[tipoVia] [int] NULL,
	[nombreVia] [varchar](50) NULL,
	[numeroVia] [int] NULL,
	[dptoNro] [int] NULL,
	[interior] [int] NULL,
	[manzana] [varchar](10) NULL,
	[nroLote] [int] NULL,
	[nroKm] [int] NULL,
	[nroBlock] [int] NULL,
	[nroEtapa] [int] NULL,
	[tipDocumento] [int] NULL,
	[nrodni] [int] NULL,
	[fecNacimiento] [int] NULL,
	[paisNace] [int] NULL,
	[dptoNace] [int] NULL,
	[provNace] [int] NULL,
	[ditNasce] [int] NULL,
	[fotografia] [varchar](100) NULL,
	[grdInstruccion] [int] NULL,
	[estCivil] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddatoReniec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T005_DATOSSUNAT]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T005_DATOSSUNAT](
	[iddatoSunat] [int] NOT NULL,
	[ruc] [int] NULL,
	[estadoRuc] [char](5) NULL,
	[condicionRuc] [char](5) NULL,
	[domiFiscal] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddatoSunat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T006_DATOSITEDS]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T006_DATOSITEDS](
	[iddatoSiteds] [int] NOT NULL,
	[cobertura] [int] NULL,
	[ordAtenMed] [char](5) NULL,
	[nomEmpresa] [char](5) NULL,
	[nomAseguradora] [varchar](25) NULL,
	[codAsegurado] [int] NULL,
	[poliza] [int] NULL,
	[parentesco] [varchar](25) NULL,
	[iniVigencia] [date] NULL,
	[finVigencia] [date] NULL,
	[tipoplanSalud] [int] NULL,
	[nroplanSalud] [int] NULL,
	[estadoSeguro] [char](3) NULL,
	[apepatTitular] [varchar](50) NULL,
	[apematTitular] [varchar](50) NULL,
	[tipdocTitular] [int] NULL,
	[nrodocTitular] [int] NULL,
	[tipAfiliacion] [int] NULL,
	[nroAfiliacion] [int] NULL,
	[fecAfiliacion] [date] NULL,
	[codTitular] [int] NULL,
	[moneda] [varchar](25) NULL,
	[nombreContratante] [varchar](25) NULL,
	[tipoDocContratante] [int] NULL,
	[dniContratante] [int] NULL,
	[nroDocuContranate] [int] NULL,
	[planSalud] [varchar](25) NULL,
	[codCobertura] [int] NULL,
	[beneficio] [varchar](25) NULL,
	[restriccion] [varchar](25) NULL,
	[copagoFijo] [int] NULL,
	[copagoVariable] [int] NULL,
	[finCarencia] [int] NULL,
	[producto] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddatoSiteds] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T007_MEDICAMENTONRCG]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T007_MEDICAMENTONRCG](
	[idMedicaNrcg] [int] IDENTITY(1,1) NOT NULL,
	[codMedicaNrcg] [varchar](5) NULL,
	[nomIafa] [varchar](35) NULL,
	[seccion] [varchar](40) NULL,
	[subSeccion] [varchar](40) NULL,
	[codSigesa] [varchar](6) NULL,
	[descSigesa] [varchar](45) NULL,
	[codMedicamento] [varchar](5) NULL,
	[nomComercial] [varchar](40) NULL,
	[dci] [varchar](35) NULL,
	[dsDci] [varchar](35) NULL,
	[formFarmaceutico] [varchar](35) NULL,
	[concentracion] [varchar](20) NULL,
	[cie10] [varchar](5) NULL,
	[cie10Excluido] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMedicaNrcg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T009_TPPRESTACION]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T009_TPPRESTACION](
	[idtpPrestacion] [int] NOT NULL,
	[codExpedient] [varchar](6) NULL,
	[tpExpedient] [varchar](30) NULL,
	[codIafa] [varchar](6) NULL,
	[descIafa] [varchar](25) NULL,
	[idtpDocuPago] [int] NULL,
	[codDocu] [varchar](6) NULL,
	[descDocu] [varchar](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[idtpPrestacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T011_EMPRCONVENIO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T011_EMPRCONVENIO](
	[idemprConvenio] [int] NOT NULL,
	[nroOrdEmpr] [int] NULL,
	[codEmpresa] [int] NULL,
	[nomEmpresa] [varchar](50) NULL,
	[codServicio] [int] NULL,
	[modoPago] [int] NULL,
	[descServicio] [varchar](50) NULL,
	[codPlan] [int] NULL,
	[tipAtencion] [int] NULL,
	[coberaAtenTit] [varchar](10) NULL,
	[vigenciaConv] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idemprConvenio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T017_TIPOIAFA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T017_TIPOIAFA](
	[idtipoIafa] [int] IDENTITY(1,1) NOT NULL,
	[codTipo] [varchar](6) NULL,
	[descripcion] [varchar](65) NULL,
 CONSTRAINT [PK__T017_TIP__1AACB3FABD5A7E98] PRIMARY KEY CLUSTERED 
(
	[idtipoIafa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T018_CIASEGURO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T018_CIASEGURO](
	[idIafa] [int] IDENTITY(1,1) NOT NULL,
	[codIafa] [varchar](6) NULL,
	[descripcion] [varchar](35) NULL,
	[activo] [char](10) NULL,
 CONSTRAINT [PK__T018_CIA__74C427B571031EF8] PRIMARY KEY CLUSTERED 
(
	[idIafa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T020_TIPOPACIENTE]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T020_TIPOPACIENTE](
	[idtpPaciente] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](7) NULL,
	[descripcion] [varchar](50) NULL,
	[abreviatura] [varchar](5) NULL,
	[obli] [char](5) NULL,
	[origen] [varchar](15) NULL,
 CONSTRAINT [PK__T020_TIP__C3B1765F4C08A546] PRIMARY KEY CLUSTERED 
(
	[idtpPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T022_TARIFA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T022_TARIFA](
	[idTarifa] [int] NOT NULL,
	[codTarifa] [varchar](5) NULL,
	[nomTarifa] [varchar](35) NULL,
	[tarifaBase] [varchar](5) NULL,
	[estado] [char](5) NULL,
 CONSTRAINT [PK__T022_TAR__550711E117F43D25] PRIMARY KEY CLUSTERED 
(
	[idTarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T023_TARIFAXIAFA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T023_TARIFAXIAFA](
	[idTariIafa] [int] IDENTITY(1,1) NOT NULL,
	[codIafa] [varchar](5) NULL,
	[dsIafa] [varchar](35) NULL,
	[codTarifa] [varchar](5) NULL,
	[idTarifa] [int] NULL,
	[estado] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTariIafa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T030_PROCQUIRUGICO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T030_PROCQUIRUGICO](
	[idProcQui] [int] IDENTITY(1,1) NOT NULL,
	[codProcQui] [varchar](8) NULL,
	[descripcion] [varchar](80) NULL,
	[codTarifa] [varchar](8) NULL,
	[tarifa] [varchar](50) NULL,
	[idTarifa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProcQui] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T031_PREFACTURACION]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T031_PREFACTURACION](
	[idPrefacturacion] [int] NOT NULL,
	[codEmpresa] [varchar](6) NULL,
	[descripcion] [varchar](30) NULL,
	[modoPago] [int] NULL,
	[vigencia] [int] NULL,
	[periodo] [varchar](25) NULL,
	[diaplazo] [int] NULL,
	[observacion] [varchar](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPrefacturacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T046_PROCEXCLUIDO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T046_PROCEXCLUIDO](
	[idProcExclu] [int] IDENTITY(1,1) NOT NULL,
	[codIafa] [varchar](8) NULL,
	[dsIafa] [varchar](20) NULL,
	[cpt] [int] NULL,
	[dsCpt] [varchar](160) NULL,
	[tarifa] [varchar](50) NULL,
	[idIafa] [int] NULL,
	[idTarifa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProcExclu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T048_PROCNOGARANTIA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T048_PROCNOGARANTIA](
	[idProcNoGaran] [int] IDENTITY(1,1) NOT NULL,
	[codIafa] [varchar](8) NULL,
	[dsIafa] [varchar](30) NULL,
	[cpt] [int] NULL,
	[dsCpt] [varchar](35) NULL,
	[requisito] [varchar](20) NULL,
	[periodo] [varchar](20) NULL,
	[idIafa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProcNoGaran] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T054_TARIFAXSEGU]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T054_TARIFAXSEGU](
	[idTariSegu] [int] IDENTITY(1,1) NOT NULL,
	[codSegu] [varchar](5) NULL,
	[dsSeguro] [varchar](35) NULL,
	[codTarifa] [varchar](5) NULL,
	[idTarifa] [int] NULL,
	[estado] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTariSegu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T055_PROCFINANCIADOR]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T055_PROCFINANCIADOR](
	[idProcFinan] [int] IDENTITY(1,1) NOT NULL,
	[codEmp] [varchar](6) NULL,
	[descripcion] [varchar](30) NULL,
	[incluye] [varchar](5) NULL,
	[idIafa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProcFinan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T056_PATOGESTACION]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T056_PATOGESTACION](
	[idPatoGestacion] [int] NOT NULL,
	[codPatoGestacion] [int] NULL,
	[descripcion] [varchar](35) NULL,
	[abreviatura] [char](5) NULL,
	[obligatorio] [char](5) NULL,
	[fuente] [varchar](35) NULL,
	[observacion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPatoGestacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T057_RELIGION]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T057_RELIGION](
	[idReligion] [int] IDENTITY(1,1) NOT NULL,
	[codReligion] [varchar](6) NULL,
	[descripcion] [varchar](35) NULL,
	[abreviatura] [char](5) NULL,
	[fuente] [varchar](30) NULL,
	[observacion] [varchar](35) NULL,
 CONSTRAINT [PK__T057_REL__21E8CB05BF07FCF5] PRIMARY KEY CLUSTERED 
(
	[idReligion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T068_CITA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T068_CITA](
	[idCita] [int] IDENTITY(1,1) NOT NULL,
	[codCita] [int] NULL,
	[nroCita] [int] NULL,
	[descripcion] [varchar](65) NULL,
	[fechaCita] [datetime] NULL,
	[ultCie10] [varchar](10) NULL,
	[tpAtencion] [int] NULL,
	[nroHC] [varchar](10) NULL,
	[ejecutado] [char](10) NULL,
	[prioridad] [char](10) NULL,
	[precio] [decimal](16, 2) NULL,
	[descuento] [decimal](16, 2) NULL,
	[coa] [decimal](16, 2) NULL,
	[igv] [decimal](16, 2) NULL,
	[estadoReprogram] [char](10) NULL,
	[tipoCita] [int] NULL,
	[motivoRepro] [varchar](80) NULL,
	[motivoAnula] [varchar](80) NULL,
	[idEstadoCita] [int] NULL,
	[idPaciente] [int] NULL,
	[idEmpleado] [int] NULL,
	[idConsultorio] [int] NULL,
	[idProgramMedica] [int] NULL,
	[idservicioCli] [int] NULL,
	[estado] [char](12) NULL,
	[fechabaja] [date] NULL,
 CONSTRAINT [PK__T068_CIT__814F3126E4AA01D5] PRIMARY KEY CLUSTERED 
(
	[idCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T071_SEXO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T071_SEXO](
	[idSexo] [int] IDENTITY(1,1) NOT NULL,
	[codSexo] [int] NULL,
	[descripcion] [varchar](20) NULL,
	[abreviatura] [char](5) NULL,
	[origen] [varchar](15) NULL,
 CONSTRAINT [PK__T071_SEX__C5AFCD4D5E6E470B] PRIMARY KEY CLUSTERED 
(
	[idSexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T072_HISTOCLINICA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T072_HISTOCLINICA](
	[idHistoriClinica] [int] IDENTITY(1,1) NOT NULL,
	[codhc] [varchar](6) NULL,
	[descripcion] [varchar](45) NULL,
	[anho] [varchar](10) NULL,
	[mes] [varchar](15) NULL,
	[semana] [varchar](15) NULL,
	[dia] [varchar](15) NULL,
	[numhc] [varchar](9) NULL,
	[prioridad] [varchar](15) NULL,
	[codInforme] [varchar](6) NULL,
	[empresaIafa] [varchar](45) NULL,
	[cie10] [varchar](9) NULL,
	[tpDiagnostico] [varchar](35) NULL,
	[diagnostico] [varchar](45) NULL,
	[interpretacion] [varchar](90) NULL,
	[conclusion] [varchar](90) NULL,
	[fecElaboracion] [date] NULL,
	[hrElaboracion] [varchar](8) NULL,
	[firmaDigital] [varchar](70) NULL,
	[codEcografia] [varchar](8) NULL,
	[dsEcografia] [varchar](70) NULL,
	[uniMedina] [varchar](30) NULL,
	[cantidad] [int] NULL,
	[stockIni] [int] NULL,
	[stockFin] [int] NULL,
	[anhoEcogra] [varchar](10) NULL,
	[mesEcogra] [varchar](20) NULL,
	[diaEcogra] [varchar](15) NULL,
	[codRequerimiento] [varchar](5) NULL,
	[fecSolicitud] [date] NULL,
	[fecVence] [date] NULL,
	[usuSolicitante] [varchar](55) NULL,
	[almacenSoli] [varchar](55) NULL,
	[codInsumo] [varchar](8) NULL,
	[dsInsumo] [varchar](55) NULL,
	[uniMedida] [varchar](5) NULL,
	[cantSolicitante] [varchar](5) NULL,
	[cantRecibida] [varchar](5) NULL,
	[lote] [varchar](5) NULL,
	[nroTransfer] [varchar](15) NULL,
	[recepcion] [varchar](55) NULL,
	[stock] [int] NULL,
	[observacion] [varchar](90) NULL,
	[fecPago] [datetime] NULL,
	[horaPago] [varchar](5) NULL,
	[nroOrden] [varchar](5) NULL,
	[tallaPac] [varchar](5) NULL,
	[pesoPac] [varchar](5) NULL,
	[menopaucia] [varchar](5) NULL,
	[fecMenopaucia] [date] NULL,
	[edadIniMeno] [varchar](5) NULL,
	[fecFractura] [date] NULL,
	[anatomicoFrac] [varchar](5) NULL,
	[mecaFractura] [varchar](5) NULL,
	[fracCadera] [varchar](5) NULL,
	[fumadorActivo] [varchar](5) NULL,
	[glucorticoides] [varchar](35) NULL,
	[artritiReuma] [varchar](35) NULL,
	[osteoporosiSec] [varchar](35) NULL,
	[alcoholDosis] [varchar](35) NULL,
	[fecTomaAlcohol] [date] NULL,
	[hrTomaAlcohol] [varchar](5) NULL,
	[diagDensi] [varchar](45) NULL,
	[areaDensi] [varchar](45) NULL,
	[staDensi] [varchar](5) NULL,
	[prioridadDensi] [varchar](45) NULL,
	[fecIniDensi] [date] NULL,
	[fecFinDensi] [date] NULL,
	[planInfoDensi] [varchar](45) NULL,
	[infoDensi] [varchar](45) NULL,
	[idCita] [int] NULL,
	[idPaciente] [int] NULL,
	[idMedico] [int] NULL,
	[idEspecialidad] [int] NULL,
	[estado] [char](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[idHistoriClinica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T076_PROCEDIMIENTO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T076_PROCEDIMIENTO](
	[idProcedimiento] [int] IDENTITY(1,1) NOT NULL,
	[codProc] [varchar](8) NULL,
	[descripcion] [varchar](95) NULL,
	[area] [varchar](35) NULL,
	[dsEspecial] [varchar](35) NULL,
	[codEspecial] [varchar](6) NULL,
	[idEspecialidad] [int] NULL,
 CONSTRAINT [PK__T076_PRO__46A68D8333EA46BC] PRIMARY KEY CLUSTERED 
(
	[idProcedimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T080_TPDOCUPAGO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T080_TPDOCUPAGO](
	[idtpDocuPago] [int] IDENTITY(1,1) NOT NULL,
	[codDocuPago] [varchar](6) NULL,
	[descripcion] [varchar](55) NULL,
 CONSTRAINT [PK__T080_TPD__291BE33942685099] PRIMARY KEY CLUSTERED 
(
	[idtpDocuPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T083_PERITORIO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T083_PERITORIO](
	[idPeritorio] [int] NOT NULL,
	[codPeritorio] [varchar](5) NOT NULL,
	[descripcion] [varchar](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPeritorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T109_ESTADOCITA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T109_ESTADOCITA](
	[idEstadoCita] [int] IDENTITY(1,1) NOT NULL,
	[codEstadoCita] [varchar](5) NULL,
	[estado] [varchar](20) NULL,
	[origen] [varchar](150) NULL,
 CONSTRAINT [PK__T109_EST__FDA623A13B1651F0] PRIMARY KEY CLUSTERED 
(
	[idEstadoCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T119_PERFILSALUD]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T119_PERFILSALUD](
	[idPerfilSalud] [int] NOT NULL,
	[codPerfilSalud] [varchar](4) NULL,
	[descPerfil] [varchar](40) NULL,
	[estado] [char](5) NULL,
	[codEspecial] [varchar](4) NULL,
	[descEspecial] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPerfilSalud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T120_EMPLEADO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T120_EMPLEADO](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[codEmpleado] [varchar](6) NULL,
	[descArea] [varchar](35) NULL,
	[cargo] [varchar](30) NULL,
	[fecIngreso] [date] NULL,
	[salario] [int] NULL,
	[genero] [varchar](15) NULL,
	[idtpEmpleado] [int] NULL,
	[idPersona] [int] NULL,
	[estado] [char](12) NULL,
	[fechabaja] [date] NULL,
 CONSTRAINT [PK__T120_EMP__5295297C978D2F8E] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T120_ESPECIALIDAD]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T120_ESPECIALIDAD](
	[idEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[codEspecial] [varchar](6) NULL,
	[codSigesa] [varchar](5) NULL,
	[descripcion] [varchar](40) NULL,
	[codSubEspecial] [varchar](6) NULL,
	[descSubEspecial] [varchar](30) NULL,
 CONSTRAINT [PK__T120_ESP__E8AB16005F40EFAE] PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T126_GPOSANGRE]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T126_GPOSANGRE](
	[idgpoSangre] [int] IDENTITY(1,1) NOT NULL,
	[codgpoSangre] [varchar](6) NULL,
	[descripcion] [varchar](20) NULL,
	[abreviatura] [char](4) NULL,
 CONSTRAINT [PK__T126_GPO__1469320EB02BD464] PRIMARY KEY CLUSTERED 
(
	[idgpoSangre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T128_TPRECETAELECTRO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T128_TPRECETAELECTRO](
	[idtpRecetaElec] [int] NOT NULL,
	[codtpRecetaElec] [varchar](15) NOT NULL,
	[descripcion] [varchar](15) NULL,
	[estado] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idtpRecetaElec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T129_ESTADOATENCION]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T129_ESTADOATENCION](
	[idEstAtencion] [int] NOT NULL,
	[codEstAtencion] [int] NULL,
	[descripcion] [varchar](20) NULL,
	[detalle] [varchar](50) NULL,
	[abreviatura] [char](5) NULL,
	[visualizado] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T139_TPPACFRECUENTE]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T139_TPPACFRECUENTE](
	[idtpPacFrecuente] [int] NOT NULL,
	[codtpPacFrecuente] [int] NULL,
	[descripcion] [varchar](25) NULL,
	[detalle] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[idtpPacFrecuente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T140_FORMATOANXHIS]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T140_FORMATOANXHIS](
	[idFormatAnxHis] [int] NOT NULL,
	[codigo] [varchar](3) NULL,
	[modulo] [varchar](50) NULL,
	[codFormato] [varchar](8) NULL,
	[formato] [varchar](30) NULL,
	[tipoDocu] [varchar](20) NULL,
	[descripcion] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFormatAnxHis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T144_CLASIFIATENCION]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T144_CLASIFIATENCION](
	[idClasifiAtencion] [int] NOT NULL,
	[codClasifiAtencion] [int] NULL,
	[descripcion] [varchar](20) NULL,
	[detalle] [varchar](50) NULL,
	[abreviatura] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idClasifiAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T145_DATOSPACHCE]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T145_DATOSPACHCE](
	[idDatospacHCE] [int] NOT NULL,
	[codDatospacHCE] [int] NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDatospacHCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T146_ATCSUSTANCIA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T146_ATCSUSTANCIA](
	[idAtcSustancia] [int] NOT NULL,
	[codATC] [int] NULL,
	[levelage] [int] NULL,
	[descIngles] [varchar](80) NULL,
	[descEspanol] [varchar](80) NULL,
	[nivel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idAtcSustancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T147_CIE10ESPECIALIDAD]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T147_CIE10ESPECIALIDAD](
	[idCIE10Especial] [int] NOT NULL,
	[orden] [int] NULL,
	[descDiagnostico] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCIE10Especial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T148_HOJASITEDS]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T148_HOJASITEDS](
	[idHojaSiteds] [int] NOT NULL,
	[codigo] [varchar](5) NULL,
	[grupo] [varchar](40) NULL,
	[campos] [varchar](50) NULL,
	[componentHIS] [varchar](50) NULL,
	[oblig] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[idHojaSiteds] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T149_PROTOCOLO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T149_PROTOCOLO](
	[idProtocolo] [int] NOT NULL,
	[cie10] [varchar](5) NULL,
	[descripcion] [varchar](40) NULL,
	[tpPlanork] [varchar](40) NULL,
	[codProtocolo] [varchar](5) NULL,
	[resumen] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idProtocolo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T172_TPDOCUMENTO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T172_TPDOCUMENTO](
	[idtpDocumento] [int] IDENTITY(1,1) NOT NULL,
	[codtpDocumento] [varchar](6) NOT NULL,
	[descripcion] [varchar](45) NULL,
	[abreviatura] [char](12) NULL,
	[fuente] [varchar](65) NULL,
 CONSTRAINT [PK__T172_TPD__4287F65C3E5A2B98] PRIMARY KEY CLUSTERED 
(
	[idtpDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T175_LABORATORIO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T175_LABORATORIO](
	[idLaboratorio] [int] IDENTITY(1,1) NOT NULL,
	[codCentroCosto] [varchar](5) NULL,
	[centroCosto] [varchar](40) NULL,
	[codigo] [varchar](6) NULL,
	[descripcion] [varchar](80) NULL,
	[origen] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idLaboratorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T185_FACTORRH]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T185_FACTORRH](
	[idFactorrh] [int] IDENTITY(1,1) NOT NULL,
	[codFactorrh] [varchar](6) NULL,
	[descripcion] [varchar](25) NULL,
	[fuente] [varchar](35) NULL,
 CONSTRAINT [PK__T185_FAC__FD320464146FDCE0] PRIMARY KEY CLUSTERED 
(
	[idFactorrh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T188_TPPARTODETA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T188_TPPARTODETA](
	[idtpPartoDeta] [int] NOT NULL,
	[codtpPartoDeta] [varchar](6) NULL,
	[nivel] [varchar](15) NULL,
	[descripcion] [varchar](45) NULL,
	[fuente] [varchar](45) NULL,
	[obs] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idtpPartoDeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T192_PARENTESCO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T192_PARENTESCO](
	[idParentesco] [int] IDENTITY(1,1) NOT NULL,
	[codParentesco] [varchar](6) NULL,
	[descripcion] [varchar](25) NULL,
	[abreviatura] [char](4) NULL,
	[fuente] [varchar](35) NULL,
 CONSTRAINT [PK__T192_PAR__9FA875F1BA52DB7A] PRIMARY KEY CLUSTERED 
(
	[idParentesco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T193_PATOLOGIANACE]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T193_PATOLOGIANACE](
	[idPatologiaNace] [int] NOT NULL,
	[codPatologiaNace] [varchar](6) NULL,
	[descripcion] [varchar](45) NULL,
	[fuente] [varchar](45) NULL,
	[obs] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPatologiaNace] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T194_TPEMBARAZO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T194_TPEMBARAZO](
	[idtpEmbarazo] [int] NOT NULL,
	[codtpEmbarazo] [varchar](4) NULL,
	[descripcion] [varchar](25) NULL,
	[abreviatura] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idtpEmbarazo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T196_TPPROCPSICO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T196_TPPROCPSICO](
	[idtpProcPsico] [int] NOT NULL,
	[codtpProcPsico] [varchar](6) NULL,
	[modulo] [varchar](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[idtpProcPsico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T198_GRADINSTRUCCION]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T198_GRADINSTRUCCION](
	[idGrdInstruc] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](5) NULL,
	[descripcion] [varchar](35) NULL,
	[abreviatura] [char](5) NULL,
	[fuente] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idGrdInstruc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T199_ESTCIVIL]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T199_ESTCIVIL](
	[idEstCivil] [int] IDENTITY(1,1) NOT NULL,
	[codEstCivil] [varchar](6) NULL,
	[descripcion] [varchar](45) NULL,
	[abreviatura] [char](5) NULL,
	[fuente] [varchar](30) NULL,
 CONSTRAINT [PK__T199_EST__FB343C74851A899A] PRIMARY KEY CLUSTERED 
(
	[idEstCivil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T200_OCUPACION]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T200_OCUPACION](
	[idOcupacion] [int] IDENTITY(1,1) NOT NULL,
	[codOcupacion] [varchar](6) NULL,
	[descripcion] [varchar](40) NULL,
	[abreviatura] [char](4) NULL,
	[fuente] [varchar](45) NULL,
 CONSTRAINT [PK__T200_OCU__BE5FA2043A777C80] PRIMARY KEY CLUSTERED 
(
	[idOcupacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T201_ESTADOACTUAL]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T201_ESTADOACTUAL](
	[idEstaActual] [int] NOT NULL,
	[codEstaActual] [int] NOT NULL,
	[nivel1] [varchar](40) NULL,
	[descripcion] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstaActual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T202_ANAMNESIALI]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T202_ANAMNESIALI](
	[idAnamnesiAli] [int] NOT NULL,
	[codAnamnesiAli] [int] NOT NULL,
	[descripcion] [varchar](45) NULL,
	[abreviatura] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAnamnesiAli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T203_FRECONSUMOALI]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T203_FRECONSUMOALI](
	[idFreconsumoAli] [int] NOT NULL,
	[codFreconsumoAli] [int] NOT NULL,
	[nivel1] [varchar](40) NULL,
	[descripcion] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFreconsumoAli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T204_EVALUAALI]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T204_EVALUAALI](
	[idEvaluaAli] [int] NOT NULL,
	[codEvaluaAli] [int] NOT NULL,
	[descripcion] [varchar](60) NULL,
	[fuente] [varchar](30) NULL,
	[obs] [varchar](30) NULL,
	[consideracion] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEvaluaAli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T205_EDADEVALUAALI]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T205_EDADEVALUAALI](
	[idEdadEvaluaAli] [int] NOT NULL,
	[codEdadEvaluaAli] [int] NOT NULL,
	[descripcion] [varchar](15) NULL,
	[fuente] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEdadEvaluaAli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T208_ESTADONUTRICION]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T208_ESTADONUTRICION](
	[idEstaNutricion] [int] NOT NULL,
	[codEstaNutricion] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[origen] [varchar](35) NULL,
	[obs] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstaNutricion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T212_MEDICO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T212_MEDICO](
	[idMedico] [int] IDENTITY(1,1) NOT NULL,
	[codMedico] [varchar](6) NULL,
	[nroColegio] [int] NULL,
	[nroRne] [varchar](6) NULL,
	[nroRuc] [int] NULL,
	[idtpDocumento] [int] NULL,
	[condicion] [varchar](20) NULL,
	[idEmpleado] [int] NULL,
	[idEspecialidad] [int] NULL,
	[idPersona] [int] NULL,
	[estado] [varchar](12) NULL,
	[fechabaja] [date] NULL,
 CONSTRAINT [PK__T212_MED__4E03DEBAD92F7BA8] PRIMARY KEY CLUSTERED 
(
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T213_RECETAELEC]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T213_RECETAELEC](
	[idReceta] [int] IDENTITY(1,1) NOT NULL,
	[idPaciente] [int] NOT NULL,
	[sexo] [varchar](15) NULL,
	[edad] [varchar](10) NULL,
	[peso] [varchar](10) NULL,
	[tpPaciente] [int] NOT NULL,
	[idIafa] [int] NOT NULL,
	[empresa] [varchar](50) NULL,
	[modoPago] [varchar](25) NULL,
	[idCie10] [int] NOT NULL,
	[descCie10] [varchar](50) NULL,
	[descDCI] [varchar](10) NULL,
	[nomComercial] [varchar](50) NULL,
	[concentracion] [varchar](10) NULL,
	[formFarmacia] [varchar](10) NULL,
	[dosis] [varchar](10) NULL,
	[via] [varchar](10) NULL,
	[frecuencia] [varchar](10) NULL,
	[duracion] [varchar](10) NULL,
	[cantidad] [int] NULL,
	[observacion] [varchar](60) NULL,
	[idCita] [int] NULL,
	[delivery] [char](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[idReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T218_SERVICIOSCLI]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T218_SERVICIOSCLI](
	[idservicioCli] [int] NOT NULL,
	[descripcion] [varchar](35) NULL,
	[estado] [char](10) NULL,
 CONSTRAINT [PK__T218_SER__C162F34C8B31AA5A] PRIMARY KEY CLUSTERED 
(
	[idservicioCli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T257_EXAMESPECIAL]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T257_EXAMESPECIAL](
	[idExamSpecial] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](8) NULL,
	[descripcion] [varchar](40) NULL,
	[nombreCorto] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[idExamSpecial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T263_GPONUTRICION]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T263_GPONUTRICION](
	[idgpoNutricion] [int] NOT NULL,
	[codgpoNutricion] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idgpoNutricion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T264_VALORNUTRICION]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T264_VALORNUTRICION](
	[idvalorNutricion] [int] NOT NULL,
	[codvalorNutricion] [int] NOT NULL,
	[indicador] [varchar](30) NULL,
	[unidad] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[idvalorNutricion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T267_ESQUEMALIMENTO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T267_ESQUEMALIMENTO](
	[idEsquemaAli] [int] NOT NULL,
	[codGrupo] [int] NOT NULL,
	[grupo] [varchar](20) NULL,
	[codCampos] [varchar](30) NULL,
	[campos] [varchar](30) NULL,
	[unidad] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEsquemaAli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T268_INVENTALIMENTO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T268_INVENTALIMENTO](
	[idInventAlimento] [int] NOT NULL,
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[kca] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[idInventAlimento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T269_RECOMENDANUTRI]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T269_RECOMENDANUTRI](
	[idRecomendaNutri] [int] NOT NULL,
	[codrecomendaNutri] [int] NOT NULL,
	[descripcion] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[idRecomendaNutri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T277_FORMATONUTRI]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T277_FORMATONUTRI](
	[idFormatoNutri] [int] NOT NULL,
	[grupo] [varchar](35) NULL,
	[codFormato] [varchar](4) NULL,
	[formato] [varchar](150) NULL,
	[via] [varchar](15) NULL,
	[ruta] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFormatoNutri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T278_TIPOLACTANCIA]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T278_TIPOLACTANCIA](
	[idtpLactancia] [int] NOT NULL,
	[codLactancia] [varchar](5) NULL,
	[descripcion] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[idtpLactancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T280_ANTROPOMETRICO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T280_ANTROPOMETRICO](
	[idAntropometrico] [int] NOT NULL,
	[tipo] [varchar](25) NULL,
	[valores] [varchar](35) NULL,
	[abreviatura] [varchar](8) NULL,
	[unidad] [varchar](2) NULL,
	[udmcorta] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAntropometrico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TMP_CRONOMEDICO]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_CRONOMEDICO](
	[idProgramMedica] [int] IDENTITY(1,1) NOT NULL,
	[mes] [varchar](20) NULL,
	[semana] [varchar](20) NULL,
	[dia] [varchar](20) NULL,
	[fecProgramMedica] [datetime] NULL,
	[idMedico] [int] NULL,
	[idEspecialidad] [int] NULL,
	[idConsultorio] [int] NULL,
	[hrInicio] [varchar](6) NULL,
	[hrFin] [varchar](6) NULL,
	[estado] [char](5) NULL,
	[turno] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idProgramMedica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TMP_PACIENTE]    Script Date: 27/06/2020 10:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_PACIENTE](
	[idPaciente] [int] IDENTITY(1,1) NOT NULL,
	[codPaciente] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[nrohc] [varchar](50) NULL,
	[nombreAcom] [varchar](50) NULL,
	[edadAcom] [int] NULL,
	[dniAcom] [int] NULL,
	[idgpoSangre] [varchar](50) NULL,
	[idFactorrrh] [varchar](50) NULL,
	[cobertura] [varchar](50) NULL,
	[ordenAtenMed] [varchar](25) NULL,
	[nomAseguradora] [varchar](50) NULL,
	[codAsegurado] [varchar](15) NULL,
	[poliza] [varchar](35) NULL,
	[parentesco] [varchar](35) NULL,
	[iniVigencia] [datetime] NULL,
	[finVigencia] [datetime] NULL,
	[tpPlanSalud] [varchar](40) NULL,
	[nroplanSalud] [int] NULL,
	[estadoSeguro] [char](10) NULL,
	[tpAfiliacion] [varchar](30) NULL,
	[fecAfiliacion] [datetime] NULL,
	[codTitular] [int] NULL,
	[moneda] [varchar](30) NULL,
	[nomContratante] [varchar](35) NULL,
	[tpDocumento] [varchar](35) NULL,
	[dniContratante] [int] NULL,
	[planSalud] [varchar](40) NULL,
	[codCobertura] [int] NULL,
	[beneficio] [varchar](50) NULL,
	[restriccion] [varchar](50) NULL,
	[copagoFijo] [int] NULL,
	[copagoVariable] [int] NULL,
	[finCarencia] [int] NULL,
	[convenio] [varchar](40) NULL,
	[descuento] [decimal](18, 0) NULL,
	[codPaConvenio] [varchar](6) NULL,
	[dsPacConv] [varchar](40) NULL,
	[statPaconv] [char](10) NULL,
	[codPacSoat] [varchar](6) NULL,
	[dsPacSoat] [varchar](40) NULL,
	[statPacSoat] [char](10) NULL,
	[codpacExterno] [varchar](6) NULL,
	[dspacExter] [varchar](40) NULL,
	[stapacexter] [char](10) NULL,
	[tpPaciente] [varchar](9) NULL,
	[idPersona] [int] NULL,
	[hojafiliacion] [bit] NULL,
	[concienteDato] [bit] NULL,
	[estado] [char](10) NULL,
 CONSTRAINT [PK__TMP_PACI__F48A08F20AFB57BB] PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[D00_TBDETALLE] ON 
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (1, N'TPD001', N'DNI', N'DNI', N'www.sunat.gob.pe/pdt/pdtModulos/independientes/p695/TipoDoc.htm', 1, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (2, N'TPD002', N'CARNET DE EXTRANJERIA', N'CARNET EXT', N'www.sunat.gob.pe/pdt/pdtModulos/independientes/p695/TipoDoc.htm', 1, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (3, N'TPD003', N'REGISTRO UNICO CONTRIBUYENTES', N'RUC', N'www.sunat.gob.pe/pdt/pdtModulos/independientes/p695/TipoDoc.htm', 1, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (4, N'TPD004', N'PASAPORTE', N'', N'www.sunat.gob.pe/pdt/pdtModulos/independientes/p695/TipoDoc.htm', 1, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (5, N'TPD005', N'PARTIDA NACIMIENTO-IDENTIDAD', N'', N'www.sunat.gob.pe/pdt/pdtModulos/independientes/p695/TipoDoc.htm', 1, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (6, N'TPD006', N'OTROS', N'', N'www.sunat.gob.pe/pdt/pdtModulos/independientes/p695/TipoDoc.htm', 1, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (7, N'SEX0001', N'MASCULINO', N'M', N'', 2, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (8, N'SEX0002', N'FEMENINO', N'F', N'', 2, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (9, N'GRD0001', N'SIN INSTRUCCIÓN', N'SI', N'NTS N° 139 MINSA/2018/DGAIN', 3, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (10, N'GRD0002', N'INICIAL', N'I', N'NTS N° 139 MINSA/2018/DGAIN', 3, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (11, N'GRD0001', N'PRIMARIA COMPLETA', N'PC', N'NTS N° 139 MINSA/2018/DGAIN', 3, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (12, N'GRD0002', N'PRIMARIA INCOMPLETA', N'PI', N'NTS N° 139 MINSA/2018/DGAIN', 3, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (13, N'GRD0001', N'SECUNDARIA COMPLETA', N'SC', N'NTS N° 139 MINSA/2018/DGAIN', 3, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (14, N'GRD0002', N'SECUNDARIA INCOMPLETA', N'SI', N'NTS N° 139 MINSA/2018/DGAIN', 3, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (15, N'GRD0001', N'SUPERIOR COMPLETO	', N'SUC', N'NTS N° 139 MINSA/2018/DGAIN', 3, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (16, N'GRD0001', N'SUPERIOR INCOMPLETO', N'SUI', N'NTS N° 139 MINSA/2018/DGAIN', 3, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (17, N'EDC001', N'SOLTERA/O', N'S', N'NTS N° 139 MINSA/2018/DGAIN', 4, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (18, N'EDC002', N'CONVIVIENTE', N'CO', N'NTS N° 139 MINSA/2018/DGAIN', 4, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (19, N'EDC003', N'CASADA/O', N'C', N'NTS N° 139 MINSA/2018/DGAIN', 4, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (20, N'EDC004', N'SEPARADA/O', N'SP', N'NTS N° 139 MINSA/2018/DGAIN', 4, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (21, N'EDC005', N'DIVORCIADA/O', N'D', N'NTS N° 139 MINSA/2018/DGAIN', 4, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (22, N'EDC006', N'VIUDA/O', N'V', N'NTS N° 139 MINSA/2018/DGAIN', 4, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (23, N'EDC007', N'OTROS', N'O', N'NTS N° 139 MINSA/2018/DGAIN', 4, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (24, N'DHO001', N'TRABAJADOR/A ESTABLE', N'S', N'NTS N° 139 MINSA/2018/DGAIN', 5, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (25, N'DHO002', N'EVENTUAL', N'V', N'NTS N° 139 MINSA/2018/DGAIN', 5, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (26, N'DHO003', N'SIN OCUPACION', N'SO', N'NTS N° 139 MINSA/2018/DGAIN', 5, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (27, N'DHO004', N'JUBILADA/O', N'J', N'NTS N° 139 MINSA/2018/DGAIN', 5, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (28, N'DHO005', N'ESTUDIANTE', N'E', N'NTS N° 139 MINSA/2018/DGAIN', 5, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (29, N'G00001', N'AB POSITIVO', N'AB+', N'', 6, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (30, N'G00002', N'AB NEGATIVO', N'AB-', N'', 6, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (31, N'G00003', N'A POSITIVO', N'A+', N'', 6, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (32, N'G00004', N'A NEGATIVO', N'A-', N'', 6, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (33, N'G00005', N'B POSITIVO', N'B+', N'', 6, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (34, N'G00006', N'B NEGATIVO', N'B-', N'', 6, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (35, N'G00007', N'O POSITIVO', N'O+', N'', 6, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (36, N'G00008', N'O NEGATIVO', N'O-', N'', 6, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (37, N'G00009', N'NO REFIERE', N'', N'', 6, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (38, N'DHC035', N'POSITIVO', N'+', N'NTS N° 139 MINSA/2018/DGAIN', 7, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (39, N'DHC035', N'NEGATIVO', N'-', N'NTS N° 139 MINSA/2018/DGAIN', 7, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (40, N'ANP001', N'PADRE', N'P', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (41, N'ANP002', N'MADRE', N'M', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (42, N'ANP003', N'HIJO/A', N'H', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (43, N'ANP004', N'ABUELA/O', N'A', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (44, N'ANP005', N'TIA/O', N'T', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (45, N'ANP006', N'NIETA/O', N'N', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (46, N'ANP007', N'PADRASTRO', N'PA', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (47, N'ANP008', N'MADRASTRA', N'MA', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (48, N'ANP009', N'SOBRINA/O', N'S', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (49, N'ANP010', N'PRIMA/O', N'PR', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (50, N'ANP011', N'BIS-ABUELA/O', N'BA', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (51, N'ANP012', N'AMIGA/O', N'AMG', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (52, N'ANP013', N'HERMANA/O', N'HM', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (53, N'ANP014', N'YERNO', N'Y', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (54, N'ANP015', N'NUERA', N'NA', N'NTS N° 139 MINSA/2018/DGAIN', 8, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (55, N'TPV001', N'ALAMEDA', N'AL', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (56, N'TPV002', N'AVENIDA', N'AV', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (57, N'TPV003', N'BAJADA', N'BA', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (58, N'TPV004', N'BOULEVARD', N'BO', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (59, N'TPV005', N'CALLE', N'CA', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (60, N'TPV006', N'CALLEJON', N'CLL', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (61, N'TPV07', N'CAMINO', N'CM', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (62, N'TPV008', N'CARRETERA', N'CR', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (63, N'TPV009', N'CUESTA', N'CU', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (64, N'TPV010', N'GALERIA', N'GA', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (65, N'TPV011', N'JIRON', N'JR', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (66, N'TPV012', N'MALECON', N'ML', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (68, N'TPV013', N'OVALO', N'OV', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (69, N'TPV014', N'PASAJE', N'PJE', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (70, N'TPV015', N'PARQUE', N'PQ', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (71, N'TPV016', N'PASEO', N'PAS', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (72, N'TPV017', N'PLAZA', N'PL', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (73, N'TPV018', N'PLAZUELA', N'PZ', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (74, N'TPV019', N'PROLONGACION', N'PRO', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (75, N'TPV020', N'PUENTE', N'PU', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (76, N'TPV021', N'SENDERO', N'SE', N'', 9, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (77, N'DOE01', N'ASIATICO', N'', N'', 10, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (78, N'DOE02', N'NEGRO', N'', N'', 10, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (79, N'DOE03', N'HISPANO', N'', N'', 10, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (80, N'DOE04', N'BLANCO', N'', N'', 10, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (81, N'DOE05', N'OTROS', N'', N'', 10, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (82, N'DHR001', N'JUDAISMO', N'', N'RM N° 329, 2011/MINSA', 11, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (83, N'DHR002', N'ISLAMISMO', N'', N'RM N° 329, 2011/MINSA', 11, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (84, N'DHR003', N'CRISTIANISMO', N'', N'RM N° 329, 2011/MINSA', 11, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (85, N'DHR004', N'HINDUISMO', N'', N'RM N° 329, 2011/MINSA', 11, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (86, N'DHR005', N'BUDISMO', N'', N'RM N° 329, 2011/MINSA', 11, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (87, N'DHR006', N'RELIGION TRADICIONAL CHINA', N'', N'RM N° 329, 2011/MINSA', 11, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (88, N'DHR007', N'ESPIRITISMO', N'', N'RM N° 329, 2011/MINSA', 11, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (89, N'DHR008', N'HELENISMO', N'', N'RM N° 329, 2011/MINSA', 11, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (90, N'DHR009', N'INDIGENAS', N'', N'RM N° 329, 2011/MINSA', 11, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (91, N'DHR010', N'NEOPAGANISMO', N'', N'RM N° 329, 2011/MINSA', 11, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (92, N'DHR011', N'TAOISMO', N'', N'329, 2011/MINSA', 11, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (93, N'DHR012', N'OTROS', N'', N'329, 2011/MINSA', 11, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (94, N'CONS01', N'CONSULTORIO1', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (95, N'CONS02', N'CONSULTORIO2', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (96, N'CONS03', N'CONSULTORIO3', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (97, N'CONS04', N'CONSULTORIO4', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (98, N'CONS05', N'CONSULTORIO5', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (99, N'CONS06', N'CONSULTORIO6', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (100, N'CONS07', N'CONSULTORIO7', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (101, N'CONS08', N'CONSULTORIO8', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (102, N'CONS09', N'CONSULTORIO9', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (103, N'CONS10', N'CONSULTORIO10', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (104, N'CONS11', N'CONSULTORIO11', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (105, N'CONS12', N'CONSULTORIO12', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (106, N'CONS13', N'CONSULTORIO13', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (107, N'CONS14', N'CONSULTORIO14', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (108, N'CONS15', N'CONSULTORIO15', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (109, N'EMP001', N'ADMINISIONISTA', N'', N'', 13, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (110, N'EMP002', N'MEDICA/O', N'', N'', 13, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (111, N'EMP003', N'ENFERMERA/O', N'', N'', 13, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (112, N'EMP004', N'LABORATORISTA', N'', N'', 13, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (113, N'EMP05', N'FARMACEUTICA/O', N'', N'', 13, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (114, N'EMP006', N'TECNICO', N'', N'', 13, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (115, N'EMP007', N'DELIVERY', N'', N'', 13, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (116, N'EMP008', N'ARCHIVERO', N'', N'', 13, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (117, N'EMP009', N'SEGURIDAD', N'', N'', 13, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (118, N'EMP010', N'SERVICIOS', N'', N'', 13, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (119, N'EMP011', N'MED. TEMPORAL', N'', N'', 13, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (120, N'TPAC01', N'PARTICULAR', N'', N'', 14, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (121, N'TPAC02', N'ASEGURADO', N'', N'', 14, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (122, N'TPAC03', N'CONVENIO', N'', N'', 14, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (123, N'TPAC04', N'SOAT', N'', N'', 14, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (124, N'TPAC05', N'EXTERNO', N'', N'', 14, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (125, N'TPAC06', N'EMUSA', N'', N'', 14, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (126, N'E001', N'ALERGIA E INMUNOLOGIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (127, N'E002', N'CARDIOLOGIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (128, N'E003', N'CIRUGIA ONCOLOGICA DE CABEZA Y CUELLO', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (129, N'E004', N'CIRUGIA DE TORAX Y CARDIOVASCULAR', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (130, N'E005', N'CIRUGIA GENERAL Y LAPAROSCOPICA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (131, N'E006', N'CIRUGIA GENERAL Y ONCOLOGICA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (132, N'E007', N'DERMATOLOGIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (133, N'E008', N'RADIOLOGIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (134, N'E009', N'ENDOCRINOLOGIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (135, N'E0010', N'ENFERMERIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (136, N'E0011', N'GASTROENTEROLOGIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (137, N'E0012', N'GERIATRIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (138, N'E0013', N'GINECOLOGIA Y OBSTETRICIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (139, N'E0014', N'GINECOLOGIA ONCOLOGICA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (140, N'E0015', N'HEMATOLOGIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (141, N'E0016', N'MASTOLOGIA ', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (142, N'E0017', N'MEDICINA FISICA Y REHABILITACION', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (143, N'E0018', N'MEDICINA GENERAL', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (144, N'E0019', N'MEDICINA INTERNA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (145, N'E0020', N'NEFROLOGIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (146, N'E0021', N'NEUMOLOGIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (147, N'E0022', N'NEUROCIRUGIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (148, N'E0023', N'NEUROLOGIA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (149, N'E0024', N'NUTRICION Y DIETETICA', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (150, N'E0025', N'ODONTOLOGIA INTEGRAL', N'', N'', 15, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (151, N'SE001', N'CENTRO QUIRURGICO', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (152, N'SE002', N'CONSULTA AMBULATORIA', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (153, N'SE003', N'DENSITOMETRIA', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (154, N'SE004', N'ECOGRAFIAS', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (155, N'SE005', N'EMERGENCIA', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (156, N'SE006', N'HOSPITALIZACION', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (157, N'SE007', N'LABORATORIO', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (158, N'SE008', N'OD. CIRUGIA DENTAL', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (159, N'SE009', N'COD. INTEGRAL', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (160, N'SE010', N'OD. ORTODONCIA', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (161, N'SE011', N'OD. PROTESIS', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (162, N'SE012', N'ODONTOLOGIA', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (163, N'SE013', N'PEDIATRIA PD', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (164, N'SE014', N'RAYOS X', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (165, N'SE015', N'SALA DE PROCEDIMIENTOS', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (166, N'SE016', N'SANIDAD', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (167, N'SE017', N'TOMOGRAFIA Y RESONANCIAS', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (168, N'SE018', N'TOPICO', N'', N'', 16, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (169, N'CIT001', N'CONSULTA', N'', N'', 17, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (170, N'CIT002', N'EXAMEN', N'', N'', 17, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (171, N'CIT003', N'PROCEDIMIENTO', N'', N'', 17, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (172, N'CRON01', N'ACTIVO', N'', N'', 18, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (173, N'CRON02', N'INACTIVO', N'', N'', 18, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (174, N'CONS16', N'CONSULTORIO16', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (175, N'CONS17', N'CONSULTORIO17', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (176, N'CONS18', N'CONSULTORIO18', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (177, N'CONS19', N'CONSULTORIO19', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (178, N'CONS20', N'CONSULTORIO20', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (179, N'CONS21', N'CONSULTORIO21', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (180, N'CONS22', N'CONSULTORIO22', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (181, N'CONS23', N'CONSULTORIO23', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (182, N'CONS24', N'CONSULTORIO24', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (183, N'CONS25', N'CONSULTORIO25', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (184, N'CONS26', N'CONSULTORIO26', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (185, N'CONS27', N'CONSULTORIO27', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (186, N'CONS28', N'CONSULTORIO28', N'', N'', 12, N'            ', NULL)
GO
INSERT [dbo].[D00_TBDETALLE] ([idDet], [coddetTab], [descripcion], [abrev], [fuente], [idTab], [estado], [fechabaja]) VALUES (187, N'CONS29', N'CONSULTORIO29', N'', N'', 12, N'            ', NULL)
GO
SET IDENTITY_INSERT [dbo].[D00_TBDETALLE] OFF
GO
SET IDENTITY_INSERT [dbo].[D00_TBGENERAL] ON 
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (1, N'1', N'Tipo Documento', N'tpdoc01', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (2, N'2', N'sexo', N'sex001', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (3, N'3', N'grado instruccion', N'grd001', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (4, N'4', N'Estado Civil', N'cvl001', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (5, N'5', N'Ocupacion', N'ocu001', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (6, N'6', N'Grupo Sangre', N'sang001', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (7, N'7', N'Factor RH', N'fh001', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (8, N'8', N'Parentesco', N'par001', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (9, N'9', N'Tipo Via', N'tpv01', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (10, N'10', N'Etnico', N'etn01', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (11, N'11', N'Religion', N'rel01', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (12, N'12', N'Consultorio', N'consu01', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (13, N'13', N'Tipo Empleado', N'emp01', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (14, N'14', N'Tipo Paciente', N'tpac01', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (15, N'15', N'Especialidad', N'esp01', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (16, N'16', N'Servicio Clinica', N'srv001', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (17, N'17', N'Tipo Cita', N'cit01', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
INSERT [dbo].[D00_TBGENERAL] ([idTab], [codTab], [descripcion], [tipo], [fechaCreate], [usuCreate], [estado], [fechabaja]) VALUES (18, N'18', N'Cronograma stat', N'cron01', CAST(N'1900-01-01' AS Date), N'', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[D00_TBGENERAL] OFF
GO
SET IDENTITY_INSERT [dbo].[D001_USUARIO] ON 
GO
INSERT [dbo].[D001_USUARIO] ([idUsuario], [loginUser], [claveUser], [idEmpleado], [estado], [usuCrea], [fechaCrea], [usuMod], [fechaMod], [fechabaja]) VALUES (1, N'admin', N'admin', 1, N'1           ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[D001_USUARIO] ([idUsuario], [loginUser], [claveUser], [idEmpleado], [estado], [usuCrea], [fechaCrea], [usuMod], [fechaMod], [fechabaja]) VALUES (2, N'sa', N'sa', 2, N'1           ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[D001_USUARIO] ([idUsuario], [loginUser], [claveUser], [idEmpleado], [estado], [usuCrea], [fechaCrea], [usuMod], [fechaMod], [fechabaja]) VALUES (3, N'demo', N'demo', 3, N'1           ', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[D001_USUARIO] ([idUsuario], [loginUser], [claveUser], [idEmpleado], [estado], [usuCrea], [fechaCrea], [usuMod], [fechaMod], [fechabaja]) VALUES (4, N'test', N'test123', 4, N'2           ', NULL, NULL, NULL, NULL, CAST(N'2020-06-27' AS Date))
GO
INSERT [dbo].[D001_USUARIO] ([idUsuario], [loginUser], [claveUser], [idEmpleado], [estado], [usuCrea], [fechaCrea], [usuMod], [fechaMod], [fechabaja]) VALUES (5, N'vlarosa20', N'123456', 1, N'1           ', N'', N'', N'', N'', NULL)
GO
SET IDENTITY_INSERT [dbo].[D001_USUARIO] OFF
GO
SET IDENTITY_INSERT [dbo].[D008_CONSULTORIO] ON 
GO
INSERT [dbo].[D008_CONSULTORIO] ([idConsultorio], [nroConsultorio], [tpConsultorio], [descripcion], [area], [piso], [idEspecialidad], [estado], [fechabaja]) VALUES (1, 1, 1, N'neumococo', N'ER', N'1', 126, N'1           ', NULL)
GO
INSERT [dbo].[D008_CONSULTORIO] ([idConsultorio], [nroConsultorio], [tpConsultorio], [descripcion], [area], [piso], [idEspecialidad], [estado], [fechabaja]) VALUES (2, 2, 2, N'ginecologia', N'medicina', N'2', 127, N'1           ', NULL)
GO
INSERT [dbo].[D008_CONSULTORIO] ([idConsultorio], [nroConsultorio], [tpConsultorio], [descripcion], [area], [piso], [idEspecialidad], [estado], [fechabaja]) VALUES (3, 3, 3, N'pediatria', N'medicina', N'3', 128, N'1           ', NULL)
GO
INSERT [dbo].[D008_CONSULTORIO] ([idConsultorio], [nroConsultorio], [tpConsultorio], [descripcion], [area], [piso], [idEspecialidad], [estado], [fechabaja]) VALUES (4, 4, 4, N'odontologia', N'medicina', N'4', 129, N'2           ', CAST(N'2020-06-27' AS Date))
GO
INSERT [dbo].[D008_CONSULTORIO] ([idConsultorio], [nroConsultorio], [tpConsultorio], [descripcion], [area], [piso], [idEspecialidad], [estado], [fechabaja]) VALUES (5, 5, 5, N'praxis', N'ER', N'5', 130, N'1           ', NULL)
GO
SET IDENTITY_INSERT [dbo].[D008_CONSULTORIO] OFF
GO
SET IDENTITY_INSERT [dbo].[D011_UBIGEO] ON 
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1, N'00', N'00', N'00', N'SELECCIONE UN DEPARTAMENTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2, N'00', N'01', N'00', N'SELECCIONE UNA PROVINCIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (3, N'00', N'01', N'01', N'SELECCIONE UN DISTRITO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (4, N'01', N'00', N'00', N'AMAZONAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (5, N'01', N'01', N'00', N'CHACHAPOYAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (6, N'01', N'01', N'01', N'CHACHAPOYAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (7, N'01', N'01', N'02', N'ASUNCION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (8, N'01', N'01', N'03', N'BALSAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (9, N'01', N'01', N'04', N'CHETO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (10, N'01', N'01', N'05', N'CHILIQUIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (11, N'01', N'01', N'06', N'CHUQUIBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (12, N'01', N'01', N'07', N'GRANADA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (13, N'01', N'01', N'08', N'HUANCAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (14, N'01', N'01', N'09', N'LA JALCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (15, N'01', N'01', N'10', N'LEIMEBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (16, N'01', N'01', N'11', N'LEVANTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (17, N'01', N'01', N'12', N'MAGDALENA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (18, N'01', N'01', N'13', N'MARISCAL CASTILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (19, N'01', N'01', N'14', N'MOLINOPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (20, N'01', N'01', N'15', N'MONTEVIDEO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (21, N'01', N'01', N'16', N'OLLEROS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (22, N'01', N'01', N'17', N'QUINJALCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (23, N'01', N'01', N'18', N'SAN FRANCISCO DE DAGUAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (24, N'01', N'01', N'19', N'SAN ISIDRO DE MAINO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (25, N'01', N'01', N'20', N'SOLOCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (26, N'01', N'01', N'21', N'SONCHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (27, N'01', N'02', N'00', N'BAGUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (28, N'01', N'02', N'01', N'BAGUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (29, N'01', N'02', N'02', N'ARAMANGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (30, N'01', N'02', N'03', N'COPALLIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (31, N'01', N'02', N'04', N'EL PARCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (32, N'01', N'02', N'05', N'IMAZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (33, N'01', N'02', N'06', N'LA PECA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (34, N'01', N'03', N'00', N'BONGARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (35, N'01', N'03', N'01', N'JUMBILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (36, N'01', N'03', N'02', N'CHISQUILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (37, N'01', N'03', N'03', N'CHURUJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (38, N'01', N'03', N'04', N'COROSHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (39, N'01', N'03', N'05', N'CUISPES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (40, N'01', N'03', N'06', N'FLORIDA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (41, N'01', N'03', N'07', N'JAZAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (42, N'01', N'03', N'08', N'RECTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (43, N'01', N'03', N'09', N'SAN CARLOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (44, N'01', N'03', N'10', N'SHIPASBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (45, N'01', N'03', N'11', N'VALERA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (46, N'01', N'03', N'12', N'YAMBRASBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (47, N'01', N'04', N'00', N'CONDORCANQUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (48, N'01', N'04', N'01', N'NIEVA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (49, N'01', N'04', N'02', N'EL CENEPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (50, N'01', N'04', N'03', N'RIO SANTIAGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (51, N'01', N'05', N'00', N'LUYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (52, N'01', N'05', N'01', N'LAMUD', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (53, N'01', N'05', N'02', N'CAMPORREDONDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (54, N'01', N'05', N'03', N'COCABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (55, N'01', N'05', N'04', N'COLCAMAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (56, N'01', N'05', N'05', N'CONILA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (57, N'01', N'05', N'06', N'INGUILPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (58, N'01', N'05', N'07', N'LONGUITA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (59, N'01', N'05', N'08', N'LONYA CHICO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (60, N'01', N'05', N'09', N'LUYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (61, N'01', N'05', N'10', N'LUYA VIEJO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (62, N'01', N'05', N'11', N'MARIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (63, N'01', N'05', N'12', N'OCALLI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (64, N'01', N'05', N'13', N'OCUMAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (65, N'01', N'05', N'14', N'PISUQUIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (66, N'01', N'05', N'15', N'PROVIDENCIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (67, N'01', N'05', N'16', N'SAN CRISTOBAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (68, N'01', N'05', N'17', N'SAN FRANCISCO DEL YESO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (69, N'01', N'05', N'18', N'SAN JERONIMO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (70, N'01', N'05', N'19', N'SAN JUAN DE LOPECANCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (71, N'01', N'05', N'20', N'SANTA CATALINA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (72, N'01', N'05', N'21', N'SANTO TOMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (73, N'01', N'05', N'22', N'TINGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (74, N'01', N'05', N'23', N'TRITA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (75, N'01', N'06', N'00', N'RODRIGUEZ DE MENDOZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (76, N'01', N'06', N'01', N'SAN NICOLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (77, N'01', N'06', N'02', N'CHIRIMOTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (78, N'01', N'06', N'03', N'COCHAMAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (79, N'01', N'06', N'04', N'HUAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (80, N'01', N'06', N'05', N'LIMABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (81, N'01', N'06', N'06', N'LONGAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (82, N'01', N'06', N'07', N'MARISCAL BENAVIDES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (83, N'01', N'06', N'08', N'MILPUC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (84, N'01', N'06', N'09', N'OMIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (85, N'01', N'06', N'10', N'SANTA ROSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (86, N'01', N'06', N'11', N'TOTORA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (87, N'01', N'06', N'12', N'VISTA ALEGRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (88, N'01', N'07', N'00', N'UTCUBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (89, N'01', N'07', N'01', N'BAGUA GRANDE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (90, N'01', N'07', N'02', N'CAJARURO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (91, N'01', N'07', N'03', N'CUMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (92, N'01', N'07', N'04', N'EL MILAGRO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (93, N'01', N'07', N'05', N'JAMALCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (94, N'01', N'07', N'06', N'LONYA GRANDE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (95, N'01', N'07', N'07', N'YAMON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (96, N'02', N'00', N'00', N'ANCASH', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (97, N'02', N'01', N'00', N'HUARAZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (98, N'02', N'01', N'01', N'HUARAZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (99, N'02', N'01', N'02', N'COCHABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (100, N'02', N'01', N'03', N'COLCABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (101, N'02', N'01', N'04', N'HUANCHAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (102, N'02', N'01', N'05', N'INDEPENDENCIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (103, N'02', N'01', N'06', N'JANGAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (104, N'02', N'01', N'07', N'LA LIBERTAD', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (105, N'02', N'01', N'08', N'OLLEROS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (106, N'02', N'01', N'09', N'PAMPAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (107, N'02', N'01', N'10', N'PARIACOTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (108, N'02', N'01', N'11', N'PIRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (109, N'02', N'01', N'12', N'TARICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (110, N'02', N'02', N'00', N'AIJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (111, N'02', N'02', N'01', N'AIJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (112, N'02', N'02', N'02', N'CORIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (113, N'02', N'02', N'03', N'HUACLLAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (114, N'02', N'02', N'04', N'LA MERCED', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (115, N'02', N'02', N'05', N'SUCCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (116, N'02', N'03', N'00', N'ANTONIO RAYMONDI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (117, N'02', N'03', N'01', N'LLAMELLIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (118, N'02', N'03', N'02', N'ACZO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (119, N'02', N'03', N'03', N'CHACCHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (120, N'02', N'03', N'04', N'CHINGAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (121, N'02', N'03', N'05', N'MIRGAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (122, N'02', N'03', N'06', N'SAN JUAN DE RONTOY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (123, N'02', N'04', N'00', N'ASUNCION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (124, N'02', N'04', N'01', N'CHACAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (125, N'02', N'04', N'02', N'ACOCHACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (126, N'02', N'05', N'00', N'BOLOGNESI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (127, N'02', N'05', N'01', N'CHIQUIAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (128, N'02', N'05', N'02', N'ABELARDO PARDO LEZAMETA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (129, N'02', N'05', N'03', N'ANTONIO RAYMONDI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (130, N'02', N'05', N'04', N'AQUIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (131, N'02', N'05', N'05', N'CAJACAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (132, N'02', N'05', N'06', N'CANIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (133, N'02', N'05', N'07', N'COLQUIOC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (134, N'02', N'05', N'08', N'HUALLANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (135, N'02', N'05', N'09', N'HUASTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (136, N'02', N'05', N'10', N'HUAYLLACAYAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (137, N'02', N'05', N'11', N'LA PRIMAVERA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (138, N'02', N'05', N'12', N'MANGAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (139, N'02', N'05', N'13', N'PACLLON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (140, N'02', N'05', N'14', N'SAN MIGUEL DE CORPANQUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (141, N'02', N'05', N'15', N'TICLLOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (142, N'02', N'06', N'00', N'CARHUAZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (143, N'02', N'06', N'01', N'CARHUAZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (144, N'02', N'06', N'02', N'ACOPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (145, N'02', N'06', N'03', N'AMASHCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (146, N'02', N'06', N'04', N'ANTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (147, N'02', N'06', N'05', N'ATAQUERO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (148, N'02', N'06', N'06', N'MARCARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (149, N'02', N'06', N'07', N'PARIAHUANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (150, N'02', N'06', N'08', N'SAN MIGUEL DE ACO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (151, N'02', N'06', N'09', N'SHILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (152, N'02', N'06', N'10', N'TINCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (153, N'02', N'06', N'11', N'YUNGAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (154, N'02', N'07', N'00', N'CARLOS FERMIN FITZCARRALD', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (155, N'02', N'07', N'01', N'SAN LUIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (156, N'02', N'07', N'02', N'SAN NICOLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (157, N'02', N'07', N'03', N'YAUYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (158, N'02', N'08', N'00', N'CASMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (159, N'02', N'08', N'01', N'CASMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (160, N'02', N'08', N'02', N'BUENA VISTA ALTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (161, N'02', N'08', N'03', N'COMANDANTE NOEL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (162, N'02', N'08', N'04', N'YAUTAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (163, N'02', N'09', N'00', N'CORONGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (164, N'02', N'09', N'01', N'CORONGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (165, N'02', N'09', N'02', N'ACO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (166, N'02', N'09', N'03', N'BAMBAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (167, N'02', N'09', N'04', N'CUSCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (168, N'02', N'09', N'05', N'LA PAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (169, N'02', N'09', N'06', N'YANAC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (170, N'02', N'09', N'07', N'YUPAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (171, N'02', N'10', N'00', N'HUARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (172, N'02', N'10', N'01', N'HUARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (173, N'02', N'10', N'02', N'ANRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (174, N'02', N'10', N'03', N'CAJAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (175, N'02', N'10', N'04', N'CHAVIN DE HUANTAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (176, N'02', N'10', N'05', N'HUACACHI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (177, N'02', N'10', N'06', N'HUACCHIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (178, N'02', N'10', N'07', N'HUACHIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (179, N'02', N'10', N'08', N'HUANTAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (180, N'02', N'10', N'09', N'MASIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (181, N'02', N'10', N'10', N'PAUCAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (182, N'02', N'10', N'11', N'PONTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (183, N'02', N'10', N'12', N'RAHUAPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (184, N'02', N'10', N'13', N'RAPAYAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (185, N'02', N'10', N'14', N'SAN MARCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (186, N'02', N'10', N'15', N'SAN PEDRO DE CHANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (187, N'02', N'10', N'16', N'UCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (188, N'02', N'11', N'00', N'HUARMEY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (189, N'02', N'11', N'01', N'HUARMEY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (190, N'02', N'11', N'02', N'COCHAPETI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (191, N'02', N'11', N'03', N'CULEBRAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (192, N'02', N'11', N'04', N'HUAYAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (193, N'02', N'11', N'05', N'MALVAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (194, N'02', N'12', N'00', N'HUAYLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (195, N'02', N'12', N'01', N'CARAZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (196, N'02', N'12', N'02', N'HUALLANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (197, N'02', N'12', N'03', N'HUATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (198, N'02', N'12', N'04', N'HUAYLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (199, N'02', N'12', N'05', N'MATO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (200, N'02', N'12', N'06', N'PAMPAROMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (201, N'02', N'12', N'07', N'PUEBLO LIBRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (202, N'02', N'12', N'08', N'SANTA CRUZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (203, N'02', N'12', N'09', N'SANTO TORIBIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (204, N'02', N'12', N'10', N'YURACMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (205, N'02', N'13', N'00', N'MARISCAL LUZURIAGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (206, N'02', N'13', N'01', N'PISCOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (207, N'02', N'13', N'02', N'CASCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (208, N'02', N'13', N'03', N'ELEAZAR GUZMAN BARRON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (209, N'02', N'13', N'04', N'FIDEL OLIVAS ESCUDERO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (210, N'02', N'13', N'05', N'LLAMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (211, N'02', N'13', N'06', N'LLUMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (212, N'02', N'13', N'07', N'LUCMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (213, N'02', N'13', N'08', N'MUSGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (214, N'02', N'14', N'00', N'OCROS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (215, N'02', N'14', N'01', N'OCROS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (216, N'02', N'14', N'02', N'ACAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (217, N'02', N'14', N'03', N'CAJAMARQUILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (218, N'02', N'14', N'04', N'CARHUAPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (219, N'02', N'14', N'05', N'COCHAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (220, N'02', N'14', N'06', N'CONGAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (221, N'02', N'14', N'07', N'LLIPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (222, N'02', N'14', N'08', N'SAN CRISTOBAL DE RAJAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (223, N'02', N'14', N'09', N'SAN PEDRO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (224, N'02', N'14', N'10', N'SANTIAGO DE CHILCAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (225, N'02', N'15', N'00', N'PALLASCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (226, N'02', N'15', N'01', N'CABANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (227, N'02', N'15', N'02', N'BOLOGNESI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (228, N'02', N'15', N'03', N'CONCHUCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (229, N'02', N'15', N'04', N'HUACASCHUQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (230, N'02', N'15', N'05', N'HUANDOVAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (231, N'02', N'15', N'06', N'LACABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (232, N'02', N'15', N'07', N'LLAPO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (233, N'02', N'15', N'08', N'PALLASCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (234, N'02', N'15', N'09', N'PAMPAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (235, N'02', N'15', N'10', N'SANTA ROSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (236, N'02', N'15', N'11', N'TAUCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (237, N'02', N'16', N'00', N'POMABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (238, N'02', N'16', N'01', N'POMABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (239, N'02', N'16', N'02', N'HUAYLLAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (240, N'02', N'16', N'03', N'PAROBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (241, N'02', N'16', N'04', N'QUINUABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (242, N'02', N'17', N'00', N'RECUAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (243, N'02', N'17', N'01', N'RECUAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (244, N'02', N'17', N'02', N'CATAC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (245, N'02', N'17', N'03', N'COTAPARACO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (246, N'02', N'17', N'04', N'HUAYLLAPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (247, N'02', N'17', N'05', N'LLACLLIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (248, N'02', N'17', N'06', N'MARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (249, N'02', N'17', N'07', N'PAMPAS CHICO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (250, N'02', N'17', N'08', N'PARARIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (251, N'02', N'17', N'09', N'TAPACOCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (252, N'02', N'17', N'10', N'TICAPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (253, N'02', N'18', N'00', N'SANTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (254, N'02', N'18', N'01', N'CHIMBOTE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (255, N'02', N'18', N'02', N'CACERES DEL PERU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (256, N'02', N'18', N'03', N'COISHCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (257, N'02', N'18', N'04', N'MACATE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (258, N'02', N'18', N'05', N'MORO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (259, N'02', N'18', N'06', N'NEPEÑA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (260, N'02', N'18', N'07', N'SAMANCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (261, N'02', N'18', N'08', N'SANTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (262, N'02', N'18', N'09', N'NUEVO CHIMBOTE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (263, N'02', N'19', N'00', N'SIHUAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (264, N'02', N'19', N'01', N'SIHUAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (265, N'02', N'19', N'02', N'ACOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (266, N'02', N'19', N'03', N'ALFONSO UGARTE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (267, N'02', N'19', N'04', N'CASHAPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (268, N'02', N'19', N'05', N'CHINGALPO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (269, N'02', N'19', N'06', N'HUAYLLABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (270, N'02', N'19', N'07', N'QUICHES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (271, N'02', N'19', N'08', N'RAGASH', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (272, N'02', N'19', N'09', N'SAN JUAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (273, N'02', N'19', N'10', N'SICSIBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (274, N'02', N'20', N'00', N'YUNGAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (275, N'02', N'20', N'01', N'YUNGAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (276, N'02', N'20', N'02', N'CASCAPARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (277, N'02', N'20', N'03', N'MANCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (278, N'02', N'20', N'04', N'MATACOTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (279, N'02', N'20', N'05', N'QUILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (280, N'02', N'20', N'06', N'RANRAHIRCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (281, N'02', N'20', N'07', N'SHUPLUY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (282, N'02', N'20', N'08', N'YANAMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (283, N'03', N'00', N'00', N'APURIMAC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (284, N'03', N'01', N'00', N'ABANCAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (285, N'03', N'01', N'01', N'ABANCAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (286, N'03', N'01', N'02', N'CHACOCHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (287, N'03', N'01', N'03', N'CIRCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (288, N'03', N'01', N'04', N'CURAHUASI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (289, N'03', N'01', N'05', N'HUANIPACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (290, N'03', N'01', N'06', N'LAMBRAMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (291, N'03', N'01', N'07', N'PICHIRHUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (292, N'03', N'01', N'08', N'SAN PEDRO DE CACHORA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (293, N'03', N'01', N'09', N'TAMBURCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (294, N'03', N'02', N'00', N'ANDAHUAYLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (295, N'03', N'02', N'01', N'ANDAHUAYLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (296, N'03', N'02', N'02', N'ANDARAPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (297, N'03', N'02', N'03', N'CHIARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (298, N'03', N'02', N'04', N'HUANCARAMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (299, N'03', N'02', N'05', N'HUANCARAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (300, N'03', N'02', N'06', N'HUAYANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (301, N'03', N'02', N'07', N'KISHUARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (302, N'03', N'02', N'08', N'PACOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (303, N'03', N'02', N'09', N'PACUCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (304, N'03', N'02', N'10', N'PAMPACHIRI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (305, N'03', N'02', N'11', N'POMACOCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (306, N'03', N'02', N'12', N'SAN ANTONIO DE CACHI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (307, N'03', N'02', N'13', N'SAN JERONIMO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (308, N'03', N'02', N'14', N'SAN MIGUEL DE CHACCRAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (309, N'03', N'02', N'15', N'SANTA MARIA DE CHICMO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (310, N'03', N'02', N'16', N'TALAVERA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (311, N'03', N'02', N'17', N'TUMAY HUARACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (312, N'03', N'02', N'18', N'TURPO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (313, N'03', N'02', N'19', N'KAQUIABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (314, N'03', N'03', N'00', N'ANTABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (315, N'03', N'03', N'01', N'ANTABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (316, N'03', N'03', N'02', N'EL ORO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (317, N'03', N'03', N'03', N'HUAQUIRCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (318, N'03', N'03', N'04', N'JUAN ESPINOZA MEDRANO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (319, N'03', N'03', N'05', N'OROPESA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (320, N'03', N'03', N'06', N'PACHACONAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (321, N'03', N'03', N'07', N'SABAINO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (322, N'03', N'04', N'00', N'AYMARAES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (323, N'03', N'04', N'01', N'CHALHUANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (324, N'03', N'04', N'02', N'CAPAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (325, N'03', N'04', N'03', N'CARAYBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (326, N'03', N'04', N'04', N'CHAPIMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (327, N'03', N'04', N'05', N'COLCABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (328, N'03', N'04', N'06', N'COTARUSE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (329, N'03', N'04', N'07', N'HUAYLLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (330, N'03', N'04', N'08', N'JUSTO APU SAHUARAURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (331, N'03', N'04', N'09', N'LUCRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (332, N'03', N'04', N'10', N'POCOHUANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (333, N'03', N'04', N'11', N'SAN JUAN DE CHACÑA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (334, N'03', N'04', N'12', N'SAÑAYCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (335, N'03', N'04', N'13', N'SORAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (336, N'03', N'04', N'14', N'TAPAIRIHUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (337, N'03', N'04', N'15', N'TINTAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (338, N'03', N'04', N'16', N'TORAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (339, N'03', N'04', N'17', N'YANACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (340, N'03', N'05', N'00', N'COTABAMBAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (341, N'03', N'05', N'01', N'TAMBOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (342, N'03', N'05', N'02', N'COTABAMBAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (343, N'03', N'05', N'03', N'COYLLURQUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (344, N'03', N'05', N'04', N'HAQUIRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (345, N'03', N'05', N'05', N'MARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (346, N'03', N'05', N'06', N'CHALLHUAHUACHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (347, N'03', N'06', N'00', N'CHINCHEROS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (348, N'03', N'06', N'01', N'CHINCHEROS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (349, N'03', N'06', N'02', N'ANCO_HUALLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (350, N'03', N'06', N'03', N'COCHARCAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (351, N'03', N'06', N'04', N'HUACCANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (352, N'03', N'06', N'05', N'OCOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (353, N'03', N'06', N'06', N'ONGOY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (354, N'03', N'06', N'07', N'URANMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (355, N'03', N'06', N'08', N'RANRACANCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (356, N'03', N'07', N'00', N'GRAU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (357, N'03', N'07', N'01', N'CHUQUIBAMBILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (358, N'03', N'07', N'02', N'CURPAHUASI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (359, N'03', N'07', N'03', N'GAMARRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (360, N'03', N'07', N'04', N'HUAYLLATI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (361, N'03', N'07', N'05', N'MAMARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (362, N'03', N'07', N'06', N'MICAELA BASTIDAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (363, N'03', N'07', N'07', N'PATAYPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (364, N'03', N'07', N'08', N'PROGRESO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (365, N'03', N'07', N'09', N'SAN ANTONIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (366, N'03', N'07', N'10', N'SANTA ROSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (367, N'03', N'07', N'11', N'TURPAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (368, N'03', N'07', N'12', N'VILCABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (369, N'03', N'07', N'13', N'VIRUNDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (370, N'03', N'07', N'14', N'CURASCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (371, N'04', N'00', N'00', N'AREQUIPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (372, N'04', N'01', N'00', N'AREQUIPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (373, N'04', N'01', N'01', N'AREQUIPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (374, N'04', N'01', N'02', N'ALTO SELVA ALEGRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (375, N'04', N'01', N'03', N'CAYMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (376, N'04', N'01', N'04', N'CERRO COLORADO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (377, N'04', N'01', N'05', N'CHARACATO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (378, N'04', N'01', N'06', N'CHIGUATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (379, N'04', N'01', N'07', N'JACOBO HUNTER', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (380, N'04', N'01', N'08', N'LA JOYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (381, N'04', N'01', N'09', N'MARIANO MELGAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (382, N'04', N'01', N'10', N'MIRAFLORES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (383, N'04', N'01', N'11', N'MOLLEBAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (384, N'04', N'01', N'12', N'PAUCARPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (385, N'04', N'01', N'13', N'POCSI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (386, N'04', N'01', N'14', N'POLOBAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (387, N'04', N'01', N'15', N'QUEQUEÑA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (388, N'04', N'01', N'16', N'SABANDIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (389, N'04', N'01', N'17', N'SACHACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (390, N'04', N'01', N'18', N'SAN JUAN DE SIGUAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (391, N'04', N'01', N'19', N'SAN JUAN DE TARUCANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (392, N'04', N'01', N'20', N'SANTA ISABEL DE SIGUAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (393, N'04', N'01', N'21', N'SANTA RITA DE SIGUAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (394, N'04', N'01', N'22', N'SOCABAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (395, N'04', N'01', N'23', N'TIABAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (396, N'04', N'01', N'24', N'UCHUMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (397, N'04', N'01', N'25', N'VITOR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (398, N'04', N'01', N'26', N'YANAHUARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (399, N'04', N'01', N'27', N'YARABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (400, N'04', N'01', N'28', N'YURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (401, N'04', N'01', N'29', N'JOSE LUIS BUSTAMANTE Y RIVERO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (402, N'04', N'02', N'00', N'CAMANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (403, N'04', N'02', N'01', N'CAMANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (404, N'04', N'02', N'02', N'JOSE MARIA QUIMPER', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (405, N'04', N'02', N'03', N'MARIANO NICOLAS VALCARCEL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (406, N'04', N'02', N'04', N'MARISCAL CACERES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (407, N'04', N'02', N'05', N'NICOLAS DE PIEROLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (408, N'04', N'02', N'06', N'OCOÑA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (409, N'04', N'02', N'07', N'QUILCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (410, N'04', N'02', N'08', N'SAMUEL PASTOR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (411, N'04', N'03', N'00', N'CARAVELI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (412, N'04', N'03', N'01', N'CARAVELI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (413, N'04', N'03', N'02', N'ACARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (414, N'04', N'03', N'03', N'ATICO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (415, N'04', N'03', N'04', N'ATIQUIPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (416, N'04', N'03', N'05', N'BELLA UNION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (417, N'04', N'03', N'06', N'CAHUACHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (418, N'04', N'03', N'07', N'CHALA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (419, N'04', N'03', N'08', N'CHAPARRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (420, N'04', N'03', N'09', N'HUANUHUANU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (421, N'04', N'03', N'10', N'JAQUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (422, N'04', N'03', N'11', N'LOMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (423, N'04', N'03', N'12', N'QUICACHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (424, N'04', N'03', N'13', N'YAUCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (425, N'04', N'04', N'00', N'CASTILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (426, N'04', N'04', N'01', N'APLAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (427, N'04', N'04', N'02', N'ANDAGUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (428, N'04', N'04', N'03', N'AYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (429, N'04', N'04', N'04', N'CHACHAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (430, N'04', N'04', N'05', N'CHILCAYMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (431, N'04', N'04', N'06', N'CHOCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (432, N'04', N'04', N'07', N'HUANCARQUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (433, N'04', N'04', N'08', N'MACHAGUAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (434, N'04', N'04', N'09', N'ORCOPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (435, N'04', N'04', N'10', N'PAMPACOLCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (436, N'04', N'04', N'11', N'TIPAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (437, N'04', N'04', N'12', N'UÑON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (438, N'04', N'04', N'13', N'URACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (439, N'04', N'04', N'14', N'VIRACO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (440, N'04', N'05', N'00', N'CAYLLOMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (441, N'04', N'05', N'01', N'CHIVAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (442, N'04', N'05', N'02', N'ACHOMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (443, N'04', N'05', N'03', N'CABANACONDE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (444, N'04', N'05', N'04', N'CALLALLI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (445, N'04', N'05', N'05', N'CAYLLOMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (446, N'04', N'05', N'06', N'COPORAQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (447, N'04', N'05', N'07', N'HUAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (448, N'04', N'05', N'08', N'HUANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (449, N'04', N'05', N'09', N'ICHUPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (450, N'04', N'05', N'10', N'LARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (451, N'04', N'05', N'11', N'LLUTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (452, N'04', N'05', N'12', N'MACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (453, N'04', N'05', N'13', N'MADRIGAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (454, N'04', N'05', N'14', N'SAN ANTONIO DE CHUCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (455, N'04', N'05', N'15', N'SIBAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (456, N'04', N'05', N'16', N'TAPAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (457, N'04', N'05', N'17', N'TISCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (458, N'04', N'05', N'18', N'TUTI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (459, N'04', N'05', N'19', N'YANQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (460, N'04', N'05', N'20', N'MAJES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (461, N'04', N'06', N'00', N'CONDESUYOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (462, N'04', N'06', N'01', N'CHUQUIBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (463, N'04', N'06', N'02', N'ANDARAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (464, N'04', N'06', N'03', N'CAYARANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (465, N'04', N'06', N'04', N'CHICHAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (466, N'04', N'06', N'05', N'IRAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (467, N'04', N'06', N'06', N'RIO GRANDE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (468, N'04', N'06', N'07', N'SALAMANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (469, N'04', N'06', N'08', N'YANAQUIHUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (470, N'04', N'07', N'00', N'ISLAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (471, N'04', N'07', N'01', N'MOLLENDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (472, N'04', N'07', N'02', N'COCACHACRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (473, N'04', N'07', N'03', N'DEAN VALDIVIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (474, N'04', N'07', N'04', N'ISLAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (475, N'04', N'07', N'05', N'MEJIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (476, N'04', N'07', N'06', N'PUNTA DE BOMBON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (477, N'04', N'08', N'00', N'LA UNION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (478, N'04', N'08', N'01', N'COTAHUASI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (479, N'04', N'08', N'02', N'ALCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (480, N'04', N'08', N'03', N'CHARCANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (481, N'04', N'08', N'04', N'HUAYNACOTAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (482, N'04', N'08', N'05', N'PAMPAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (483, N'04', N'08', N'06', N'PUYCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (484, N'04', N'08', N'07', N'QUECHUALLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (485, N'04', N'08', N'08', N'SAYLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (486, N'04', N'08', N'09', N'TAURIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (487, N'04', N'08', N'10', N'TOMEPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (488, N'04', N'08', N'11', N'TORO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (489, N'05', N'00', N'00', N'AYACUCHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (490, N'05', N'01', N'00', N'HUAMANGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (491, N'05', N'01', N'01', N'AYACUCHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (492, N'05', N'01', N'02', N'ACOCRO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (493, N'05', N'01', N'03', N'ACOS VINCHOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (494, N'05', N'01', N'04', N'CARMEN ALTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (495, N'05', N'01', N'05', N'CHIARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (496, N'05', N'01', N'06', N'OCROS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (497, N'05', N'01', N'07', N'PACAYCASA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (498, N'05', N'01', N'08', N'QUINUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (499, N'05', N'01', N'09', N'SAN JOSE DE TICLLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (500, N'05', N'01', N'10', N'SAN JUAN BAUTISTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (501, N'05', N'01', N'11', N'SANTIAGO DE PISCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (502, N'05', N'01', N'12', N'SOCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (503, N'05', N'01', N'13', N'TAMBILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (504, N'05', N'01', N'14', N'VINCHOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (505, N'05', N'01', N'15', N'JESUS NAZARENO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (506, N'05', N'02', N'00', N'CANGALLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (507, N'05', N'02', N'01', N'CANGALLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (508, N'05', N'02', N'02', N'CHUSCHI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (509, N'05', N'02', N'03', N'LOS MOROCHUCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (510, N'05', N'02', N'04', N'MARIA PARADO DE BELLIDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (511, N'05', N'02', N'05', N'PARAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (512, N'05', N'02', N'06', N'TOTOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (513, N'05', N'03', N'00', N'HUANCA SANCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (514, N'05', N'03', N'01', N'SANCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (515, N'05', N'03', N'02', N'CARAPO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (516, N'05', N'03', N'03', N'SACSAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (517, N'05', N'03', N'04', N'SANTIAGO DE LUCANAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (518, N'05', N'04', N'00', N'HUANTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (519, N'05', N'04', N'01', N'HUANTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (520, N'05', N'04', N'02', N'AYAHUANCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (521, N'05', N'04', N'03', N'HUAMANGUILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (522, N'05', N'04', N'04', N'IGUAIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (523, N'05', N'04', N'05', N'LURICOCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (524, N'05', N'04', N'06', N'SANTILLANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (525, N'05', N'04', N'07', N'SIVIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (526, N'05', N'04', N'08', N'LLOCHEGUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (527, N'05', N'05', N'00', N'LA MAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (528, N'05', N'05', N'01', N'SAN MIGUEL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (529, N'05', N'05', N'02', N'ANCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (530, N'05', N'05', N'03', N'AYNA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (531, N'05', N'05', N'04', N'CHILCAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (532, N'05', N'05', N'05', N'CHUNGUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (533, N'05', N'05', N'06', N'LUIS CARRANZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (534, N'05', N'05', N'07', N'SANTA ROSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (535, N'05', N'05', N'08', N'TAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (536, N'05', N'06', N'00', N'LUCANAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (537, N'05', N'06', N'01', N'PUQUIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (538, N'05', N'06', N'02', N'AUCARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (539, N'05', N'06', N'03', N'CABANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (540, N'05', N'06', N'04', N'CARMEN SALCEDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (541, N'05', N'06', N'05', N'CHAVIÑA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (542, N'05', N'06', N'06', N'CHIPAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (543, N'05', N'06', N'07', N'HUAC-HUAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (544, N'05', N'06', N'08', N'LARAMATE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (545, N'05', N'06', N'09', N'LEONCIO PRADO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (546, N'05', N'06', N'10', N'LLAUTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (547, N'05', N'06', N'11', N'LUCANAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (548, N'05', N'06', N'12', N'OCAÑA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (549, N'05', N'06', N'13', N'OTOCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (550, N'05', N'06', N'14', N'SAISA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (551, N'05', N'06', N'15', N'SAN CRISTOBAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (552, N'05', N'06', N'16', N'SAN JUAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (553, N'05', N'06', N'17', N'SAN PEDRO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (554, N'05', N'06', N'18', N'SAN PEDRO DE PALCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (555, N'05', N'06', N'19', N'SANCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (556, N'05', N'06', N'20', N'SANTA ANA DE HUAYCAHUACHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (557, N'05', N'06', N'21', N'SANTA LUCIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (558, N'05', N'07', N'00', N'PARINACOCHAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (559, N'05', N'07', N'01', N'CORACORA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (560, N'05', N'07', N'02', N'CHUMPI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (561, N'05', N'07', N'03', N'CORONEL CASTAÑEDA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (562, N'05', N'07', N'04', N'PACAPAUSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (563, N'05', N'07', N'05', N'PULLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (564, N'05', N'07', N'06', N'PUYUSCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (565, N'05', N'07', N'07', N'SAN FRANCISCO DE RAVACAYCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (566, N'05', N'07', N'08', N'UPAHUACHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (567, N'05', N'08', N'00', N'PAUCAR DEL SARA SARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (568, N'05', N'08', N'01', N'PAUSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (569, N'05', N'08', N'02', N'COLTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (570, N'05', N'08', N'03', N'CORCULLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (571, N'05', N'08', N'04', N'LAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (572, N'05', N'08', N'05', N'MARCABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (573, N'05', N'08', N'06', N'OYOLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (574, N'05', N'08', N'07', N'PARARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (575, N'05', N'08', N'08', N'SAN JAVIER DE ALPABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (576, N'05', N'08', N'09', N'SAN JOSE DE USHUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (577, N'05', N'08', N'10', N'SARA SARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (578, N'05', N'09', N'00', N'SUCRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (579, N'05', N'09', N'01', N'QUEROBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (580, N'05', N'09', N'02', N'BELEN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (581, N'05', N'09', N'03', N'CHALCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (582, N'05', N'09', N'04', N'CHILCAYOC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (583, N'05', N'09', N'05', N'HUACAÑA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (584, N'05', N'09', N'06', N'MORCOLLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (585, N'05', N'09', N'07', N'PAICO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (586, N'05', N'09', N'08', N'SAN PEDRO DE LARCAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (587, N'05', N'09', N'09', N'SAN SALVADOR DE QUIJE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (588, N'05', N'09', N'10', N'SANTIAGO DE PAUCARAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (589, N'05', N'09', N'11', N'SORAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (590, N'05', N'10', N'00', N'VICTOR FAJARDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (591, N'05', N'10', N'01', N'HUANCAPI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (592, N'05', N'10', N'02', N'ALCAMENCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (593, N'05', N'10', N'03', N'APONGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (594, N'05', N'10', N'04', N'ASQUIPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (595, N'05', N'10', N'05', N'CANARIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (596, N'05', N'10', N'06', N'CAYARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (597, N'05', N'10', N'07', N'COLCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (598, N'05', N'10', N'08', N'HUAMANQUIQUIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (599, N'05', N'10', N'09', N'HUANCARAYLLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (600, N'05', N'10', N'10', N'HUAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (601, N'05', N'10', N'11', N'SARHUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (602, N'05', N'10', N'12', N'VILCANCHOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (603, N'05', N'11', N'00', N'VILCAS HUAMAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (604, N'05', N'11', N'01', N'VILCAS HUAMAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (605, N'05', N'11', N'02', N'ACCOMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (606, N'05', N'11', N'03', N'CARHUANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (607, N'05', N'11', N'04', N'CONCEPCION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (608, N'05', N'11', N'05', N'HUAMBALPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (609, N'05', N'11', N'06', N'INDEPENDENCIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (610, N'05', N'11', N'07', N'SAURAMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (611, N'05', N'11', N'08', N'VISCHONGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (612, N'06', N'00', N'00', N'CAJAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (613, N'06', N'01', N'00', N'CAJAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (614, N'06', N'01', N'01', N'CAJAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (615, N'06', N'01', N'02', N'ASUNCION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (616, N'06', N'01', N'03', N'CHETILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (617, N'06', N'01', N'04', N'COSPAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (618, N'06', N'01', N'05', N'ENCAÑADA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (619, N'06', N'01', N'06', N'JESUS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (620, N'06', N'01', N'07', N'LLACANORA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (621, N'06', N'01', N'08', N'LOS BAÑOS DEL INCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (622, N'06', N'01', N'09', N'MAGDALENA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (623, N'06', N'01', N'10', N'MATARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (624, N'06', N'01', N'11', N'NAMORA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (625, N'06', N'01', N'12', N'SAN JUAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (626, N'06', N'02', N'00', N'CAJABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (627, N'06', N'02', N'01', N'CAJABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (628, N'06', N'02', N'02', N'CACHACHI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (629, N'06', N'02', N'03', N'CONDEBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (630, N'06', N'02', N'04', N'SITACOCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (631, N'06', N'03', N'00', N'CELENDIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (632, N'06', N'03', N'01', N'CELENDIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (633, N'06', N'03', N'02', N'CHUMUCH', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (634, N'06', N'03', N'03', N'CORTEGANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (635, N'06', N'03', N'04', N'HUASMIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (636, N'06', N'03', N'05', N'JORGE CHAVEZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (637, N'06', N'03', N'06', N'JOSE GALVEZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (638, N'06', N'03', N'07', N'MIGUEL IGLESIAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (639, N'06', N'03', N'08', N'OXAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (640, N'06', N'03', N'09', N'SOROCHUCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (641, N'06', N'03', N'10', N'SUCRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (642, N'06', N'03', N'11', N'UTCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (643, N'06', N'03', N'12', N'LA LIBERTAD DE PALLAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (644, N'06', N'04', N'00', N'CHOTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (645, N'06', N'04', N'01', N'CHOTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (646, N'06', N'04', N'02', N'ANGUIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (647, N'06', N'04', N'03', N'CHADIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (648, N'06', N'04', N'04', N'CHIGUIRIP', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (649, N'06', N'04', N'05', N'CHIMBAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (650, N'06', N'04', N'06', N'CHOROPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (651, N'06', N'04', N'07', N'COCHABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (652, N'06', N'04', N'08', N'CONCHAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (653, N'06', N'04', N'09', N'HUAMBOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (654, N'06', N'04', N'10', N'LAJAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (655, N'06', N'04', N'11', N'LLAMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (656, N'06', N'04', N'12', N'MIRACOSTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (657, N'06', N'04', N'13', N'PACCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (658, N'06', N'04', N'14', N'PION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (659, N'06', N'04', N'15', N'QUEROCOTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (660, N'06', N'04', N'16', N'SAN JUAN DE LICUPIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (661, N'06', N'04', N'17', N'TACABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (662, N'06', N'04', N'18', N'TOCMOCHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (663, N'06', N'04', N'19', N'CHALAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (664, N'06', N'05', N'00', N'CONTUMAZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (665, N'06', N'05', N'01', N'CONTUMAZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (666, N'06', N'05', N'02', N'CHILETE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (667, N'06', N'05', N'03', N'CUPISNIQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (668, N'06', N'05', N'04', N'GUZMANGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (669, N'06', N'05', N'05', N'SAN BENITO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (670, N'06', N'05', N'06', N'SANTA CRUZ DE TOLED', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (671, N'06', N'05', N'07', N'TANTARICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (672, N'06', N'05', N'08', N'YONAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (673, N'06', N'06', N'00', N'CUTERVO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (674, N'06', N'06', N'01', N'CUTERVO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (675, N'06', N'06', N'02', N'CALLAYUC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (676, N'06', N'06', N'03', N'CHOROS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (677, N'06', N'06', N'04', N'CUJILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (678, N'06', N'06', N'05', N'LA RAMADA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (679, N'06', N'06', N'06', N'PIMPINGOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (680, N'06', N'06', N'07', N'QUEROCOTILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (681, N'06', N'06', N'08', N'SAN ANDRES DE CUTERVO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (682, N'06', N'06', N'09', N'SAN JUAN DE CUTERVO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (683, N'06', N'06', N'10', N'SAN LUIS DE LUCMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (684, N'06', N'06', N'11', N'SANTA CRUZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (685, N'06', N'06', N'12', N'SANTO DOMINGO DE LA CAPILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (686, N'06', N'06', N'13', N'SANTO TOMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (687, N'06', N'06', N'14', N'SOCOTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (688, N'06', N'06', N'15', N'TORIBIO CASANOVA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (689, N'06', N'07', N'00', N'HUALGAYOC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (690, N'06', N'07', N'01', N'BAMBAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (691, N'06', N'07', N'02', N'CHUGUR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (692, N'06', N'07', N'03', N'HUALGAYOC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (693, N'06', N'08', N'00', N'JAEN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (694, N'06', N'08', N'01', N'JAEN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (695, N'06', N'08', N'02', N'BELLAVISTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (696, N'06', N'08', N'03', N'CHONTALI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (697, N'06', N'08', N'04', N'COLASAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (698, N'06', N'08', N'05', N'HUABAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (699, N'06', N'08', N'06', N'LAS PIRIAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (700, N'06', N'08', N'07', N'POMAHUACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (701, N'06', N'08', N'08', N'PUCARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (702, N'06', N'08', N'09', N'SALLIQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (703, N'06', N'08', N'10', N'SAN FELIPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (704, N'06', N'08', N'11', N'SAN JOSE DEL ALTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (705, N'06', N'08', N'12', N'SANTA ROSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (706, N'06', N'09', N'00', N'SAN IGNACIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (707, N'06', N'09', N'01', N'SAN IGNACIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (708, N'06', N'09', N'02', N'CHIRINOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (709, N'06', N'09', N'03', N'HUARANGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (710, N'06', N'09', N'04', N'LA COIPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (711, N'06', N'09', N'05', N'NAMBALLE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (712, N'06', N'09', N'06', N'SAN JOSE DE LOURDES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (713, N'06', N'09', N'07', N'TABACONAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (714, N'06', N'10', N'00', N'SAN MARCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (715, N'06', N'10', N'01', N'PEDRO GALVEZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (716, N'06', N'10', N'02', N'CHANCAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (717, N'06', N'10', N'03', N'EDUARDO VILLANUEVA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (718, N'06', N'10', N'04', N'GREGORIO PITA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (719, N'06', N'10', N'05', N'ICHOCAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (720, N'06', N'10', N'06', N'JOSE MANUEL QUIROZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (721, N'06', N'10', N'07', N'JOSE SABOGAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (722, N'06', N'11', N'00', N'SAN MIGUEL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (723, N'06', N'11', N'01', N'SAN MIGUEL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (724, N'06', N'11', N'02', N'BOLIVAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (725, N'06', N'11', N'03', N'CALQUIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (726, N'06', N'11', N'04', N'CATILLUC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (727, N'06', N'11', N'05', N'EL PRADO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (728, N'06', N'11', N'06', N'LA FLORIDA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (729, N'06', N'11', N'07', N'LLAPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (730, N'06', N'11', N'08', N'NANCHOC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (731, N'06', N'11', N'09', N'NIEPOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (732, N'06', N'11', N'10', N'SAN GREGORIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (733, N'06', N'11', N'11', N'SAN SILVESTRE DE COCHAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (734, N'06', N'11', N'12', N'TONGOD', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (735, N'06', N'11', N'13', N'UNION AGUA BLANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (736, N'06', N'12', N'00', N'SAN PABLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (737, N'06', N'12', N'01', N'SAN PABLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (738, N'06', N'12', N'02', N'SAN BERNARDINO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (739, N'06', N'12', N'03', N'SAN LUIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (740, N'06', N'12', N'04', N'TUMBADEN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (741, N'06', N'13', N'00', N'SANTA CRUZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (742, N'06', N'13', N'01', N'SANTA CRUZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (743, N'06', N'13', N'02', N'ANDABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (744, N'06', N'13', N'03', N'CATACHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (745, N'06', N'13', N'04', N'CHANCAYBAÑOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (746, N'06', N'13', N'05', N'LA ESPERANZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (747, N'06', N'13', N'06', N'NINABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (748, N'06', N'13', N'07', N'PULAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (749, N'06', N'13', N'08', N'SAUCEPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (750, N'06', N'13', N'09', N'SEXI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (751, N'06', N'13', N'10', N'UTICYACU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (752, N'06', N'13', N'11', N'YAUYUCAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (753, N'07', N'00', N'00', N'CALLAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (754, N'07', N'01', N'00', N'CALLAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (755, N'07', N'01', N'01', N'CALLAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (756, N'07', N'01', N'02', N'BELLAVISTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (757, N'07', N'01', N'03', N'CARMEN DE LA LEGUA REYNOSO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (758, N'07', N'01', N'04', N'LA PERLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (759, N'07', N'01', N'05', N'LA PUNTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (760, N'07', N'01', N'06', N'VENTANILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (761, N'08', N'00', N'00', N'CUSCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (762, N'08', N'01', N'00', N'CUSCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (763, N'08', N'01', N'01', N'CUSCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (764, N'08', N'01', N'02', N'CCORCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (765, N'08', N'01', N'03', N'POROY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (766, N'08', N'01', N'04', N'SAN JERONIMO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (767, N'08', N'01', N'05', N'SAN SEBASTIAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (768, N'08', N'01', N'06', N'SANTIAGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (769, N'08', N'01', N'07', N'SAYLLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (770, N'08', N'01', N'08', N'WANCHAQ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (771, N'08', N'02', N'00', N'ACOMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (772, N'08', N'02', N'01', N'ACOMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (773, N'08', N'02', N'02', N'ACOPIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (774, N'08', N'02', N'03', N'ACOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (775, N'08', N'02', N'04', N'MOSOC LLACTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (776, N'08', N'02', N'05', N'POMACANCHI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (777, N'08', N'02', N'06', N'RONDOCAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (778, N'08', N'02', N'07', N'SANGARARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (779, N'08', N'03', N'00', N'ANTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (780, N'08', N'03', N'01', N'ANTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (781, N'08', N'03', N'02', N'ANCAHUASI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (782, N'08', N'03', N'03', N'CACHIMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (783, N'08', N'03', N'04', N'CHINCHAYPUJIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (784, N'08', N'03', N'05', N'HUAROCONDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (785, N'08', N'03', N'06', N'LIMATAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (786, N'08', N'03', N'07', N'MOLLEPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (787, N'08', N'03', N'08', N'PUCYURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (788, N'08', N'03', N'09', N'ZURITE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (789, N'08', N'04', N'00', N'CALCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (790, N'08', N'04', N'01', N'CALCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (791, N'08', N'04', N'02', N'COYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (792, N'08', N'04', N'03', N'LAMAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (793, N'08', N'04', N'04', N'LARES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (794, N'08', N'04', N'05', N'PISAC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (795, N'08', N'04', N'06', N'SAN SALVADOR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (796, N'08', N'04', N'07', N'TARAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (797, N'08', N'04', N'08', N'YANATILE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (798, N'08', N'05', N'00', N'CANAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (799, N'08', N'05', N'01', N'YANAOCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (800, N'08', N'05', N'02', N'CHECCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (801, N'08', N'05', N'03', N'KUNTURKANKI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (802, N'08', N'05', N'04', N'LANGUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (803, N'08', N'05', N'05', N'LAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (804, N'08', N'05', N'06', N'PAMPAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (805, N'08', N'05', N'07', N'QUEHUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (806, N'08', N'05', N'08', N'TUPAC AMARU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (807, N'08', N'06', N'00', N'CANCHIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (808, N'08', N'06', N'01', N'SICUANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (809, N'08', N'06', N'02', N'CHECACUPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (810, N'08', N'06', N'03', N'COMBAPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (811, N'08', N'06', N'04', N'MARANGANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (812, N'08', N'06', N'05', N'PITUMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (813, N'08', N'06', N'06', N'SAN PABLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (814, N'08', N'06', N'07', N'SAN PEDRO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (815, N'08', N'06', N'08', N'TINTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (816, N'08', N'07', N'00', N'CHUMBIVILCAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (817, N'08', N'07', N'01', N'SANTO TOMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (818, N'08', N'07', N'02', N'CAPACMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (819, N'08', N'07', N'03', N'CHAMACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (820, N'08', N'07', N'04', N'COLQUEMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (821, N'08', N'07', N'05', N'LIVITACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (822, N'08', N'07', N'06', N'LLUSCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (823, N'08', N'07', N'07', N'QUIÑOTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (824, N'08', N'07', N'08', N'VELILLE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (825, N'08', N'08', N'00', N'ESPINAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (826, N'08', N'08', N'01', N'ESPINAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (827, N'08', N'08', N'02', N'CONDOROMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (828, N'08', N'08', N'03', N'COPORAQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (829, N'08', N'08', N'04', N'OCORURO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (830, N'08', N'08', N'05', N'PALLPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (831, N'08', N'08', N'06', N'PICHIGUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (832, N'08', N'08', N'07', N'SUYCKUTAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (833, N'08', N'08', N'08', N'ALTO PICHIGUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (834, N'08', N'09', N'00', N'LA CONVENCION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (835, N'08', N'09', N'01', N'SANTA ANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (836, N'08', N'09', N'02', N'ECHARATE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (837, N'08', N'09', N'03', N'HUAYOPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (838, N'08', N'09', N'04', N'MARANURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (839, N'08', N'09', N'05', N'OCOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (840, N'08', N'09', N'06', N'QUELLOUNO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (841, N'08', N'09', N'07', N'KIMBIRI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (842, N'08', N'09', N'08', N'SANTA TERESA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (843, N'08', N'09', N'09', N'VILCABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (844, N'08', N'09', N'10', N'PICHARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (845, N'08', N'10', N'00', N'PARURO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (846, N'08', N'10', N'01', N'PARURO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (847, N'08', N'10', N'02', N'ACCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (848, N'08', N'10', N'03', N'CCAPI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (849, N'08', N'10', N'04', N'COLCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (850, N'08', N'10', N'05', N'HUANOQUITE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (851, N'08', N'10', N'06', N'OMACHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (852, N'08', N'10', N'07', N'PACCARITAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (853, N'08', N'10', N'08', N'PILLPINTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (854, N'08', N'10', N'09', N'YAURISQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (855, N'08', N'11', N'00', N'PAUCARTAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (856, N'08', N'11', N'01', N'PAUCARTAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (857, N'08', N'11', N'02', N'CAICAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (858, N'08', N'11', N'03', N'CHALLABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (859, N'08', N'11', N'04', N'COLQUEPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (860, N'08', N'11', N'05', N'HUANCARANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (861, N'08', N'11', N'06', N'KOSÑIPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (862, N'08', N'12', N'00', N'QUISPICANCHI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (863, N'08', N'12', N'01', N'URCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (864, N'08', N'12', N'02', N'ANDAHUAYLILLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (865, N'08', N'12', N'03', N'CAMANTI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (866, N'08', N'12', N'04', N'CCARHUAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (867, N'08', N'12', N'05', N'CCATCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (868, N'08', N'12', N'06', N'CUSIPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (869, N'08', N'12', N'07', N'HUARO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (870, N'08', N'12', N'08', N'LUCRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (871, N'08', N'12', N'09', N'MARCAPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (872, N'08', N'12', N'10', N'OCONGATE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (873, N'08', N'12', N'11', N'OROPESA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (874, N'08', N'12', N'12', N'QUIQUIJANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (875, N'08', N'13', N'00', N'URUBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (876, N'08', N'13', N'01', N'URUBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (877, N'08', N'13', N'02', N'CHINCHERO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (878, N'08', N'13', N'03', N'HUAYLLABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (879, N'08', N'13', N'04', N'MACHUPICCHU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (880, N'08', N'13', N'05', N'MARAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (881, N'08', N'13', N'06', N'OLLANTAYTAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (882, N'08', N'13', N'07', N'YUCAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (883, N'09', N'00', N'00', N'HUANCAVELICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (884, N'09', N'01', N'00', N'HUANCAVELICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (885, N'09', N'01', N'01', N'HUANCAVELICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (886, N'09', N'01', N'02', N'ACOBAMBILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (887, N'09', N'01', N'03', N'ACORIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (888, N'09', N'01', N'04', N'CONAYCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (889, N'09', N'01', N'05', N'CUENCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (890, N'09', N'01', N'06', N'HUACHOCOLPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (891, N'09', N'01', N'07', N'HUAYLLAHUARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (892, N'09', N'01', N'08', N'IZCUCHACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (893, N'09', N'01', N'09', N'LARIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (894, N'09', N'01', N'10', N'MANTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (895, N'09', N'01', N'11', N'MARISCAL CACERES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (896, N'09', N'01', N'12', N'MOYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (897, N'09', N'01', N'13', N'NUEVO OCCORO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (898, N'09', N'01', N'14', N'PALCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (899, N'09', N'01', N'15', N'PILCHACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (900, N'09', N'01', N'16', N'VILCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (901, N'09', N'01', N'17', N'YAULI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (902, N'09', N'01', N'18', N'ASCENSION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (903, N'09', N'01', N'19', N'HUANDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (904, N'09', N'02', N'00', N'ACOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (905, N'09', N'02', N'01', N'ACOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (906, N'09', N'02', N'02', N'ANDABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (907, N'09', N'02', N'03', N'ANTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (908, N'09', N'02', N'04', N'CAJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (909, N'09', N'02', N'05', N'MARCAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (910, N'09', N'02', N'06', N'PAUCARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (911, N'09', N'02', N'07', N'POMACOCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (912, N'09', N'02', N'08', N'ROSARIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (913, N'09', N'03', N'00', N'ANGARAES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (914, N'09', N'03', N'01', N'LIRCAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (915, N'09', N'03', N'02', N'ANCHONGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (916, N'09', N'03', N'03', N'CALLANMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (917, N'09', N'03', N'04', N'CCOCHACCASA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (918, N'09', N'03', N'05', N'CHINCHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (919, N'09', N'03', N'06', N'CONGALLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (920, N'09', N'03', N'07', N'HUANCA-HUANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (921, N'09', N'03', N'08', N'HUAYLLAY GRANDE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (922, N'09', N'03', N'09', N'JULCAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (923, N'09', N'03', N'10', N'SAN ANTONIO DE ANTAPARCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (924, N'09', N'03', N'11', N'SANTO TOMAS DE PATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (925, N'09', N'03', N'12', N'SECCLLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (926, N'09', N'04', N'00', N'CASTROVIRREYNA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (927, N'09', N'04', N'01', N'CASTROVIRREYNA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (928, N'09', N'04', N'02', N'ARMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (929, N'09', N'04', N'03', N'AURAHUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (930, N'09', N'04', N'04', N'CAPILLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (931, N'09', N'04', N'05', N'CHUPAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (932, N'09', N'04', N'06', N'COCAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (933, N'09', N'04', N'07', N'HUACHOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (934, N'09', N'04', N'08', N'HUAMATAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (935, N'09', N'04', N'09', N'MOLLEPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (936, N'09', N'04', N'10', N'SAN JUAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (937, N'09', N'04', N'11', N'SANTA ANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (938, N'09', N'04', N'12', N'TANTARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (939, N'09', N'04', N'13', N'TICRAPO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (940, N'09', N'05', N'00', N'CHURCAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (941, N'09', N'05', N'01', N'CHURCAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (942, N'09', N'05', N'02', N'ANCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (943, N'09', N'05', N'03', N'CHINCHIHUASI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (944, N'09', N'05', N'04', N'EL CARMEN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (945, N'09', N'05', N'05', N'LA MERCED', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (946, N'09', N'05', N'06', N'LOCROJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (947, N'09', N'05', N'07', N'PAUCARBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (948, N'09', N'05', N'08', N'SAN MIGUEL DE MAYOCC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (949, N'09', N'05', N'09', N'SAN PEDRO DE CORIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (950, N'09', N'05', N'10', N'PACHAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (951, N'09', N'06', N'00', N'HUAYTARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (952, N'09', N'06', N'01', N'HUAYTARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (953, N'09', N'06', N'02', N'AYAVI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (954, N'09', N'06', N'03', N'CORDOVA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (955, N'09', N'06', N'04', N'HUAYACUNDO ARMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (956, N'09', N'06', N'05', N'LARAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (957, N'09', N'06', N'06', N'OCOYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (958, N'09', N'06', N'07', N'PILPICHACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (959, N'09', N'06', N'08', N'QUERCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (960, N'09', N'06', N'09', N'QUITO-ARMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (961, N'09', N'06', N'10', N'SAN ANTONIO DE CUSICANCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (962, N'09', N'06', N'11', N'SAN FRANCISCO DE SANGAYAICO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (963, N'09', N'06', N'12', N'SAN ISIDRO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (964, N'09', N'06', N'13', N'SANTIAGO DE CHOCORVOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (965, N'09', N'06', N'14', N'SANTIAGO DE QUIRAHUARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (966, N'09', N'06', N'15', N'SANTO DOMINGO DE CAPILLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (967, N'09', N'06', N'16', N'TAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (968, N'09', N'07', N'00', N'TAYACAJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (969, N'09', N'07', N'01', N'PAMPAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (970, N'09', N'07', N'02', N'ACOSTAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (971, N'09', N'07', N'03', N'ACRAQUIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (972, N'09', N'07', N'04', N'AHUAYCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (973, N'09', N'07', N'05', N'COLCABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (974, N'09', N'07', N'06', N'DANIEL HERNANDEZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (975, N'09', N'07', N'07', N'HUACHOCOLPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (976, N'09', N'07', N'09', N'HUARIBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (977, N'09', N'07', N'10', N'ÑAHUIMPUQUIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (978, N'09', N'07', N'11', N'PAZOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (979, N'09', N'07', N'13', N'QUISHUAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (980, N'09', N'07', N'14', N'SALCABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (981, N'09', N'07', N'15', N'SALCAHUASI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (982, N'09', N'07', N'16', N'SAN MARCOS DE ROCCHAC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (983, N'09', N'07', N'17', N'SURCUBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (984, N'09', N'07', N'18', N'TINTAY PUNCU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (985, N'10', N'00', N'00', N'HUANUCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (986, N'10', N'01', N'00', N'HUANUCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (987, N'10', N'01', N'01', N'HUANUCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (988, N'10', N'01', N'02', N'AMARILIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (989, N'10', N'01', N'03', N'CHINCHAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (990, N'10', N'01', N'04', N'CHURUBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (991, N'10', N'01', N'05', N'MARGOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (992, N'10', N'01', N'06', N'QUISQUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (993, N'10', N'01', N'07', N'SAN FRANCISCO DE CAYRAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (994, N'10', N'01', N'08', N'SAN PEDRO DE CHAULAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (995, N'10', N'01', N'09', N'SANTA MARIA DEL VALLE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (996, N'10', N'01', N'10', N'YARUMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (997, N'10', N'01', N'11', N'PILLCO MARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (998, N'10', N'02', N'00', N'AMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (999, N'10', N'02', N'01', N'AMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1000, N'10', N'02', N'02', N'CAYNA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1001, N'10', N'02', N'03', N'COLPAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1002, N'10', N'02', N'04', N'CONCHAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1003, N'10', N'02', N'05', N'HUACAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1004, N'10', N'02', N'06', N'SAN FRANCISCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1005, N'10', N'02', N'07', N'SAN RAFAEL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1006, N'10', N'02', N'08', N'TOMAY KICHWA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1007, N'10', N'03', N'00', N'DOS DE MAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1008, N'10', N'03', N'01', N'LA UNION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1009, N'10', N'03', N'07', N'CHUQUIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1010, N'10', N'03', N'11', N'MARIAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1011, N'10', N'03', N'13', N'PACHAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1012, N'10', N'03', N'16', N'QUIVILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1013, N'10', N'03', N'17', N'RIPAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1014, N'10', N'03', N'21', N'SHUNQUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1015, N'10', N'03', N'22', N'SILLAPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1016, N'10', N'03', N'23', N'YANAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1017, N'10', N'04', N'00', N'HUACAYBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1018, N'10', N'04', N'01', N'HUACAYBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1019, N'10', N'04', N'02', N'CANCHABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1020, N'10', N'04', N'03', N'COCHABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1021, N'10', N'04', N'04', N'PINRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1022, N'10', N'05', N'00', N'HUAMALIES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1023, N'10', N'05', N'01', N'LLATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1024, N'10', N'05', N'02', N'ARANCAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1025, N'10', N'05', N'03', N'CHAVIN DE PARIARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1026, N'10', N'05', N'04', N'JACAS GRANDE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1027, N'10', N'05', N'05', N'JIRCAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1028, N'10', N'05', N'06', N'MIRAFLORES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1029, N'10', N'05', N'07', N'MONZON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1030, N'10', N'05', N'08', N'PUNCHAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1031, N'10', N'05', N'09', N'PUÑOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1032, N'10', N'05', N'10', N'SINGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1033, N'10', N'05', N'11', N'TANTAMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1034, N'10', N'06', N'00', N'LEONCIO PRADO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1035, N'10', N'06', N'01', N'RUPA-RUPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1036, N'10', N'06', N'02', N'DANIEL ALOMIAS ROBLES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1037, N'10', N'06', N'03', N'HERMILIO VALDIZAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1038, N'10', N'06', N'04', N'JOSE CRESPO Y CASTILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1039, N'10', N'06', N'05', N'LUYANDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1040, N'10', N'06', N'06', N'MARIANO DAMASO BERAUN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1041, N'10', N'07', N'00', N'MARAÑON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1042, N'10', N'07', N'01', N'HUACRACHUCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1043, N'10', N'07', N'02', N'CHOLON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1044, N'10', N'07', N'03', N'SAN BUENAVENTURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1045, N'10', N'08', N'00', N'PACHITEA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1046, N'10', N'08', N'01', N'PANAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1047, N'10', N'08', N'02', N'CHAGLLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1048, N'10', N'08', N'03', N'MOLINO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1049, N'10', N'08', N'04', N'UMARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1050, N'10', N'09', N'00', N'PUERTO INCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1051, N'10', N'09', N'01', N'PUERTO INCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1052, N'10', N'09', N'02', N'CODO DEL POZUZO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1053, N'10', N'09', N'03', N'HONORIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1054, N'10', N'09', N'04', N'TOURNAVISTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1055, N'10', N'09', N'05', N'YUYAPICHIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1056, N'10', N'10', N'00', N'LAURICOCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1057, N'10', N'10', N'01', N'JESUS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1058, N'10', N'10', N'02', N'BAÑOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1059, N'10', N'10', N'03', N'JIVIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1060, N'10', N'10', N'04', N'QUEROPALCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1061, N'10', N'10', N'05', N'RONDOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1062, N'10', N'10', N'06', N'SAN FRANCISCO DE ASIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1063, N'10', N'10', N'07', N'SAN MIGUEL DE CAURI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1064, N'10', N'11', N'00', N'YAROWILCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1065, N'10', N'11', N'01', N'CHAVINILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1066, N'10', N'11', N'02', N'CAHUAC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1067, N'10', N'11', N'03', N'CHACABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1068, N'10', N'11', N'04', N'APARICIO POMARES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1069, N'10', N'11', N'05', N'JACAS CHICO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1070, N'10', N'11', N'06', N'OBAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1071, N'10', N'11', N'07', N'PAMPAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1072, N'10', N'11', N'08', N'CHORAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1073, N'11', N'00', N'00', N'ICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1074, N'11', N'01', N'00', N'ICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1075, N'11', N'01', N'01', N'ICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1076, N'11', N'01', N'02', N'LA TINGUIÑA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1077, N'11', N'01', N'03', N'LOS AQUIJES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1078, N'11', N'01', N'04', N'OCUCAJE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1079, N'11', N'01', N'05', N'PACHACUTEC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1080, N'11', N'01', N'06', N'PARCONA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1081, N'11', N'01', N'07', N'PUEBLO NUEVO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1082, N'11', N'01', N'08', N'SALAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1083, N'11', N'01', N'09', N'SAN JOSE DE LOS MOLINOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1084, N'11', N'01', N'10', N'SAN JUAN BAUTISTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1085, N'11', N'01', N'11', N'SANTIAGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1086, N'11', N'01', N'12', N'SUBTANJALLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1087, N'11', N'01', N'13', N'TATE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1088, N'11', N'01', N'14', N'YAUCA DEL ROSARIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1089, N'11', N'02', N'00', N'CHINCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1090, N'11', N'02', N'01', N'CHINCHA ALTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1091, N'11', N'02', N'02', N'ALTO LARAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1092, N'11', N'02', N'03', N'CHAVIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1093, N'11', N'02', N'04', N'CHINCHA BAJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1094, N'11', N'02', N'05', N'EL CARMEN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1095, N'11', N'02', N'06', N'GROCIO PRADO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1096, N'11', N'02', N'07', N'PUEBLO NUEVO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1097, N'11', N'02', N'08', N'SAN JUAN DE YANAC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1098, N'11', N'02', N'09', N'SAN PEDRO DE HUACARPANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1099, N'11', N'02', N'10', N'SUNAMPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1100, N'11', N'02', N'11', N'TAMBO DE MORA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1101, N'11', N'03', N'00', N'NAZCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1102, N'11', N'03', N'01', N'NAZCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1103, N'11', N'03', N'02', N'CHANGUILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1104, N'11', N'03', N'03', N'EL INGENIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1105, N'11', N'03', N'04', N'MARCONA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1106, N'11', N'03', N'05', N'VISTA ALEGRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1107, N'11', N'04', N'00', N'PALPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1108, N'11', N'04', N'01', N'PALPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1109, N'11', N'04', N'02', N'LLIPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1110, N'11', N'04', N'03', N'RIO GRANDE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1111, N'11', N'04', N'04', N'SANTA CRUZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1112, N'11', N'04', N'05', N'TIBILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1113, N'11', N'05', N'00', N'PISCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1114, N'11', N'05', N'01', N'PISCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1115, N'11', N'05', N'02', N'HUANCANO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1116, N'11', N'05', N'03', N'HUMAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1117, N'11', N'05', N'04', N'INDEPENDENCIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1118, N'11', N'05', N'05', N'PARACAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1119, N'11', N'05', N'06', N'SAN ANDRES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1120, N'11', N'05', N'07', N'SAN CLEMENTE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1121, N'11', N'05', N'08', N'TUPAC AMARU INCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1122, N'12', N'00', N'00', N'JUNIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1123, N'12', N'01', N'00', N'HUANCAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1124, N'12', N'01', N'01', N'HUANCAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1125, N'12', N'01', N'04', N'CARHUACALLANGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1126, N'12', N'01', N'05', N'CHACAPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1127, N'12', N'01', N'06', N'CHICCHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1128, N'12', N'01', N'07', N'CHILCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1129, N'12', N'01', N'08', N'CHONGOS ALTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1130, N'12', N'01', N'11', N'CHUPURO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1131, N'12', N'01', N'12', N'COLCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1132, N'12', N'01', N'13', N'CULLHUAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1133, N'12', N'01', N'14', N'EL TAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1134, N'12', N'01', N'16', N'HUACRAPUQUIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1135, N'12', N'01', N'17', N'HUALHUAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1136, N'12', N'01', N'19', N'HUANCAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1137, N'12', N'01', N'20', N'HUASICANCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1138, N'12', N'01', N'21', N'HUAYUCACHI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1139, N'12', N'01', N'22', N'INGENIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1140, N'12', N'01', N'24', N'PARIAHUANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1141, N'12', N'01', N'25', N'PILCOMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1142, N'12', N'01', N'26', N'PUCARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1143, N'12', N'01', N'27', N'QUICHUAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1144, N'12', N'01', N'28', N'QUILCAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1145, N'12', N'01', N'29', N'SAN AGUSTIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1146, N'12', N'01', N'30', N'SAN JERONIMO DE TUNAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1147, N'12', N'01', N'32', N'SAÑO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1148, N'12', N'01', N'33', N'SAPALLANGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1149, N'12', N'01', N'34', N'SICAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1150, N'12', N'01', N'35', N'SANTO DOMINGO DE ACOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1151, N'12', N'01', N'36', N'VIQUES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1152, N'12', N'02', N'00', N'CONCEPCION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1153, N'12', N'02', N'01', N'CONCEPCION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1154, N'12', N'02', N'02', N'ACO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1155, N'12', N'02', N'03', N'ANDAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1156, N'12', N'02', N'04', N'CHAMBARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1157, N'12', N'02', N'05', N'COCHAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1158, N'12', N'02', N'06', N'COMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1159, N'12', N'02', N'07', N'HEROINAS TOLEDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1160, N'12', N'02', N'08', N'MANZANARES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1161, N'12', N'02', N'09', N'MARISCAL CASTILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1162, N'12', N'02', N'10', N'MATAHUASI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1163, N'12', N'02', N'11', N'MITO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1164, N'12', N'02', N'12', N'NUEVE DE JULIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1165, N'12', N'02', N'13', N'ORCOTUNA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1166, N'12', N'02', N'14', N'SAN JOSE DE QUERO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1167, N'12', N'02', N'15', N'SANTA ROSA DE OCOPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1168, N'12', N'03', N'00', N'CHANCHAMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1169, N'12', N'03', N'01', N'CHANCHAMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1170, N'12', N'03', N'02', N'PERENE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1171, N'12', N'03', N'03', N'PICHANAQUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1172, N'12', N'03', N'04', N'SAN LUIS DE SHUARO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1173, N'12', N'03', N'05', N'SAN RAMON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1174, N'12', N'03', N'06', N'VITOC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1175, N'12', N'04', N'00', N'JAUJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1176, N'12', N'04', N'01', N'JAUJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1177, N'12', N'04', N'02', N'ACOLLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1178, N'12', N'04', N'03', N'APATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1179, N'12', N'04', N'04', N'ATAURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1180, N'12', N'04', N'05', N'CANCHAYLLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1181, N'12', N'04', N'06', N'CURICACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1182, N'12', N'04', N'07', N'EL MANTARO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1183, N'12', N'04', N'08', N'HUAMALI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1184, N'12', N'04', N'09', N'HUARIPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1185, N'12', N'04', N'10', N'HUERTAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1186, N'12', N'04', N'11', N'JANJAILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1187, N'12', N'04', N'12', N'JULCAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1188, N'12', N'04', N'13', N'LEONOR ORDOÑEZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1189, N'12', N'04', N'14', N'LLOCLLAPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1190, N'12', N'04', N'15', N'MARCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1191, N'12', N'04', N'16', N'MASMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1192, N'12', N'04', N'17', N'MASMA CHICCHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1193, N'12', N'04', N'18', N'MOLINOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1194, N'12', N'04', N'19', N'MONOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1195, N'12', N'04', N'20', N'MUQUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1196, N'12', N'04', N'21', N'MUQUIYAUYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1197, N'12', N'04', N'22', N'PACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1198, N'12', N'04', N'23', N'PACCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1199, N'12', N'04', N'24', N'PANCAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1200, N'12', N'04', N'25', N'PARCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1201, N'12', N'04', N'26', N'POMACANCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1202, N'12', N'04', N'27', N'RICRAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1203, N'12', N'04', N'28', N'SAN LORENZO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1204, N'12', N'04', N'29', N'SAN PEDRO DE CHUNAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1205, N'12', N'04', N'30', N'SAUSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1206, N'12', N'04', N'31', N'SINCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1207, N'12', N'04', N'32', N'TUNAN MARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1208, N'12', N'04', N'33', N'YAULI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1209, N'12', N'04', N'34', N'YAUYOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1210, N'12', N'05', N'00', N'JUNIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1211, N'12', N'05', N'01', N'JUNIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1212, N'12', N'05', N'02', N'CARHUAMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1213, N'12', N'05', N'03', N'ONDORES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1214, N'12', N'05', N'04', N'ULCUMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1215, N'12', N'06', N'00', N'SATIPO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1216, N'12', N'06', N'01', N'SATIPO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1217, N'12', N'06', N'02', N'COVIRIALI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1218, N'12', N'06', N'03', N'LLAYLLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1219, N'12', N'06', N'04', N'MAZAMARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1220, N'12', N'06', N'05', N'PAMPA HERMOSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1221, N'12', N'06', N'06', N'PANGOA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1222, N'12', N'06', N'07', N'RIO NEGRO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1223, N'12', N'06', N'08', N'RIO TAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1224, N'12', N'07', N'00', N'TARMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1225, N'12', N'07', N'01', N'TARMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1226, N'12', N'07', N'02', N'ACOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1227, N'12', N'07', N'03', N'HUARICOLCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1228, N'12', N'07', N'04', N'HUASAHUASI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1229, N'12', N'07', N'05', N'LA UNION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1230, N'12', N'07', N'06', N'PALCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1231, N'12', N'07', N'07', N'PALCAMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1232, N'12', N'07', N'08', N'SAN PEDRO DE CAJAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1233, N'12', N'07', N'09', N'TAPO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1234, N'12', N'08', N'00', N'YAULI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1235, N'12', N'08', N'01', N'LA OROYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1236, N'12', N'08', N'02', N'CHACAPALPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1237, N'12', N'08', N'03', N'HUAY-HUAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1238, N'12', N'08', N'04', N'MARCAPOMACOCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1239, N'12', N'08', N'05', N'MOROCOCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1240, N'12', N'08', N'06', N'PACCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1241, N'12', N'08', N'07', N'SANTA BARBARA DE CARHUACAYAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1242, N'12', N'08', N'08', N'SANTA ROSA DE SACCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1243, N'12', N'08', N'09', N'SUITUCANCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1244, N'12', N'08', N'10', N'YAULI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1245, N'12', N'09', N'00', N'CHUPACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1246, N'12', N'09', N'01', N'CHUPACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1247, N'12', N'09', N'02', N'AHUAC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1248, N'12', N'09', N'03', N'CHONGOS BAJO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1249, N'12', N'09', N'04', N'HUACHAC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1250, N'12', N'09', N'05', N'HUAMANCACA CHICO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1251, N'12', N'09', N'06', N'SAN JUAN DE YSCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1252, N'12', N'09', N'07', N'SAN JUAN DE JARPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1253, N'12', N'09', N'08', N'TRES DE DICIEMBRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1254, N'12', N'09', N'09', N'YANACANCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1255, N'13', N'00', N'00', N'LA LIBERTAD', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1256, N'13', N'01', N'00', N'TRUJILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1257, N'13', N'01', N'01', N'TRUJILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1258, N'13', N'01', N'02', N'EL PORVENIR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1259, N'13', N'01', N'03', N'FLORENCIA DE MORA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1260, N'13', N'01', N'04', N'HUANCHACO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1261, N'13', N'01', N'05', N'LA ESPERANZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1262, N'13', N'01', N'06', N'LAREDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1263, N'13', N'01', N'07', N'MOCHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1264, N'13', N'01', N'08', N'POROTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1265, N'13', N'01', N'09', N'SALAVERRY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1266, N'13', N'01', N'10', N'SIMBAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1267, N'13', N'01', N'11', N'VICTOR LARCO HERRERA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1268, N'13', N'02', N'00', N'ASCOPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1269, N'13', N'02', N'01', N'ASCOPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1270, N'13', N'02', N'02', N'CHICAMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1271, N'13', N'02', N'03', N'CHOCOPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1272, N'13', N'02', N'04', N'MAGDALENA DE CAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1273, N'13', N'02', N'05', N'PAIJAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1274, N'13', N'02', N'06', N'RAZURI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1275, N'13', N'02', N'07', N'SANTIAGO DE CAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1276, N'13', N'02', N'08', N'CASA GRANDE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1277, N'13', N'03', N'00', N'BOLIVAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1278, N'13', N'03', N'01', N'BOLIVAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1279, N'13', N'03', N'02', N'BAMBAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1280, N'13', N'03', N'03', N'CONDORMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1281, N'13', N'03', N'04', N'LONGOTEA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1282, N'13', N'03', N'05', N'UCHUMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1283, N'13', N'03', N'06', N'UCUNCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1284, N'13', N'04', N'00', N'CHEPEN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1285, N'13', N'04', N'01', N'CHEPEN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1286, N'13', N'04', N'02', N'PACANGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1287, N'13', N'04', N'03', N'PUEBLO NUEVO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1288, N'13', N'05', N'00', N'JULCAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1289, N'13', N'05', N'01', N'JULCAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1290, N'13', N'05', N'02', N'CALAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1291, N'13', N'05', N'03', N'CARABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1292, N'13', N'05', N'04', N'HUASO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1293, N'13', N'06', N'00', N'OTUZCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1294, N'13', N'06', N'01', N'OTUZCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1295, N'13', N'06', N'02', N'AGALLPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1296, N'13', N'06', N'04', N'CHARAT', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1297, N'13', N'06', N'05', N'HUARANCHAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1298, N'13', N'06', N'06', N'LA CUESTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1299, N'13', N'06', N'08', N'MACHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1300, N'13', N'06', N'10', N'PARANDAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1301, N'13', N'06', N'11', N'SALPO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1302, N'13', N'06', N'13', N'SINSICAP', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1303, N'13', N'06', N'14', N'USQUIL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1304, N'13', N'07', N'00', N'PACASMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1305, N'13', N'07', N'01', N'SAN PEDRO DE LLOC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1306, N'13', N'07', N'02', N'GUADALUPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1307, N'13', N'07', N'03', N'JEQUETEPEQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1308, N'13', N'07', N'04', N'PACASMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1309, N'13', N'07', N'05', N'SAN JOSE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1310, N'13', N'08', N'00', N'PATAZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1311, N'13', N'08', N'01', N'TAYABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1312, N'13', N'08', N'02', N'BULDIBUYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1313, N'13', N'08', N'03', N'CHILLIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1314, N'13', N'08', N'04', N'HUANCASPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1315, N'13', N'08', N'05', N'HUAYLILLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1316, N'13', N'08', N'06', N'HUAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1317, N'13', N'08', N'07', N'ONGON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1318, N'13', N'08', N'08', N'PARCOY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1319, N'13', N'08', N'09', N'PATAZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1320, N'13', N'08', N'10', N'PIAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1321, N'13', N'08', N'11', N'SANTIAGO DE CHALLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1322, N'13', N'08', N'12', N'TAURIJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1323, N'13', N'08', N'13', N'URPAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1324, N'13', N'09', N'00', N'SANCHEZ CARRION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1325, N'13', N'09', N'01', N'HUAMACHUCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1326, N'13', N'09', N'02', N'CHUGAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1327, N'13', N'09', N'03', N'COCHORCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1328, N'13', N'09', N'04', N'CURGOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1329, N'13', N'09', N'05', N'MARCABAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1330, N'13', N'09', N'06', N'SANAGORAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1331, N'13', N'09', N'07', N'SARIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1332, N'13', N'09', N'08', N'SARTIMBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1333, N'13', N'10', N'00', N'SANTIAGO DE CHUCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1334, N'13', N'10', N'01', N'SANTIAGO DE CHUCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1335, N'13', N'10', N'02', N'ANGASMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1336, N'13', N'10', N'03', N'CACHICADAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1337, N'13', N'10', N'04', N'MOLLEBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1338, N'13', N'10', N'05', N'MOLLEPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1339, N'13', N'10', N'06', N'QUIRUVILCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1340, N'13', N'10', N'07', N'SANTA CRUZ DE CHUCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1341, N'13', N'10', N'08', N'SITABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1342, N'13', N'11', N'00', N'GRAN CHIMU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1343, N'13', N'11', N'01', N'CASCAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1344, N'13', N'11', N'02', N'LUCMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1345, N'13', N'11', N'03', N'COMPIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1346, N'13', N'11', N'04', N'SAYAPULLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1347, N'13', N'12', N'00', N'VIRU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1348, N'13', N'12', N'01', N'VIRU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1349, N'13', N'12', N'02', N'CHAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1350, N'13', N'12', N'03', N'GUADALUPITO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1351, N'14', N'00', N'00', N'LAMBAYEQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1352, N'14', N'01', N'00', N'CHICLAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1353, N'14', N'01', N'01', N'CHICLAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1354, N'14', N'01', N'02', N'CHONGOYAPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1355, N'14', N'01', N'03', N'ETEN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1356, N'14', N'01', N'04', N'ETEN PUERTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1357, N'14', N'01', N'05', N'JOSE LEONARDO ORTIZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1358, N'14', N'01', N'06', N'LA VICTORIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1359, N'14', N'01', N'07', N'LAGUNAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1360, N'14', N'01', N'08', N'MONSEFU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1361, N'14', N'01', N'09', N'NUEVA ARICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1362, N'14', N'01', N'10', N'OYOTUN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1363, N'14', N'01', N'11', N'PICSI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1364, N'14', N'01', N'12', N'PIMENTEL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1365, N'14', N'01', N'13', N'REQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1366, N'14', N'01', N'14', N'SANTA ROSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1367, N'14', N'01', N'15', N'SAÑA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1368, N'14', N'01', N'16', N'CAYALTI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1369, N'14', N'01', N'17', N'PATAPO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1370, N'14', N'01', N'18', N'POMALCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1371, N'14', N'01', N'19', N'PUCALA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1372, N'14', N'01', N'20', N'TUMAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1373, N'14', N'02', N'00', N'FERREÑAFE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1374, N'14', N'02', N'01', N'FERREÑAFE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1375, N'14', N'02', N'02', N'CAÑARIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1376, N'14', N'02', N'03', N'INCAHUASI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1377, N'14', N'02', N'04', N'MANUEL ANTONIO MESONES MURO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1378, N'14', N'02', N'05', N'PITIPO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1379, N'14', N'02', N'06', N'PUEBLO NUEVO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1380, N'14', N'03', N'00', N'LAMBAYEQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1381, N'14', N'03', N'01', N'LAMBAYEQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1382, N'14', N'03', N'02', N'CHOCHOPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1383, N'14', N'03', N'03', N'ILLIMO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1384, N'14', N'03', N'04', N'JAYANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1385, N'14', N'03', N'05', N'MOCHUMI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1386, N'14', N'03', N'06', N'MORROPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1387, N'14', N'03', N'07', N'MOTUPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1388, N'14', N'03', N'08', N'OLMOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1389, N'14', N'03', N'09', N'PACORA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1390, N'14', N'03', N'10', N'SALAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1391, N'14', N'03', N'11', N'SAN JOSE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1392, N'14', N'03', N'12', N'TUCUME', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1393, N'15', N'00', N'00', N'LIMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1394, N'15', N'01', N'00', N'LIMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1395, N'15', N'01', N'01', N'LIMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1396, N'15', N'01', N'02', N'ANCON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1397, N'15', N'01', N'03', N'ATE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1398, N'15', N'01', N'04', N'BARRANCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1399, N'15', N'01', N'05', N'BREÑA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1400, N'15', N'01', N'06', N'CARABAYLLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1401, N'15', N'01', N'07', N'CHACLACAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1402, N'15', N'01', N'08', N'CHORRILLOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1403, N'15', N'01', N'09', N'CIENEGUILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1404, N'15', N'01', N'10', N'COMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1405, N'15', N'01', N'11', N'EL AGUSTINO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1406, N'15', N'01', N'12', N'INDEPENDENCIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1407, N'15', N'01', N'13', N'JESUS MARIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1408, N'15', N'01', N'14', N'LA MOLINA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1409, N'15', N'01', N'15', N'LA VICTORIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1410, N'15', N'01', N'16', N'LINCE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1411, N'15', N'01', N'17', N'LOS OLIVOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1412, N'15', N'01', N'18', N'LURIGANCHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1413, N'15', N'01', N'19', N'LURIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1414, N'15', N'01', N'20', N'MAGDALENA DEL MAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1415, N'15', N'01', N'21', N'MAGDALENA VIEJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1416, N'15', N'01', N'22', N'MIRAFLORES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1417, N'15', N'01', N'23', N'PACHACAMAC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1418, N'15', N'01', N'24', N'PUCUSANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1419, N'15', N'01', N'25', N'PUENTE PIEDRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1420, N'15', N'01', N'26', N'PUNTA HERMOSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1421, N'15', N'01', N'27', N'PUNTA NEGRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1422, N'15', N'01', N'28', N'RIMAC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1423, N'15', N'01', N'29', N'SAN BARTOLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1424, N'15', N'01', N'30', N'SAN BORJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1425, N'15', N'01', N'31', N'SAN ISIDRO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1426, N'15', N'01', N'32', N'SAN JUAN DE LURIGANCHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1427, N'15', N'01', N'33', N'SAN JUAN DE MIRAFLORES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1428, N'15', N'01', N'34', N'SAN LUIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1429, N'15', N'01', N'35', N'SAN MARTIN DE PORRES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1430, N'15', N'01', N'36', N'SAN MIGUEL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1431, N'15', N'01', N'37', N'SANTA ANITA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1432, N'15', N'01', N'38', N'SANTA MARIA DEL MAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1433, N'15', N'01', N'39', N'SANTA ROSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1434, N'15', N'01', N'40', N'SANTIAGO DE SURCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1435, N'15', N'01', N'41', N'SURQUILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1436, N'15', N'01', N'42', N'VILLA EL SALVADOR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1437, N'15', N'01', N'43', N'VILLA MARIA DEL TRIUNFO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1438, N'15', N'02', N'00', N'BARRANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1439, N'15', N'02', N'01', N'BARRANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1440, N'15', N'02', N'02', N'PARAMONGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1441, N'15', N'02', N'03', N'PATIVILCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1442, N'15', N'02', N'04', N'SUPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1443, N'15', N'02', N'05', N'SUPE PUERTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1444, N'15', N'03', N'00', N'CAJATAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1445, N'15', N'03', N'01', N'CAJATAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1446, N'15', N'03', N'02', N'COPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1447, N'15', N'03', N'03', N'GORGOR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1448, N'15', N'03', N'04', N'HUANCAPON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1449, N'15', N'03', N'05', N'MANAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1450, N'15', N'04', N'00', N'CANTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1451, N'15', N'04', N'01', N'CANTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1452, N'15', N'04', N'02', N'ARAHUAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1453, N'15', N'04', N'03', N'HUAMANTANGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1454, N'15', N'04', N'04', N'HUAROS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1455, N'15', N'04', N'05', N'LACHAQUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1456, N'15', N'04', N'06', N'SAN BUENAVENTURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1457, N'15', N'04', N'07', N'SANTA ROSA DE QUIVES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1458, N'15', N'05', N'00', N'CAÑETE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1459, N'15', N'05', N'01', N'SAN VICENTE DE CAÑETE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1460, N'15', N'05', N'02', N'ASIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1461, N'15', N'05', N'03', N'CALANGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1462, N'15', N'05', N'04', N'CERRO AZUL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1463, N'15', N'05', N'05', N'CHILCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1464, N'15', N'05', N'06', N'COAYLLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1465, N'15', N'05', N'07', N'IMPERIAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1466, N'15', N'05', N'08', N'LUNAHUANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1467, N'15', N'05', N'09', N'MALA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1468, N'15', N'05', N'10', N'NUEVO IMPERIAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1469, N'15', N'05', N'11', N'PACARAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1470, N'15', N'05', N'12', N'QUILMANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1471, N'15', N'05', N'13', N'SAN ANTONIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1472, N'15', N'05', N'14', N'SAN LUIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1473, N'15', N'05', N'15', N'SANTA CRUZ DE FLORES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1474, N'15', N'05', N'16', N'ZUÑIGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1475, N'15', N'06', N'00', N'HUARAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1476, N'15', N'06', N'01', N'HUARAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1477, N'15', N'06', N'02', N'ATAVILLOS ALTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1478, N'15', N'06', N'03', N'ATAVILLOS BAJO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1479, N'15', N'06', N'04', N'AUCALLAMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1480, N'15', N'06', N'05', N'CHANCAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1481, N'15', N'06', N'06', N'IHUARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1482, N'15', N'06', N'07', N'LAMPIAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1483, N'15', N'06', N'08', N'PACARAOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1484, N'15', N'06', N'09', N'SAN MIGUEL DE ACOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1485, N'15', N'06', N'10', N'SANTA CRUZ DE ANDAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1486, N'15', N'06', N'11', N'SUMBILCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1487, N'15', N'06', N'12', N'VEINTISIETE DE NOVIEMBRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1488, N'15', N'07', N'00', N'HUAROCHIRI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1489, N'15', N'07', N'01', N'MATUCANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1490, N'15', N'07', N'02', N'ANTIOQUIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1491, N'15', N'07', N'03', N'CALLAHUANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1492, N'15', N'07', N'04', N'CARAMPOMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1493, N'15', N'07', N'05', N'CHICLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1494, N'15', N'07', N'06', N'CUENCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1495, N'15', N'07', N'07', N'HUACHUPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1496, N'15', N'07', N'08', N'HUANZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1497, N'15', N'07', N'09', N'HUAROCHIRI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1498, N'15', N'07', N'10', N'LAHUAYTAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1499, N'15', N'07', N'11', N'LANGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1500, N'15', N'07', N'12', N'LARAOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1501, N'15', N'07', N'13', N'MARIATANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1502, N'15', N'07', N'14', N'RICARDO PALMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1503, N'15', N'07', N'15', N'SAN ANDRES DE TUPICOCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1504, N'15', N'07', N'16', N'SAN ANTONIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1505, N'15', N'07', N'17', N'SAN BARTOLOME', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1506, N'15', N'07', N'18', N'SAN DAMIAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1507, N'15', N'07', N'19', N'SAN JUAN DE IRIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1508, N'15', N'07', N'20', N'SAN JUAN DE TANTARANCHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1509, N'15', N'07', N'21', N'SAN LORENZO DE QUINTI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1510, N'15', N'07', N'22', N'SAN MATEO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1511, N'15', N'07', N'23', N'SAN MATEO DE OTAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1512, N'15', N'07', N'24', N'SAN PEDRO DE CASTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1513, N'15', N'07', N'25', N'SAN PEDRO DE HUANCAYRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1514, N'15', N'07', N'26', N'SANGALLAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1515, N'15', N'07', N'27', N'SANTA CRUZ DE COCACHACRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1516, N'15', N'07', N'28', N'SANTA EULALIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1517, N'15', N'07', N'29', N'SANTIAGO DE ANCHUCAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1518, N'15', N'07', N'30', N'SANTIAGO DE TUNA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1519, N'15', N'07', N'31', N'SANTO DOMINGO DE LOS OLLEROS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1520, N'15', N'07', N'32', N'SURCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1521, N'15', N'08', N'00', N'HUAURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1522, N'15', N'08', N'01', N'HUACHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1523, N'15', N'08', N'02', N'AMBAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1524, N'15', N'08', N'03', N'CALETA DE CARQUIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1525, N'15', N'08', N'04', N'CHECRAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1526, N'15', N'08', N'05', N'HUALMAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1527, N'15', N'08', N'06', N'HUAURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1528, N'15', N'08', N'07', N'LEONCIO PRADO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1529, N'15', N'08', N'08', N'PACCHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1530, N'15', N'08', N'09', N'SANTA LEONOR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1531, N'15', N'08', N'10', N'SANTA MARIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1532, N'15', N'08', N'11', N'SAYAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1533, N'15', N'08', N'12', N'VEGUETA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1534, N'15', N'09', N'00', N'OYON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1535, N'15', N'09', N'01', N'OYON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1536, N'15', N'09', N'02', N'ANDAJES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1537, N'15', N'09', N'03', N'CAUJUL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1538, N'15', N'09', N'04', N'COCHAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1539, N'15', N'09', N'05', N'NAVAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1540, N'15', N'09', N'06', N'PACHANGARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1541, N'15', N'10', N'00', N'YAUYOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1542, N'15', N'10', N'01', N'YAUYOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1543, N'15', N'10', N'02', N'ALIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1544, N'15', N'10', N'03', N'AYAUCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1545, N'15', N'10', N'04', N'AYAVIRI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1546, N'15', N'10', N'05', N'AZANGARO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1547, N'15', N'10', N'06', N'CACRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1548, N'15', N'10', N'07', N'CARANIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1549, N'15', N'10', N'08', N'CATAHUASI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1550, N'15', N'10', N'09', N'CHOCOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1551, N'15', N'10', N'10', N'COCHAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1552, N'15', N'10', N'11', N'COLONIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1553, N'15', N'10', N'12', N'HONGOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1554, N'15', N'10', N'13', N'HUAMPARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1555, N'15', N'10', N'14', N'HUANCAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1556, N'15', N'10', N'15', N'HUANGASCAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1557, N'15', N'10', N'16', N'HUANTAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1558, N'15', N'10', N'17', N'HUAÑEC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1559, N'15', N'10', N'18', N'LARAOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1560, N'15', N'10', N'19', N'LINCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1561, N'15', N'10', N'20', N'MADEAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1562, N'15', N'10', N'21', N'MIRAFLORES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1563, N'15', N'10', N'22', N'OMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1564, N'15', N'10', N'23', N'PUTINZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1565, N'15', N'10', N'24', N'QUINCHES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1566, N'15', N'10', N'25', N'QUINOCAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1567, N'15', N'10', N'26', N'SAN JOAQUIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1568, N'15', N'10', N'27', N'SAN PEDRO DE PILAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1569, N'15', N'10', N'28', N'TANTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1570, N'15', N'10', N'29', N'TAURIPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1571, N'15', N'10', N'30', N'TOMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1572, N'15', N'10', N'31', N'TUPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1573, N'15', N'10', N'32', N'VIÑAC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1574, N'15', N'10', N'33', N'VITIS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1575, N'16', N'00', N'00', N'LORETO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1576, N'16', N'01', N'00', N'MAYNAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1577, N'16', N'01', N'01', N'IQUITOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1578, N'16', N'01', N'02', N'ALTO NANAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1579, N'16', N'01', N'03', N'FERNANDO LORES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1580, N'16', N'01', N'04', N'INDIANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1581, N'16', N'01', N'05', N'LAS AMAZONAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1582, N'16', N'01', N'06', N'MAZAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1583, N'16', N'01', N'07', N'NAPO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1584, N'16', N'01', N'08', N'PUNCHANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1585, N'16', N'01', N'09', N'PUTUMAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1586, N'16', N'01', N'10', N'TORRES CAUSANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1587, N'16', N'01', N'12', N'BELEN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1588, N'16', N'01', N'13', N'SAN JUAN BAUTISTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1589, N'16', N'01', N'14', N'TENIENTE MANUEL CLAVERO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1590, N'16', N'02', N'00', N'ALTO AMAZONAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1591, N'16', N'02', N'01', N'YURIMAGUAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1592, N'16', N'02', N'02', N'BALSAPUERTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1593, N'16', N'02', N'05', N'JEBEROS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1594, N'16', N'02', N'06', N'LAGUNAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1595, N'16', N'02', N'10', N'SANTA CRUZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1596, N'16', N'02', N'11', N'TENIENTE CESAR LOPEZ ROJAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1597, N'16', N'03', N'00', N'LORETO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1598, N'16', N'03', N'01', N'NAUTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1599, N'16', N'03', N'02', N'PARINARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1600, N'16', N'03', N'03', N'TIGRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1601, N'16', N'03', N'04', N'TROMPETEROS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1602, N'16', N'03', N'05', N'URARINAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1603, N'16', N'04', N'00', N'MARISCAL RAMON CASTILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1604, N'16', N'04', N'01', N'RAMON CASTILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1605, N'16', N'04', N'02', N'PEBAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1606, N'16', N'04', N'03', N'YAVARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1607, N'16', N'04', N'04', N'SAN PABLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1608, N'16', N'05', N'00', N'REQUENA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1609, N'16', N'05', N'01', N'REQUENA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1610, N'16', N'05', N'02', N'ALTO TAPICHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1611, N'16', N'05', N'03', N'CAPELO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1612, N'16', N'05', N'04', N'EMILIO SAN MARTIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1613, N'16', N'05', N'05', N'MAQUIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1614, N'16', N'05', N'06', N'PUINAHUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1615, N'16', N'05', N'07', N'SAQUENA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1616, N'16', N'05', N'08', N'SOPLIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1617, N'16', N'05', N'09', N'TAPICHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1618, N'16', N'05', N'10', N'JENARO HERRERA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1619, N'16', N'05', N'11', N'YAQUERANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1620, N'16', N'06', N'00', N'UCAYALI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1621, N'16', N'06', N'01', N'CONTAMANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1622, N'16', N'06', N'02', N'INAHUAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1623, N'16', N'06', N'03', N'PADRE MARQUEZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1624, N'16', N'06', N'04', N'PAMPA HERMOSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1625, N'16', N'06', N'05', N'SARAYACU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1626, N'16', N'06', N'06', N'VARGAS GUERRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1627, N'16', N'07', N'00', N'DATEM DEL MARAÑON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1628, N'16', N'07', N'01', N'BARRANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1629, N'16', N'07', N'02', N'CAHUAPANAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1630, N'16', N'07', N'03', N'MANSERICHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1631, N'16', N'07', N'04', N'MORONA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1632, N'16', N'07', N'05', N'PASTAZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1633, N'16', N'07', N'06', N'ANDOAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1634, N'17', N'00', N'00', N'MADRE DE DIOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1635, N'17', N'01', N'00', N'TAMBOPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1636, N'17', N'01', N'01', N'TAMBOPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1637, N'17', N'01', N'02', N'INAMBARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1638, N'17', N'01', N'03', N'LAS PIEDRAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1639, N'17', N'01', N'04', N'LABERINTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1640, N'17', N'02', N'00', N'MANU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1641, N'17', N'02', N'01', N'MANU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1642, N'17', N'02', N'02', N'FITZCARRALD', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1643, N'17', N'02', N'03', N'MADRE DE DIOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1644, N'17', N'02', N'04', N'HUEPETUHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1645, N'17', N'03', N'00', N'TAHUAMANU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1646, N'17', N'03', N'01', N'IÑAPARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1647, N'17', N'03', N'02', N'IBERIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1648, N'17', N'03', N'03', N'TAHUAMANU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1649, N'18', N'00', N'00', N'MOQUEGUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1650, N'18', N'01', N'00', N'MARISCAL NIETO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1651, N'18', N'01', N'01', N'MOQUEGUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1652, N'18', N'01', N'02', N'CARUMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1653, N'18', N'01', N'03', N'CUCHUMBAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1654, N'18', N'01', N'04', N'SAMEGUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1655, N'18', N'01', N'05', N'SAN CRISTOBAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1656, N'18', N'01', N'06', N'TORATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1657, N'18', N'02', N'00', N'GENERAL SANCHEZ CERRO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1658, N'18', N'02', N'01', N'OMATE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1659, N'18', N'02', N'02', N'CHOJATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1660, N'18', N'02', N'03', N'COALAQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1661, N'18', N'02', N'04', N'ICHUÑA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1662, N'18', N'02', N'05', N'LA CAPILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1663, N'18', N'02', N'06', N'LLOQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1664, N'18', N'02', N'07', N'MATALAQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1665, N'18', N'02', N'08', N'PUQUINA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1666, N'18', N'02', N'09', N'QUINISTAQUILLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1667, N'18', N'02', N'10', N'UBINAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1668, N'18', N'02', N'11', N'YUNGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1669, N'18', N'03', N'00', N'ILO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1670, N'18', N'03', N'01', N'ILO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1671, N'18', N'03', N'02', N'EL ALGARROBAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1672, N'18', N'03', N'03', N'PACOCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1673, N'19', N'00', N'00', N'PASCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1674, N'19', N'01', N'00', N'PASCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1675, N'19', N'01', N'01', N'CHAUPIMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1676, N'19', N'01', N'02', N'HUACHON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1677, N'19', N'01', N'03', N'HUARIACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1678, N'19', N'01', N'04', N'HUAYLLAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1679, N'19', N'01', N'05', N'NINACACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1680, N'19', N'01', N'06', N'PALLANCHACRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1681, N'19', N'01', N'07', N'PAUCARTAMBO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1682, N'19', N'01', N'08', N'SAN FRANCISCO DE ASIS DE YARUSYACAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1683, N'19', N'01', N'09', N'SIMON BOLIVAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1684, N'19', N'01', N'10', N'TICLACAYAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1685, N'19', N'01', N'11', N'TINYAHUARCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1686, N'19', N'01', N'12', N'VICCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1687, N'19', N'01', N'13', N'YANACANCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1688, N'19', N'02', N'00', N'DANIEL ALCIDES CARRION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1689, N'19', N'02', N'01', N'YANAHUANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1690, N'19', N'02', N'02', N'CHACAYAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1691, N'19', N'02', N'03', N'GOYLLARISQUIZGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1692, N'19', N'02', N'04', N'PAUCAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1693, N'19', N'02', N'05', N'SAN PEDRO DE PILLAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1694, N'19', N'02', N'06', N'SANTA ANA DE TUSI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1695, N'19', N'02', N'07', N'TAPUC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1696, N'19', N'02', N'08', N'VILCABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1697, N'19', N'03', N'00', N'OXAPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1698, N'19', N'03', N'01', N'OXAPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1699, N'19', N'03', N'02', N'CHONTABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1700, N'19', N'03', N'03', N'HUANCABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1701, N'19', N'03', N'04', N'PALCAZU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1702, N'19', N'03', N'05', N'POZUZO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1703, N'19', N'03', N'06', N'PUERTO BERMUDEZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1704, N'19', N'03', N'07', N'VILLA RICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1705, N'20', N'00', N'00', N'PIURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1706, N'20', N'01', N'00', N'PIURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1707, N'20', N'01', N'01', N'PIURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1708, N'20', N'01', N'04', N'CASTILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1709, N'20', N'01', N'05', N'CATACAOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1710, N'20', N'01', N'07', N'CURA MORI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1711, N'20', N'01', N'08', N'EL TALLAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1712, N'20', N'01', N'09', N'LA ARENA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1713, N'20', N'01', N'10', N'LA UNION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1714, N'20', N'01', N'11', N'LAS LOMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1715, N'20', N'01', N'14', N'TAMBO GRANDE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1716, N'20', N'02', N'00', N'AYABACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1717, N'20', N'02', N'01', N'AYABACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1718, N'20', N'02', N'02', N'FRIAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1719, N'20', N'02', N'03', N'JILILI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1720, N'20', N'02', N'04', N'LAGUNAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1721, N'20', N'02', N'05', N'MONTERO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1722, N'20', N'02', N'06', N'PACAIPAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1723, N'20', N'02', N'07', N'PAIMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1724, N'20', N'02', N'08', N'SAPILLICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1725, N'20', N'02', N'09', N'SICCHEZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1726, N'20', N'02', N'10', N'SUYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1727, N'20', N'03', N'00', N'HUANCABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1728, N'20', N'03', N'01', N'HUANCABAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1729, N'20', N'03', N'02', N'CANCHAQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1730, N'20', N'03', N'03', N'EL CARMEN DE LA FRONTERA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1731, N'20', N'03', N'04', N'HUARMACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1732, N'20', N'03', N'05', N'LALAQUIZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1733, N'20', N'03', N'06', N'SAN MIGUEL DE EL FAIQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1734, N'20', N'03', N'07', N'SONDOR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1735, N'20', N'03', N'08', N'SONDORILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1736, N'20', N'04', N'00', N'MORROPON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1737, N'20', N'04', N'01', N'CHULUCANAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1738, N'20', N'04', N'02', N'BUENOS AIRES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1739, N'20', N'04', N'03', N'CHALACO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1740, N'20', N'04', N'04', N'LA MATANZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1741, N'20', N'04', N'05', N'MORROPON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1742, N'20', N'04', N'06', N'SALITRAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1743, N'20', N'04', N'07', N'SAN JUAN DE BIGOTE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1744, N'20', N'04', N'08', N'SANTA CATALINA DE MOSSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1745, N'20', N'04', N'09', N'SANTO DOMINGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1746, N'20', N'04', N'10', N'YAMANGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1747, N'20', N'05', N'00', N'PAITA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1748, N'20', N'05', N'01', N'PAITA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1749, N'20', N'05', N'02', N'AMOTAPE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1750, N'20', N'05', N'03', N'ARENAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1751, N'20', N'05', N'04', N'COLAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1752, N'20', N'05', N'05', N'LA HUACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1753, N'20', N'05', N'06', N'TAMARINDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1754, N'20', N'05', N'07', N'VICHAYAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1755, N'20', N'06', N'00', N'SULLANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1756, N'20', N'06', N'01', N'SULLANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1757, N'20', N'06', N'02', N'BELLAVISTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1758, N'20', N'06', N'03', N'IGNACIO ESCUDERO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1759, N'20', N'06', N'04', N'LANCONES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1760, N'20', N'06', N'05', N'MARCAVELICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1761, N'20', N'06', N'06', N'MIGUEL CHECA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1762, N'20', N'06', N'07', N'QUERECOTILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1763, N'20', N'06', N'08', N'SALITRAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1764, N'20', N'07', N'00', N'TALARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1765, N'20', N'07', N'01', N'PARIÑAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1766, N'20', N'07', N'02', N'EL ALTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1767, N'20', N'07', N'03', N'LA BREA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1768, N'20', N'07', N'04', N'LOBITOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1769, N'20', N'07', N'05', N'LOS ORGANOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1770, N'20', N'07', N'06', N'MANCORA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1771, N'20', N'08', N'00', N'SECHURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1772, N'20', N'08', N'01', N'SECHURA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1773, N'20', N'08', N'02', N'BELLAVISTA DE LA UNION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1774, N'20', N'08', N'03', N'BERNAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1775, N'20', N'08', N'04', N'CRISTO NOS VALGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1776, N'20', N'08', N'05', N'VICE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1777, N'20', N'08', N'06', N'RINCONADA LLICUAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1778, N'21', N'00', N'00', N'PUNO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1779, N'21', N'01', N'00', N'PUNO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1780, N'21', N'01', N'01', N'PUNO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1781, N'21', N'01', N'02', N'ACORA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1782, N'21', N'01', N'03', N'AMANTANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1783, N'21', N'01', N'04', N'ATUNCOLLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1784, N'21', N'01', N'05', N'CAPACHICA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1785, N'21', N'01', N'06', N'CHUCUITO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1786, N'21', N'01', N'07', N'COATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1787, N'21', N'01', N'08', N'HUATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1788, N'21', N'01', N'09', N'MAÑAZO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1789, N'21', N'01', N'10', N'PAUCARCOLLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1790, N'21', N'01', N'11', N'PICHACANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1791, N'21', N'01', N'12', N'PLATERIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1792, N'21', N'01', N'13', N'SAN ANTONIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1793, N'21', N'01', N'14', N'TIQUILLACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1794, N'21', N'01', N'15', N'VILQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1795, N'21', N'02', N'00', N'AZANGARO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1796, N'21', N'02', N'01', N'AZANGARO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1797, N'21', N'02', N'02', N'ACHAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1798, N'21', N'02', N'03', N'ARAPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1799, N'21', N'02', N'04', N'ASILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1800, N'21', N'02', N'05', N'CAMINACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1801, N'21', N'02', N'06', N'CHUPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1802, N'21', N'02', N'07', N'JOSE DOMINGO CHOQUEHUANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1803, N'21', N'02', N'08', N'MUÑANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1804, N'21', N'02', N'09', N'POTONI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1805, N'21', N'02', N'10', N'SAMAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1806, N'21', N'02', N'11', N'SAN ANTON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1807, N'21', N'02', N'12', N'SAN JOSE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1808, N'21', N'02', N'13', N'SAN JUAN DE SALINAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1809, N'21', N'02', N'14', N'SANTIAGO DE PUPUJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1810, N'21', N'02', N'15', N'TIRAPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1811, N'21', N'03', N'00', N'CARABAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1812, N'21', N'03', N'01', N'MACUSANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1813, N'21', N'03', N'02', N'AJOYANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1814, N'21', N'03', N'03', N'AYAPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1815, N'21', N'03', N'04', N'COASA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1816, N'21', N'03', N'05', N'CORANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1817, N'21', N'03', N'06', N'CRUCERO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1818, N'21', N'03', N'07', N'ITUATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1819, N'21', N'03', N'08', N'OLLACHEA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1820, N'21', N'03', N'09', N'SAN GABAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1821, N'21', N'03', N'10', N'USICAYOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1822, N'21', N'04', N'00', N'CHUCUITO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1823, N'21', N'04', N'01', N'JULI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1824, N'21', N'04', N'02', N'DESAGUADERO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1825, N'21', N'04', N'03', N'HUACULLANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1826, N'21', N'04', N'04', N'KELLUYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1827, N'21', N'04', N'05', N'PISACOMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1828, N'21', N'04', N'06', N'POMATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1829, N'21', N'04', N'07', N'ZEPITA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1830, N'21', N'05', N'00', N'EL COLLAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1831, N'21', N'05', N'01', N'ILAVE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1832, N'21', N'05', N'02', N'CAPAZO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1833, N'21', N'05', N'03', N'PILCUYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1834, N'21', N'05', N'04', N'SANTA ROSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1835, N'21', N'05', N'05', N'CONDURIRI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1836, N'21', N'06', N'00', N'HUANCANE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1837, N'21', N'06', N'01', N'HUANCANE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1838, N'21', N'06', N'02', N'COJATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1839, N'21', N'06', N'03', N'HUATASANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1840, N'21', N'06', N'04', N'INCHUPALLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1841, N'21', N'06', N'05', N'PUSI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1842, N'21', N'06', N'06', N'ROSASPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1843, N'21', N'06', N'07', N'TARACO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1844, N'21', N'06', N'08', N'VILQUE CHICO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1845, N'21', N'07', N'00', N'LAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1846, N'21', N'07', N'01', N'LAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1847, N'21', N'07', N'02', N'CABANILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1848, N'21', N'07', N'03', N'CALAPUJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1849, N'21', N'07', N'04', N'NICASIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1850, N'21', N'07', N'05', N'OCUVIRI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1851, N'21', N'07', N'06', N'PALCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1852, N'21', N'07', N'07', N'PARATIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1853, N'21', N'07', N'08', N'PUCARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1854, N'21', N'07', N'09', N'SANTA LUCIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1855, N'21', N'07', N'10', N'VILAVILA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1856, N'21', N'08', N'00', N'MELGAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1857, N'21', N'08', N'01', N'AYAVIRI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1858, N'21', N'08', N'02', N'ANTAUTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1859, N'21', N'08', N'03', N'CUPI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1860, N'21', N'08', N'04', N'LLALLI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1861, N'21', N'08', N'05', N'MACARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1862, N'21', N'08', N'06', N'NUÑOA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1863, N'21', N'08', N'07', N'ORURILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1864, N'21', N'08', N'08', N'SANTA ROSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1865, N'21', N'08', N'09', N'UMACHIRI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1866, N'21', N'09', N'00', N'MOHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1867, N'21', N'09', N'01', N'MOHO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1868, N'21', N'09', N'02', N'CONIMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1869, N'21', N'09', N'03', N'HUAYRAPATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1870, N'21', N'09', N'04', N'TILALI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1871, N'21', N'10', N'00', N'SAN ANTONIO DE PUTINA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1872, N'21', N'10', N'01', N'PUTINA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1873, N'21', N'10', N'02', N'ANANEA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1874, N'21', N'10', N'03', N'PEDRO VILCA APAZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1875, N'21', N'10', N'04', N'QUILCAPUNCU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1876, N'21', N'10', N'05', N'SINA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1877, N'21', N'11', N'00', N'SAN ROMAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1878, N'21', N'11', N'01', N'JULIACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1879, N'21', N'11', N'02', N'CABANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1880, N'21', N'11', N'03', N'CABANILLAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1881, N'21', N'11', N'04', N'CARACOTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1882, N'21', N'12', N'00', N'SANDIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1883, N'21', N'12', N'01', N'SANDIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1884, N'21', N'12', N'02', N'CUYOCUYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1885, N'21', N'12', N'03', N'LIMBANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1886, N'21', N'12', N'04', N'PATAMBUCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1887, N'21', N'12', N'05', N'PHARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1888, N'21', N'12', N'06', N'QUIACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1889, N'21', N'12', N'07', N'SAN JUAN DEL ORO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1890, N'21', N'12', N'08', N'YANAHUAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1891, N'21', N'12', N'09', N'ALTO INAMBARI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1892, N'21', N'12', N'10', N'SAN PEDRO DE PUTINA PUNCO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1893, N'21', N'13', N'00', N'YUNGUYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1894, N'21', N'13', N'01', N'YUNGUYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1895, N'21', N'13', N'02', N'ANAPIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1896, N'21', N'13', N'03', N'COPANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1897, N'21', N'13', N'04', N'CUTURAPI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1898, N'21', N'13', N'05', N'OLLARAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1899, N'21', N'13', N'06', N'TINICACHI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1900, N'21', N'13', N'07', N'UNICACHI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1901, N'22', N'00', N'00', N'SAN MARTIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1902, N'22', N'01', N'00', N'MOYOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1903, N'22', N'01', N'01', N'MOYOBAMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1904, N'22', N'01', N'02', N'CALZADA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1905, N'22', N'01', N'03', N'HABANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1906, N'22', N'01', N'04', N'JEPELACIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1907, N'22', N'01', N'05', N'SORITOR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1908, N'22', N'01', N'06', N'YANTALO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1909, N'22', N'02', N'00', N'BELLAVISTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1910, N'22', N'02', N'01', N'BELLAVISTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1911, N'22', N'02', N'02', N'ALTO BIAVO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1912, N'22', N'02', N'03', N'BAJO BIAVO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1913, N'22', N'02', N'04', N'HUALLAGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1914, N'22', N'02', N'05', N'SAN PABLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1915, N'22', N'02', N'06', N'SAN RAFAEL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1916, N'22', N'03', N'00', N'EL DORADO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1917, N'22', N'03', N'01', N'SAN JOSE DE SISA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1918, N'22', N'03', N'02', N'AGUA BLANCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1919, N'22', N'03', N'03', N'SAN MARTIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1920, N'22', N'03', N'04', N'SANTA ROSA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1921, N'22', N'03', N'05', N'SHATOJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1922, N'22', N'04', N'00', N'HUALLAGA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1923, N'22', N'04', N'01', N'SAPOSOA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1924, N'22', N'04', N'02', N'ALTO SAPOSOA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1925, N'22', N'04', N'03', N'EL ESLABON', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1926, N'22', N'04', N'04', N'PISCOYACU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1927, N'22', N'04', N'05', N'SACANCHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1928, N'22', N'04', N'06', N'TINGO DE SAPOSOA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1929, N'22', N'05', N'00', N'LAMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1930, N'22', N'05', N'01', N'LAMAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1931, N'22', N'05', N'02', N'ALONSO DE ALVARADO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1932, N'22', N'05', N'03', N'BARRANQUITA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1933, N'22', N'05', N'04', N'CAYNARACHI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1934, N'22', N'05', N'05', N'CUÑUMBUQUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1935, N'22', N'05', N'06', N'PINTO RECODO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1936, N'22', N'05', N'07', N'RUMISAPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1937, N'22', N'05', N'08', N'SAN ROQUE DE CUMBAZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1938, N'22', N'05', N'09', N'SHANAO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1939, N'22', N'05', N'10', N'TABALOSOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1940, N'22', N'05', N'11', N'ZAPATERO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1941, N'22', N'06', N'00', N'MARISCAL CACERES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1942, N'22', N'06', N'01', N'JUANJUI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1943, N'22', N'06', N'02', N'CAMPANILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1944, N'22', N'06', N'03', N'HUICUNGO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1945, N'22', N'06', N'04', N'PACHIZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1946, N'22', N'06', N'05', N'PAJARILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1947, N'22', N'07', N'00', N'PICOTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1948, N'22', N'07', N'01', N'PICOTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1949, N'22', N'07', N'02', N'BUENOS AIRES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1950, N'22', N'07', N'03', N'CASPISAPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1951, N'22', N'07', N'04', N'PILLUANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1952, N'22', N'07', N'05', N'PUCACACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1953, N'22', N'07', N'06', N'SAN CRISTOBAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1954, N'22', N'07', N'07', N'SAN HILARION', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1955, N'22', N'07', N'08', N'SHAMBOYACU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1956, N'22', N'07', N'09', N'TINGO DE PONASA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1957, N'22', N'07', N'10', N'TRES UNIDOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1958, N'22', N'08', N'00', N'RIOJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1959, N'22', N'08', N'01', N'RIOJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1960, N'22', N'08', N'02', N'AWAJUN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1961, N'22', N'08', N'03', N'ELIAS SOPLIN VARGAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1962, N'22', N'08', N'04', N'NUEVA CAJAMARCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1963, N'22', N'08', N'05', N'PARDO MIGUEL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1964, N'22', N'08', N'06', N'POSIC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1965, N'22', N'08', N'07', N'SAN FERNANDO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1966, N'22', N'08', N'08', N'YORONGOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1967, N'22', N'08', N'09', N'YURACYACU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1968, N'22', N'09', N'00', N'SAN MARTIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1969, N'22', N'09', N'01', N'TARAPOTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1970, N'22', N'09', N'02', N'ALBERTO LEVEAU', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1971, N'22', N'09', N'03', N'CACATACHI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1972, N'22', N'09', N'04', N'CHAZUTA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1973, N'22', N'09', N'05', N'CHIPURANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1974, N'22', N'09', N'06', N'EL PORVENIR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1975, N'22', N'09', N'07', N'HUIMBAYOC', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1976, N'22', N'09', N'08', N'JUAN GUERRA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1977, N'22', N'09', N'09', N'LA BANDA DE SHILCAYO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1978, N'22', N'09', N'10', N'MORALES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1979, N'22', N'09', N'11', N'PAPAPLAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1980, N'22', N'09', N'12', N'SAN ANTONIO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1981, N'22', N'09', N'13', N'SAUCE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1982, N'22', N'09', N'14', N'SHAPAJA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1983, N'22', N'10', N'00', N'TOCACHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1984, N'22', N'10', N'01', N'TOCACHE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1985, N'22', N'10', N'02', N'NUEVO PROGRESO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1986, N'22', N'10', N'03', N'POLVORA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1987, N'22', N'10', N'04', N'SHUNTE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1988, N'22', N'10', N'05', N'UCHIZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1989, N'23', N'00', N'00', N'TACNA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1990, N'23', N'01', N'00', N'TACNA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1991, N'23', N'01', N'01', N'TACNA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1992, N'23', N'01', N'02', N'ALTO DE LA ALIANZA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1993, N'23', N'01', N'03', N'CALANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1994, N'23', N'01', N'04', N'CIUDAD NUEVA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1995, N'23', N'01', N'05', N'INCLAN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1996, N'23', N'01', N'06', N'PACHIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1997, N'23', N'01', N'07', N'PALCA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1998, N'23', N'01', N'08', N'POCOLLAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (1999, N'23', N'01', N'09', N'SAMA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2000, N'23', N'01', N'10', N'CORONEL GREGORIO ALBARRACIN LANCHIPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2001, N'23', N'02', N'00', N'CANDARAVE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2002, N'23', N'02', N'01', N'CANDARAVE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2003, N'23', N'02', N'02', N'CAIRANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2004, N'23', N'02', N'03', N'CAMILACA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2005, N'23', N'02', N'04', N'CURIBAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2006, N'23', N'02', N'05', N'HUANUARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2007, N'23', N'02', N'06', N'QUILAHUANI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2008, N'23', N'03', N'00', N'JORGE BASADRE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2009, N'23', N'03', N'01', N'LOCUMBA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2010, N'23', N'03', N'02', N'ILABAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2011, N'23', N'03', N'03', N'ITE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2012, N'23', N'04', N'00', N'TARATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2013, N'23', N'04', N'01', N'TARATA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2014, N'23', N'04', N'02', N'HEROES ALBARRACIN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2015, N'23', N'04', N'03', N'ESTIQUE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2016, N'23', N'04', N'04', N'ESTIQUE-PAMPA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2017, N'23', N'04', N'05', N'SITAJARA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2018, N'23', N'04', N'06', N'SUSAPAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2019, N'23', N'04', N'07', N'TARUCACHI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2020, N'23', N'04', N'08', N'TICACO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2021, N'24', N'00', N'00', N'TUMBES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2022, N'24', N'01', N'00', N'TUMBES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2023, N'24', N'01', N'01', N'TUMBES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2024, N'24', N'01', N'02', N'CORRALES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2025, N'24', N'01', N'03', N'LA CRUZ', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2026, N'24', N'01', N'04', N'PAMPAS DE HOSPITAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2027, N'24', N'01', N'05', N'SAN JACINTO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2028, N'24', N'01', N'06', N'SAN JUAN DE LA VIRGEN', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2029, N'24', N'02', N'00', N'CONTRALMIRANTE VILLAR', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2030, N'24', N'02', N'01', N'ZORRITOS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2031, N'24', N'02', N'02', N'CASITAS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2032, N'24', N'02', N'03', N'CANOAS DE PUNTA SAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2033, N'24', N'03', N'00', N'ZARUMILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2034, N'24', N'03', N'01', N'ZARUMILLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2035, N'24', N'03', N'02', N'AGUAS VERDES', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2036, N'24', N'03', N'03', N'MATAPALO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2037, N'24', N'03', N'04', N'PAPAYAL', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2038, N'25', N'00', N'00', N'UCAYALI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2039, N'25', N'01', N'00', N'CORONEL PORTILLO', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2040, N'25', N'01', N'01', N'CALLERIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2041, N'25', N'01', N'02', N'CAMPOVERDE', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2042, N'25', N'01', N'03', N'IPARIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2043, N'25', N'01', N'04', N'MASISEA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2044, N'25', N'01', N'05', N'YARINACOCHA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2045, N'25', N'01', N'06', N'NUEVA REQUENA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2046, N'25', N'01', N'07', N'MANANTAY', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2047, N'25', N'02', N'00', N'ATALAYA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2048, N'25', N'02', N'01', N'RAYMONDI', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2049, N'25', N'02', N'02', N'SEPAHUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2050, N'25', N'02', N'03', N'TAHUANIA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2051, N'25', N'02', N'04', N'YURUA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2052, N'25', N'03', N'00', N'PADRE ABAD', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2053, N'25', N'03', N'01', N'PADRE ABAD', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2054, N'25', N'03', N'02', N'IRAZOLA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2055, N'25', N'03', N'03', N'CURIMANA', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2056, N'25', N'04', N'00', N'PURUS', N'1         ')
GO
INSERT [dbo].[D011_UBIGEO] ([idUbigeo], [cod_depa], [cod_prov], [cod_dist], [descripcion], [estado]) VALUES (2057, N'25', N'04', N'01', N'PURUS', N'1         ')
GO
SET IDENTITY_INSERT [dbo].[D011_UBIGEO] OFF
GO
SET IDENTITY_INSERT [dbo].[D012_CRONOMEDICO] ON 
GO
INSERT [dbo].[D012_CRONOMEDICO] ([idProgramMedica], [mes], [semana], [dia], [fechaIni], [fechaFin], [idMedico], [idEspecialidad], [idConsultorio], [hrInicio], [hrFin], [estado], [fechabaja]) VALUES (1, N'junio', N'25', N'180', CAST(N'2020-06-20T00:00:00.000' AS DateTime), NULL, 1, 126, 1, N'07:00', N'07:20', N'1           ', NULL)
GO
INSERT [dbo].[D012_CRONOMEDICO] ([idProgramMedica], [mes], [semana], [dia], [fechaIni], [fechaFin], [idMedico], [idEspecialidad], [idConsultorio], [hrInicio], [hrFin], [estado], [fechabaja]) VALUES (2, N'junio', N'25', N'181', CAST(N'2020-06-25T00:00:00.000' AS DateTime), NULL, 2, 127, 2, N'14:20', N'14:40', N'1           ', NULL)
GO
INSERT [dbo].[D012_CRONOMEDICO] ([idProgramMedica], [mes], [semana], [dia], [fechaIni], [fechaFin], [idMedico], [idEspecialidad], [idConsultorio], [hrInicio], [hrFin], [estado], [fechabaja]) VALUES (3, N'mayo', N'20', N'190', CAST(N'2020-06-25T00:00:00.000' AS DateTime), NULL, 3, 128, 3, N'09:00', N'10:00', N'1           ', NULL)
GO
INSERT [dbo].[D012_CRONOMEDICO] ([idProgramMedica], [mes], [semana], [dia], [fechaIni], [fechaFin], [idMedico], [idEspecialidad], [idConsultorio], [hrInicio], [hrFin], [estado], [fechabaja]) VALUES (4, N'julio', N'28', N'195', CAST(N'2020-07-20T00:00:00.000' AS DateTime), NULL, 4, 129, 4, N'13:20', N'13:40', N'1           ', NULL)
GO
SET IDENTITY_INSERT [dbo].[D012_CRONOMEDICO] OFF
GO
SET IDENTITY_INSERT [dbo].[D013_CRONOCONSULTORIO] ON 
GO
INSERT [dbo].[D013_CRONOCONSULTORIO] ([idCronoConsul], [disponibilidad], [fecHora], [idConsultorio], [estado]) VALUES (1, N'Libre', CAST(N'2020-06-26T12:05:19.653' AS DateTime), 1, N'1           ')
GO
INSERT [dbo].[D013_CRONOCONSULTORIO] ([idCronoConsul], [disponibilidad], [fecHora], [idConsultorio], [estado]) VALUES (2, N'Libre', CAST(N'2020-06-26T12:07:46.850' AS DateTime), 2, N'1           ')
GO
INSERT [dbo].[D013_CRONOCONSULTORIO] ([idCronoConsul], [disponibilidad], [fecHora], [idConsultorio], [estado]) VALUES (3, N'Libre', CAST(N'2020-06-26T12:07:53.353' AS DateTime), 3, N'1           ')
GO
INSERT [dbo].[D013_CRONOCONSULTORIO] ([idCronoConsul], [disponibilidad], [fecHora], [idConsultorio], [estado]) VALUES (4, N'Libre', CAST(N'2020-06-26T12:07:58.717' AS DateTime), 4, N'1           ')
GO
INSERT [dbo].[D013_CRONOCONSULTORIO] ([idCronoConsul], [disponibilidad], [fecHora], [idConsultorio], [estado]) VALUES (5, N'Libre', CAST(N'2020-06-26T12:08:04.387' AS DateTime), 5, N'1           ')
GO
SET IDENTITY_INSERT [dbo].[D013_CRONOCONSULTORIO] OFF
GO
INSERT [dbo].[D013_PAIS] ([idPais], [descripcion], [codigo]) VALUES (1, N'Peru', NULL)
GO
INSERT [dbo].[D013_PAIS] ([idPais], [descripcion], [codigo]) VALUES (2, N'PERU', N'cod')
GO
INSERT [dbo].[D014_DPTO] ([idDpto], [descripcion], [codigo], [idPais]) VALUES (2, N'LIMA', N'cod', 2)
GO
INSERT [dbo].[D014_DPTO] ([idDpto], [descripcion], [codigo], [idPais]) VALUES (3, N'ICA', N'cod', 2)
GO
INSERT [dbo].[D015_PROV] ([idProvincia], [descripcion], [codigo], [idDpto]) VALUES (1, N'LIMA', N'cod', 2)
GO
INSERT [dbo].[D015_PROV] ([idProvincia], [descripcion], [codigo], [idDpto]) VALUES (2, N'ICA', N'cod', 3)
GO
SET IDENTITY_INSERT [dbo].[D015_TPEMPLEADO] ON 
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (1, N'Admisionista')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (2, N'Medico')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (3, N'Laboratorista')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (4, N'Farmaceutico')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (5, N'Tecnologo')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (6, N'Radiologo')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (7, N'Asistente')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (8, N'Administrativo')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (9, N'Analista RH')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (10, N'Contador')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (11, N'Finanzas')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (12, N'Cajero Principal')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (13, N'Cajero jr')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (14, N'Auditor')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (15, N'Med Auxiliar')
GO
INSERT [dbo].[D015_TPEMPLEADO] ([idtpEmpleado], [descripcion]) VALUES (16, N'Med Externo')
GO
SET IDENTITY_INSERT [dbo].[D015_TPEMPLEADO] OFF
GO
INSERT [dbo].[D016_DISTRITO] ([idDistrito], [descripcion], [codigo], [idDpto], [idProv]) VALUES (1, N'Cercado', N'cod', NULL, 1)
GO
INSERT [dbo].[D016_DISTRITO] ([idDistrito], [descripcion], [codigo], [idDpto], [idProv]) VALUES (2, N'distr ica', N'cod', NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[T000_PERSONA] ON 
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (1, N'saens', N'galvez', N'Alonso', NULL, 10887658, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (2, N'Mendoza', N'Mendoza', N'Luis', NULL, 12345678, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (3, N'Ruiz', N'Ruiz', N'Maria', NULL, 12345671, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (4, N'Hidalgo', N'Hidalgo', N'Adriana', NULL, 10345600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (5, N'franco', N'net', N'Andre', NULL, 12346789, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (6, N'franco', N'palacios', N'Luis', NULL, 74446454, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (7, N'palacios', N'franco', N'erick', 1, 74446100, 7, 78, N'1020202', NULL, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, 10, 82, NULL, 19, 25, 35, 38, NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, N'jotace.11.01.03@gmail.com', NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (8, N'tomcat', N'guerra', N'tom', 1, 74446450, 7, 79, N'10301030', NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, 11, 83, NULL, 20, 26, 29, 39, NULL, NULL, NULL, NULL, NULL, 47, NULL, NULL, N'tomcat@gmail.com', NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (9, N'pierre', N'santos', N'zodiac', 1, 74446451, 8, 80, N'10401040', NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, 12, 84, NULL, 17, 27, 30, 38, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, N'pierresantosg@gmail.com', NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (10, N'Cardenas', N'Malca', N'marcelo', 1, 173945, 7, 81, N'01031997', NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, 13, 85, NULL, 17, 28, 31, 39, NULL, NULL, NULL, NULL, NULL, 41, NULL, NULL, N'luis_3@gmail.com', NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (11, N'Ramirez', N'Salgado', N'luis', 1, 70452946, 7, 77, N'01031998', NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, 14, 86, NULL, 17, 24, 32, 38, NULL, NULL, NULL, NULL, NULL, 42, NULL, NULL, N'luis_3@gmail.com', NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (12, N'sanjohn', N'vias', N'antoni', 1, 70701000, 7, 82, N'01031944', NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, 12, 86, NULL, 17, 24, 33, 39, NULL, NULL, NULL, NULL, NULL, 44, NULL, NULL, N'jotace.11.01.03@gmail.com', NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
INSERT [dbo].[T000_PERSONA] ([idPersona], [apePaterno], [apeMaterno], [nombres], [idtpDocumento], [dniPersona], [idSexo], [idEtnico], [fecNace], [idUbigeoResi], [idtipoVia], [nombreVia], [nroVia], [nroDpto], [interior], [manzana], [nroLote], [nroKm], [nroBlock], [nroEtapa], [edad], [idUbigeoNace], [fotografia], [idGrdInstruc], [idReligion], [centroEduca], [idEstCivil], [idOcupacion], [idgpoSangre], [idFactorrh], [nroRuc], [razonSocial], [estadoRuc], [condicionRuc], [domiFiscal], [idParentesco], [telefono], [celular], [correo], [tpPersona], [iddatoSiteds], [idemprConvenio], [idciaSeguro], [idtipoIafa], [estado], [fechabaja]) VALUES (13, N'castel', N'casas', N'mesalas', 1, 10103030, 7, 83, N'01031900', NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, 14, 86, NULL, 17, 24, 31, 38, NULL, NULL, NULL, NULL, NULL, 44, NULL, NULL, N'jotace.11.01.03@gmail.com', NULL, NULL, NULL, NULL, NULL, N'1              ', NULL)
GO
SET IDENTITY_INSERT [dbo].[T000_PERSONA] OFF
GO
SET IDENTITY_INSERT [dbo].[T001_PACIENTE] ON 
GO
INSERT [dbo].[T001_PACIENTE] ([idPaciente], [codPaciente], [descripcion], [nrohc], [nombreAcom], [edadAcom], [dniAcom], [idgpoSangre], [idFactorrh], [cobertura], [ordenAtenMed], [nomAsegurado], [codAsegurado], [poliza], [parentesco], [iniVigencia], [finVigencia], [tpPlanSalud], [nroPlanSalud], [estadoSeguro], [tpAfiliacion], [fecAfiliacion], [codTitular], [moneda], [nomContratante], [tpDocumento], [dniContratante], [planSalud], [codCobertura], [beneficio], [restriccion], [copagoFijo], [copagoVariable], [finCarencia], [convenio], [descuento], [codPaConvenio], [dsPacConv], [statPaconv], [codPacSoat], [dsPacSoat], [statPacSoat], [codpacExterno], [dspacExter], [stapacexter], [tpPaciente], [idPersona], [hojafiliacion], [concienteDato], [estado], [fechabaja]) VALUES (1, N'pa0001', N'pac particular', N'100010', N'ninguno', 18, NULL, 29, 38, NULL, N'no', N'pacifico', N'aseg001', N'poli001', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'soles', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'120', 12, NULL, NULL, N'1         ', NULL)
GO
INSERT [dbo].[T001_PACIENTE] ([idPaciente], [codPaciente], [descripcion], [nrohc], [nombreAcom], [edadAcom], [dniAcom], [idgpoSangre], [idFactorrh], [cobertura], [ordenAtenMed], [nomAsegurado], [codAsegurado], [poliza], [parentesco], [iniVigencia], [finVigencia], [tpPlanSalud], [nroPlanSalud], [estadoSeguro], [tpAfiliacion], [fecAfiliacion], [codTitular], [moneda], [nomContratante], [tpDocumento], [dniContratante], [planSalud], [codCobertura], [beneficio], [restriccion], [copagoFijo], [copagoVariable], [finCarencia], [convenio], [descuento], [codPaConvenio], [dsPacConv], [statPaconv], [codPacSoat], [dsPacSoat], [statPacSoat], [codpacExterno], [dspacExter], [stapacexter], [tpPaciente], [idPersona], [hojafiliacion], [concienteDato], [estado], [fechabaja]) VALUES (2, N'pa0002', N'pac particular', N'10020', N'ninguno', 20, NULL, 30, 39, NULL, N'no', N'positiva', N'aseg002,', N'poli001', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'soles', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'121', 13, NULL, NULL, N'1         ', NULL)
GO
SET IDENTITY_INSERT [dbo].[T001_PACIENTE] OFF
GO
SET IDENTITY_INSERT [dbo].[T017_TIPOIAFA] ON 
GO
INSERT [dbo].[T017_TIPOIAFA] ([idtipoIafa], [codTipo], [descripcion]) VALUES (1, N'DHC001', N'SEGURO INTEGRAL DE SALUD')
GO
INSERT [dbo].[T017_TIPOIAFA] ([idtipoIafa], [codTipo], [descripcion]) VALUES (2, N'DHC002', N'SEGURO SOCIAL DE SALUD')
GO
INSERT [dbo].[T017_TIPOIAFA] ([idtipoIafa], [codTipo], [descripcion]) VALUES (3, N'DHC003', N'FONDO INTANGIBLE SOLIDARIO EN SALUD')
GO
INSERT [dbo].[T017_TIPOIAFA] ([idtipoIafa], [codTipo], [descripcion]) VALUES (4, N'DHC004', N'SANIDADES DE LAS FUERZAS ARMADAS')
GO
INSERT [dbo].[T017_TIPOIAFA] ([idtipoIafa], [codTipo], [descripcion]) VALUES (5, N'DHC005', N'SANIDAD DE LA POLICÍA NACIONAL DEL PERÚ')
GO
INSERT [dbo].[T017_TIPOIAFA] ([idtipoIafa], [codTipo], [descripcion]) VALUES (6, N'DHC006', N'ENTIDADES PRESTADORAS DE SALUD (EPS)')
GO
INSERT [dbo].[T017_TIPOIAFA] ([idtipoIafa], [codTipo], [descripcion]) VALUES (7, N'DHC007', N'COMPAÑÍAS DE SEGUROS PRIVADOS DE SALUD')
GO
INSERT [dbo].[T017_TIPOIAFA] ([idtipoIafa], [codTipo], [descripcion]) VALUES (8, N'DHC008', N'ENTIDADES DE SALUD QUE OFRECEN SERVICIOS DE SALUD PREPAGADOS')
GO
INSERT [dbo].[T017_TIPOIAFA] ([idtipoIafa], [codTipo], [descripcion]) VALUES (9, N'DHC009', N'AUTOSEGUROS Y FONDOS DE SALUD')
GO
INSERT [dbo].[T017_TIPOIAFA] ([idtipoIafa], [codTipo], [descripcion]) VALUES (10, N'DHC010', N'AFOCATS')
GO
SET IDENTITY_INSERT [dbo].[T017_TIPOIAFA] OFF
GO
SET IDENTITY_INSERT [dbo].[T018_CIASEGURO] ON 
GO
INSERT [dbo].[T018_CIASEGURO] ([idIafa], [codIafa], [descripcion], [activo]) VALUES (1, N'DHC001', N'AUTOSEGURO BCRP', N'NO        ')
GO
INSERT [dbo].[T018_CIASEGURO] ([idIafa], [codIafa], [descripcion], [activo]) VALUES (2, N'DHC002', N'AUTOSEGURO SEMEFA', N'NO        ')
GO
INSERT [dbo].[T018_CIASEGURO] ([idIafa], [codIafa], [descripcion], [activo]) VALUES (3, N'DHC003', N'CARDIF SEGUROS', N'NO        ')
GO
INSERT [dbo].[T018_CIASEGURO] ([idIafa], [codIafa], [descripcion], [activo]) VALUES (4, N'DHC004', N'CLÍNICA SAN BORJA', N'NO        ')
GO
INSERT [dbo].[T018_CIASEGURO] ([idIafa], [codIafa], [descripcion], [activo]) VALUES (5, N'DHC005', N'FEBAN', N'NO        ')
GO
INSERT [dbo].[T018_CIASEGURO] ([idIafa], [codIafa], [descripcion], [activo]) VALUES (6, N'DHC006', N'FOSPEME', N'NO        ')
GO
INSERT [dbo].[T018_CIASEGURO] ([idIafa], [codIafa], [descripcion], [activo]) VALUES (7, N'DHC007', N'LA POSITIVA EPS', N'NO        ')
GO
INSERT [dbo].[T018_CIASEGURO] ([idIafa], [codIafa], [descripcion], [activo]) VALUES (8, N'DHC008', N'LA POSITIVA SEGUROS', N'NO        ')
GO
INSERT [dbo].[T018_CIASEGURO] ([idIafa], [codIafa], [descripcion], [activo]) VALUES (9, N'DHC009', N'MAPFRE EPS', N'SI        ')
GO
INSERT [dbo].[T018_CIASEGURO] ([idIafa], [codIafa], [descripcion], [activo]) VALUES (10, N'DHC010', N'PACÍFICO EPS', N'SI        ')
GO
INSERT [dbo].[T018_CIASEGURO] ([idIafa], [codIafa], [descripcion], [activo]) VALUES (11, N'DHC011', N'LA POSITIVA  EPS', N'SI        ')
GO
SET IDENTITY_INSERT [dbo].[T018_CIASEGURO] OFF
GO
SET IDENTITY_INSERT [dbo].[T020_TIPOPACIENTE] ON 
GO
INSERT [dbo].[T020_TIPOPACIENTE] ([idtpPaciente], [codigo], [descripcion], [abreviatura], [obli], [origen]) VALUES (1, N'TPAC001', N'PACIENTE PARTICULAR', N'part', N'     ', N'FORM CEM')
GO
INSERT [dbo].[T020_TIPOPACIENTE] ([idtpPaciente], [codigo], [descripcion], [abreviatura], [obli], [origen]) VALUES (2, N'TPAC002', N'PACIENTE ASEGURADO', N'Aseg', N'     ', N'FORM CEM')
GO
INSERT [dbo].[T020_TIPOPACIENTE] ([idtpPaciente], [codigo], [descripcion], [abreviatura], [obli], [origen]) VALUES (3, N'TPAC003', N'PACIENTE CONVENIO', N'Conv', N'     ', N'FORM CEM')
GO
SET IDENTITY_INSERT [dbo].[T020_TIPOPACIENTE] OFF
GO
SET IDENTITY_INSERT [dbo].[T057_RELIGION] ON 
GO
INSERT [dbo].[T057_RELIGION] ([idReligion], [codReligion], [descripcion], [abreviatura], [fuente], [observacion]) VALUES (1, N'DHR001', N'JUDAISMO', N'     ', N'RM N° 329, 2011/MINSA', N'')
GO
INSERT [dbo].[T057_RELIGION] ([idReligion], [codReligion], [descripcion], [abreviatura], [fuente], [observacion]) VALUES (2, N'DHR002', N'ISLAMISMO', N'     ', N'RM N° 329, 2011/MINSA', N'')
GO
INSERT [dbo].[T057_RELIGION] ([idReligion], [codReligion], [descripcion], [abreviatura], [fuente], [observacion]) VALUES (3, N'DHR003', N'CRISTIANISMO', N'     ', N'RM N° 329, 2011/MINSA', N'')
GO
INSERT [dbo].[T057_RELIGION] ([idReligion], [codReligion], [descripcion], [abreviatura], [fuente], [observacion]) VALUES (4, N'DHR004', N'HINDUISMO', N'     ', N'RM N° 329, 2011/MINSA', N'')
GO
INSERT [dbo].[T057_RELIGION] ([idReligion], [codReligion], [descripcion], [abreviatura], [fuente], [observacion]) VALUES (5, N'DHR005', N'BUDISMO', N'     ', N'RM N° 329, 2011/MINSA', N'')
GO
INSERT [dbo].[T057_RELIGION] ([idReligion], [codReligion], [descripcion], [abreviatura], [fuente], [observacion]) VALUES (7, N'DHR007', N'ESPIRITISMO', N'     ', N'RM N° 329, 2011/MINSA', N'')
GO
INSERT [dbo].[T057_RELIGION] ([idReligion], [codReligion], [descripcion], [abreviatura], [fuente], [observacion]) VALUES (8, N'DHR008', N'HELENISMO', N'     ', N'RM N° 329, 2011/MINSA', N'')
GO
INSERT [dbo].[T057_RELIGION] ([idReligion], [codReligion], [descripcion], [abreviatura], [fuente], [observacion]) VALUES (9, N'DHR006', N'RELIGION TRADICIONAL CHINA', N'     ', N'RM N° 329, 2011/MINSA', N'')
GO
INSERT [dbo].[T057_RELIGION] ([idReligion], [codReligion], [descripcion], [abreviatura], [fuente], [observacion]) VALUES (10, N'DHR009', N'INDIGENAS', N'     ', N'RM N° 329, 2011/MINSA', N'')
GO
INSERT [dbo].[T057_RELIGION] ([idReligion], [codReligion], [descripcion], [abreviatura], [fuente], [observacion]) VALUES (11, N'DHR011', N'TAOISMO', N'     ', N'RM N° 329, 2011/MINSA', N'')
GO
INSERT [dbo].[T057_RELIGION] ([idReligion], [codReligion], [descripcion], [abreviatura], [fuente], [observacion]) VALUES (12, N'DHR012', N'OTROS', N'     ', N'RM N° 329, 2011/MINSA', N'')
GO
SET IDENTITY_INSERT [dbo].[T057_RELIGION] OFF
GO
SET IDENTITY_INSERT [dbo].[T068_CITA] ON 
GO
INSERT [dbo].[T068_CITA] ([idCita], [codCita], [nroCita], [descripcion], [fechaCita], [ultCie10], [tpAtencion], [nroHC], [ejecutado], [prioridad], [precio], [descuento], [coa], [igv], [estadoReprogram], [tipoCita], [motivoRepro], [motivoAnula], [idEstadoCita], [idPaciente], [idEmpleado], [idConsultorio], [idProgramMedica], [idservicioCli], [estado], [fechabaja]) VALUES (3, 12121, 1200, N'general', CAST(N'2020-06-20T00:00:00.000' AS DateTime), N'12', 0, N'2345', N'12345     ', N'12345     ', CAST(200.00 AS Decimal(16, 2)), CAST(5.00 AS Decimal(16, 2)), CAST(0.00 AS Decimal(16, 2)), CAST(0.00 AS Decimal(16, 2)), N'12345     ', 169, NULL, NULL, 1, 1, 1, 94, 1, 1, N'1           ', NULL)
GO
INSERT [dbo].[T068_CITA] ([idCita], [codCita], [nroCita], [descripcion], [fechaCita], [ultCie10], [tpAtencion], [nroHC], [ejecutado], [prioridad], [precio], [descuento], [coa], [igv], [estadoReprogram], [tipoCita], [motivoRepro], [motivoAnula], [idEstadoCita], [idPaciente], [idEmpleado], [idConsultorio], [idProgramMedica], [idservicioCli], [estado], [fechabaja]) VALUES (4, 12122, 1204, N'extraordinaria', CAST(N'2020-06-21T00:00:00.000' AS DateTime), N'11', 0, N'2345', N'12345     ', N'12345     ', CAST(150.00 AS Decimal(16, 2)), CAST(5.00 AS Decimal(16, 2)), CAST(0.00 AS Decimal(16, 2)), CAST(0.00 AS Decimal(16, 2)), N'12345     ', 170, NULL, NULL, 1, 2, 1, 95, 2, 2, N'1           ', NULL)
GO
SET IDENTITY_INSERT [dbo].[T068_CITA] OFF
GO
SET IDENTITY_INSERT [dbo].[T071_SEXO] ON 
GO
INSERT [dbo].[T071_SEXO] ([idSexo], [codSexo], [descripcion], [abreviatura], [origen]) VALUES (1, 1, N'Masculino', N'M    ', N'')
GO
INSERT [dbo].[T071_SEXO] ([idSexo], [codSexo], [descripcion], [abreviatura], [origen]) VALUES (2, 2, N'Femenino', N'F    ', N'')
GO
SET IDENTITY_INSERT [dbo].[T071_SEXO] OFF
GO
SET IDENTITY_INSERT [dbo].[T080_TPDOCUPAGO] ON 
GO
INSERT [dbo].[T080_TPDOCUPAGO] ([idtpDocuPago], [codDocuPago], [descripcion]) VALUES (1, N'CMP001', N'Facturas')
GO
INSERT [dbo].[T080_TPDOCUPAGO] ([idtpDocuPago], [codDocuPago], [descripcion]) VALUES (2, N'CMP002', N'Recibos por honorarios')
GO
INSERT [dbo].[T080_TPDOCUPAGO] ([idtpDocuPago], [codDocuPago], [descripcion]) VALUES (3, N'CMP003', N'Boletas de venta')
GO
INSERT [dbo].[T080_TPDOCUPAGO] ([idtpDocuPago], [codDocuPago], [descripcion]) VALUES (4, N'CMP004', N'Liquidaciones de compra')
GO
INSERT [dbo].[T080_TPDOCUPAGO] ([idtpDocuPago], [codDocuPago], [descripcion]) VALUES (5, N'CMP005', N'Tickets o cintas emitidos por máquinas registradoras')
GO
INSERT [dbo].[T080_TPDOCUPAGO] ([idtpDocuPago], [codDocuPago], [descripcion]) VALUES (6, N'CMP006', N'Ticket POS')
GO
INSERT [dbo].[T080_TPDOCUPAGO] ([idtpDocuPago], [codDocuPago], [descripcion]) VALUES (7, N'CMP007', N'Ticket Monedero Electrónico')
GO
SET IDENTITY_INSERT [dbo].[T080_TPDOCUPAGO] OFF
GO
SET IDENTITY_INSERT [dbo].[T109_ESTADOCITA] ON 
GO
INSERT [dbo].[T109_ESTADOCITA] ([idEstadoCita], [codEstadoCita], [estado], [origen]) VALUES (1, N'E1', N'RESERVADO', N'se genera cuando el paciente realiza una reserva telefónica de una cita (solo consulta)')
GO
INSERT [dbo].[T109_ESTADOCITA] ([idEstadoCita], [codEstadoCita], [estado], [origen]) VALUES (2, N'E2', N'REPROGRAMADO', N'se genera cuando el paciente reprograma su cita (consulta o procedimiento)')
GO
INSERT [dbo].[T109_ESTADOCITA] ([idEstadoCita], [codEstadoCita], [estado], [origen]) VALUES (3, N'E3', N'ATENDIDO', N'se genera luego de guardar el registro la cita (consulta o procedimiento)')
GO
INSERT [dbo].[T109_ESTADOCITA] ([idEstadoCita], [codEstadoCita], [estado], [origen]) VALUES (4, N'E4', N'EN ESPERA', N'se genera luego de realizado el pago de la cita en admisión (consulta o procedimiento)')
GO
INSERT [dbo].[T109_ESTADOCITA] ([idEstadoCita], [codEstadoCita], [estado], [origen]) VALUES (5, N'E5', N'FINALIZADO', N'se genera al generar  el informe final del procedimiento (neurologia, cardiologia)')
GO
INSERT [dbo].[T109_ESTADOCITA] ([idEstadoCita], [codEstadoCita], [estado], [origen]) VALUES (6, N'E6', N'ANULADO', N'se genera cuando el paciente no asiste a su cita (consulta) y no ha realizado pago)')
GO
INSERT [dbo].[T109_ESTADOCITA] ([idEstadoCita], [codEstadoCita], [estado], [origen]) VALUES (7, N'E7', N'ABANDONADO', N'se genera cuando el paciente no asiste a su cita (consulta) pese a haberla pagado)')
GO
SET IDENTITY_INSERT [dbo].[T109_ESTADOCITA] OFF
GO
SET IDENTITY_INSERT [dbo].[T120_EMPLEADO] ON 
GO
INSERT [dbo].[T120_EMPLEADO] ([idEmpleado], [codEmpleado], [descArea], [cargo], [fecIngreso], [salario], [genero], [idtpEmpleado], [idPersona], [estado], [fechabaja]) VALUES (1, NULL, N'Admision', N'Admisionista', CAST(N'2020-01-02' AS Date), NULL, NULL, 109, 1, N'1           ', NULL)
GO
INSERT [dbo].[T120_EMPLEADO] ([idEmpleado], [codEmpleado], [descArea], [cargo], [fecIngreso], [salario], [genero], [idtpEmpleado], [idPersona], [estado], [fechabaja]) VALUES (2, NULL, N'Medicina', N'Med Gral', CAST(N'2020-06-17' AS Date), NULL, NULL, 110, 2, N'1           ', NULL)
GO
INSERT [dbo].[T120_EMPLEADO] ([idEmpleado], [codEmpleado], [descArea], [cargo], [fecIngreso], [salario], [genero], [idtpEmpleado], [idPersona], [estado], [fechabaja]) VALUES (3, NULL, N'Medicina', N'Med Triaje', CAST(N'2020-06-17' AS Date), NULL, NULL, 111, 3, N'1           ', NULL)
GO
INSERT [dbo].[T120_EMPLEADO] ([idEmpleado], [codEmpleado], [descArea], [cargo], [fecIngreso], [salario], [genero], [idtpEmpleado], [idPersona], [estado], [fechabaja]) VALUES (4, NULL, N'Medicina', N'Med Laboratorio', CAST(N'2020-06-17' AS Date), NULL, NULL, 112, 4, N'1           ', NULL)
GO
INSERT [dbo].[T120_EMPLEADO] ([idEmpleado], [codEmpleado], [descArea], [cargo], [fecIngreso], [salario], [genero], [idtpEmpleado], [idPersona], [estado], [fechabaja]) VALUES (5, NULL, N'Medicina', N'Med Psicologic', CAST(N'2020-06-17' AS Date), NULL, NULL, 109, 5, N'1           ', NULL)
GO
INSERT [dbo].[T120_EMPLEADO] ([idEmpleado], [codEmpleado], [descArea], [cargo], [fecIngreso], [salario], [genero], [idtpEmpleado], [idPersona], [estado], [fechabaja]) VALUES (6, NULL, N'Medicina', N'Med Ambulance', CAST(N'2020-06-17' AS Date), NULL, NULL, 110, 6, N'1           ', NULL)
GO
INSERT [dbo].[T120_EMPLEADO] ([idEmpleado], [codEmpleado], [descArea], [cargo], [fecIngreso], [salario], [genero], [idtpEmpleado], [idPersona], [estado], [fechabaja]) VALUES (7, N'7', N'Medicina', N'Med Auxiliar', CAST(N'2020-06-22' AS Date), 1000, N'7', 111, 7, N'1           ', NULL)
GO
INSERT [dbo].[T120_EMPLEADO] ([idEmpleado], [codEmpleado], [descArea], [cargo], [fecIngreso], [salario], [genero], [idtpEmpleado], [idPersona], [estado], [fechabaja]) VALUES (8, N'8', N'Medicina', N'Med Ambulancia', CAST(N'2020-06-22' AS Date), 1500, N'7', 112, 8, N'2           ', CAST(N'2020-06-27' AS Date))
GO
SET IDENTITY_INSERT [dbo].[T120_EMPLEADO] OFF
GO
SET IDENTITY_INSERT [dbo].[T120_ESPECIALIDAD] ON 
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (1, N'E001', N'', N'Oftalmologo', N'1', N'Oftalmologo')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (2, N'E002', N'', N'Pediatria', N'2', N'Pediatria')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (3, N'E003', N'', N'Cardiologo', N'3', N'Cardiologo')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (4, N'E004', N'', N'Infectologo', N'4', N'Infectologo')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (5, N'E005', N'', N'CIRUGIA GENERAL Y LAPAROSCOPICA', N'CE0001', N'CIRUGIA PEDIATRICA')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (6, N'E006', N'', N'CIRUGIA GENERAL Y ONCOLOGICA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (7, N'E007', N'', N'DERMATOLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (8, N'E008', N'', N'RADIOLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (9, N'E009', N'', N'ENDOCRINOLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (10, N'E010', N'', N'ENFERMERIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (11, N'E0011', N'', N'GASTROENTEROLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (12, N'E012', N'', N'GERIATRIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (13, N'E013', N'', N'GINECOLOGIA Y OBSTETRICIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (14, N'E014', N'', N'GINECOLOGIA ONCOLOGICA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (15, N'E015', N'', N'HEMATOLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (16, N'E016', N'', N'MASTOLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (17, N'E017', N'', N'MEDICINA FISICA Y REHABILITACION', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (18, N'E018', N'', N'MEDICINA GENERAL', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (19, N'E019', N'', N'MEDICINA INTERNA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (20, N'E020', N'', N'NEFROLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (21, N'E021', N'', N'NEUMOLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (22, N'E022', N'', N'NEUROCIRUGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (23, N'E023', N'', N'NEUROLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (24, N'E024', N'', N'NUTRICION Y DIETETICA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (25, N'E025', N'', N'ODONTOLOGIA INTEGRAL', N'CE0002', N'REHABILITACION ORAL')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (26, N'E025', N'', N'ODONTOLOGIA INTEGRAL', N'CE0003', N'PERIODONCIA  E IMPLANTES')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (27, N'E025', N'', N'ODONTOLOGIA INTEGRAL ', N'CE0004', N'ODONTOPEDIATRIA')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (28, N'E025', N'', N'ODONTOLOGIA INTEGRAL', N'CE0005', N'ORTODONCIA')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (29, N'E025', N'', N'ODONTOLOGIA INTEGRAL', N'CE0006', N'ENDODONCIA')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (30, N'E025', N'', N'ODONTOLOGIA INTEGRAL', N'CE0007', N'CIRUGIA BUCAL MAXILO FACIAL')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (31, N'E026', N'', N'OFTALMOLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (32, N'E027', N'', N'OTORRINOLARINGOLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (33, N'E028', N'', N'PEDIATRIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (34, N'E029', N'', N'PSICOLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (35, N'E030', N'', N'REUMATOLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (36, N'E031', N'', N'PSIQUIATRIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (37, N'E032', N'', N'TRAUMATOLOGIA Y ORTOPEDIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (38, N'E033', N'', N'UROLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (39, N'E034', N'', N'MEDICINA DE EMERGENCIAS Y DESASTRES', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (40, N'E035', N'', N'ANESTESIOLOGIA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (41, N'E036', N'', N'AUDITORIA MEDICA', N'', N'')
GO
INSERT [dbo].[T120_ESPECIALIDAD] ([idEspecialidad], [codEspecial], [codSigesa], [descripcion], [codSubEspecial], [descSubEspecial]) VALUES (42, N'E037', N'', N'TERAPIA FISICA Y REHABILITACION', N'', N'')
GO
SET IDENTITY_INSERT [dbo].[T120_ESPECIALIDAD] OFF
GO
SET IDENTITY_INSERT [dbo].[T126_GPOSANGRE] ON 
GO
INSERT [dbo].[T126_GPOSANGRE] ([idgpoSangre], [codgpoSangre], [descripcion], [abreviatura]) VALUES (1, N'G00001', N'AB POSITIVO', N'AB+ ')
GO
INSERT [dbo].[T126_GPOSANGRE] ([idgpoSangre], [codgpoSangre], [descripcion], [abreviatura]) VALUES (2, N'G00002', N'AB NEGATIVO', N'AB- ')
GO
INSERT [dbo].[T126_GPOSANGRE] ([idgpoSangre], [codgpoSangre], [descripcion], [abreviatura]) VALUES (3, N'G00003', N'A POSITIVO', N'A+  ')
GO
INSERT [dbo].[T126_GPOSANGRE] ([idgpoSangre], [codgpoSangre], [descripcion], [abreviatura]) VALUES (4, N'G00004', N'A NEGATIVO', N'A-  ')
GO
INSERT [dbo].[T126_GPOSANGRE] ([idgpoSangre], [codgpoSangre], [descripcion], [abreviatura]) VALUES (5, N'G00005', N'B POSITIVO', N'B+  ')
GO
INSERT [dbo].[T126_GPOSANGRE] ([idgpoSangre], [codgpoSangre], [descripcion], [abreviatura]) VALUES (6, N'G00006', N'B NEGATIVO', N'B-  ')
GO
INSERT [dbo].[T126_GPOSANGRE] ([idgpoSangre], [codgpoSangre], [descripcion], [abreviatura]) VALUES (7, N'G00007', N'O POSITIVO', N'O+  ')
GO
INSERT [dbo].[T126_GPOSANGRE] ([idgpoSangre], [codgpoSangre], [descripcion], [abreviatura]) VALUES (8, N'G00008', N'O NEGATIVO', N'O-  ')
GO
INSERT [dbo].[T126_GPOSANGRE] ([idgpoSangre], [codgpoSangre], [descripcion], [abreviatura]) VALUES (9, N'G00009', N'REFIEREO', N'    ')
GO
SET IDENTITY_INSERT [dbo].[T126_GPOSANGRE] OFF
GO
SET IDENTITY_INSERT [dbo].[T172_TPDOCUMENTO] ON 
GO
INSERT [dbo].[T172_TPDOCUMENTO] ([idtpDocumento], [codtpDocumento], [descripcion], [abreviatura], [fuente]) VALUES (1, N'TPD001', N'LIBRETA ELECTORAL O DNI', N'L.E / DNI   ', N'www.sunat.gob.pe/pdt/pdtModulos/independientes/p695/TipoDoc.htm')
GO
INSERT [dbo].[T172_TPDOCUMENTO] ([idtpDocumento], [codtpDocumento], [descripcion], [abreviatura], [fuente]) VALUES (2, N'TPD002', N'CARNET DE EXTRANJERIA', N'CARNET EXT  ', N'www.sunat.gob.pe/pdt/pdtModulos/independientes/p695/TipoDoc.htm')
GO
INSERT [dbo].[T172_TPDOCUMENTO] ([idtpDocumento], [codtpDocumento], [descripcion], [abreviatura], [fuente]) VALUES (3, N'TPD003', N'REGISTRO UNICO DE CONTRIBUYENTES', N'RUC         ', N'www.sunat.gob.pe/pdt/pdtModulos/independientes/p695/TipoDoc.htm')
GO
INSERT [dbo].[T172_TPDOCUMENTO] ([idtpDocumento], [codtpDocumento], [descripcion], [abreviatura], [fuente]) VALUES (4, N'TPD004', N'PASAPORTE', N'            ', N'www.sunat.gob.pe/pdt/pdtModulos/independientes/p695/TipoDoc.htm')
GO
INSERT [dbo].[T172_TPDOCUMENTO] ([idtpDocumento], [codtpDocumento], [descripcion], [abreviatura], [fuente]) VALUES (5, N'TPD005', N'PARTIDA DE NACIMIENTO- IDENTIDAD', N'P. NAC.     ', N'www.sunat.gob.pe/pdt/pdtModulos/independientes/p695/TipoDoc.htm')
GO
INSERT [dbo].[T172_TPDOCUMENTO] ([idtpDocumento], [codtpDocumento], [descripcion], [abreviatura], [fuente]) VALUES (6, N'TPD006', N'OTROS', N'            ', N'www.sunat.gob.pe/pdt/pdtModulos/independientes/p695/TipoDoc.htm')
GO
SET IDENTITY_INSERT [dbo].[T172_TPDOCUMENTO] OFF
GO
SET IDENTITY_INSERT [dbo].[T185_FACTORRH] ON 
GO
INSERT [dbo].[T185_FACTORRH] ([idFactorrh], [codFactorrh], [descripcion], [fuente]) VALUES (1, N'DHC035', N'POSITIVIO+', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T185_FACTORRH] ([idFactorrh], [codFactorrh], [descripcion], [fuente]) VALUES (2, N'DHC035', N'NEGATIVO-', N'NTS N° 139 MINSA/2018/DGAIN')
GO
SET IDENTITY_INSERT [dbo].[T185_FACTORRH] OFF
GO
SET IDENTITY_INSERT [dbo].[T192_PARENTESCO] ON 
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (1, N'ANP001', N'PADRE', N'P   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (2, N'ANP002', N'MADRE', N'M   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (3, N'ANP003', N'HIJO/A', N'H   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (4, N'ANP004', N'ABUELA/O', N'A   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (5, N'ANP005', N'TIA/O', N'T   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (6, N'ANP006', N'NIETA/O', N'N   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (7, N'ANP007', N'PADRASTRO', N'PA  ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (8, N'ANP008', N'MADRASTRA', N'MA  ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (9, N'ANP009', N'SOBRINA/O', N'S   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (10, N'ANP010', N'PRIMA/O', N'PR  ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (11, N'ANP011', N'BIS-ABUELA/O', N'BA  ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (12, N'ANP012', N'AMIGA/O', N'AMG ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (13, N'ANP013', N'YERNO', N'Y   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T192_PARENTESCO] ([idParentesco], [codParentesco], [descripcion], [abreviatura], [fuente]) VALUES (14, N'ANP014', N'NUERA', N'NA  ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
SET IDENTITY_INSERT [dbo].[T192_PARENTESCO] OFF
GO
SET IDENTITY_INSERT [dbo].[T199_ESTCIVIL] ON 
GO
INSERT [dbo].[T199_ESTCIVIL] ([idEstCivil], [codEstCivil], [descripcion], [abreviatura], [fuente]) VALUES (1, N'EDC001', N'SOLTERA/O', N'S    ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T199_ESTCIVIL] ([idEstCivil], [codEstCivil], [descripcion], [abreviatura], [fuente]) VALUES (2, N'EDC002', N'CONVIVIENTE', N'CO   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T199_ESTCIVIL] ([idEstCivil], [codEstCivil], [descripcion], [abreviatura], [fuente]) VALUES (3, N'EDC003', N'CASADA/O', N'C    ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T199_ESTCIVIL] ([idEstCivil], [codEstCivil], [descripcion], [abreviatura], [fuente]) VALUES (4, N'EDC004', N'SEPARADA/O', N'SP   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T199_ESTCIVIL] ([idEstCivil], [codEstCivil], [descripcion], [abreviatura], [fuente]) VALUES (5, N'EDC005', N'DIVORCIADA/O', N'D    ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T199_ESTCIVIL] ([idEstCivil], [codEstCivil], [descripcion], [abreviatura], [fuente]) VALUES (6, N'EDC006', N'VIUDA/O', N'V    ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T199_ESTCIVIL] ([idEstCivil], [codEstCivil], [descripcion], [abreviatura], [fuente]) VALUES (7, N'EDC007', N'OTROS', N'O    ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
SET IDENTITY_INSERT [dbo].[T199_ESTCIVIL] OFF
GO
SET IDENTITY_INSERT [dbo].[T200_OCUPACION] ON 
GO
INSERT [dbo].[T200_OCUPACION] ([idOcupacion], [codOcupacion], [descripcion], [abreviatura], [fuente]) VALUES (1, N'DHO001', N'TRABAJADOR/A ESTABLE', N'S   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T200_OCUPACION] ([idOcupacion], [codOcupacion], [descripcion], [abreviatura], [fuente]) VALUES (2, N'DHO002', N'EVENTUAL', N'V   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T200_OCUPACION] ([idOcupacion], [codOcupacion], [descripcion], [abreviatura], [fuente]) VALUES (3, N'EDC003', N'SIN OCUPACION', N'SO  ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T200_OCUPACION] ([idOcupacion], [codOcupacion], [descripcion], [abreviatura], [fuente]) VALUES (4, N'EDC004', N'JUBILADA/O', N'J   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
INSERT [dbo].[T200_OCUPACION] ([idOcupacion], [codOcupacion], [descripcion], [abreviatura], [fuente]) VALUES (5, N'EDC005', N'ESTUDIANTE', N'E   ', N'NTS N° 139 MINSA/2018/DGAIN')
GO
SET IDENTITY_INSERT [dbo].[T200_OCUPACION] OFF
GO
SET IDENTITY_INSERT [dbo].[T212_MEDICO] ON 
GO
INSERT [dbo].[T212_MEDICO] ([idMedico], [codMedico], [nroColegio], [nroRne], [nroRuc], [idtpDocumento], [condicion], [idEmpleado], [idEspecialidad], [idPersona], [estado], [fechabaja]) VALUES (1, N'1', 13450, N'12445', 109399391, 1, NULL, 1, 126, 1, N'1', NULL)
GO
INSERT [dbo].[T212_MEDICO] ([idMedico], [codMedico], [nroColegio], [nroRne], [nroRuc], [idtpDocumento], [condicion], [idEmpleado], [idEspecialidad], [idPersona], [estado], [fechabaja]) VALUES (2, N'2', 32342, N'23232', 209399002, 1, NULL, 2, 127, 2, N'1', NULL)
GO
INSERT [dbo].[T212_MEDICO] ([idMedico], [codMedico], [nroColegio], [nroRne], [nroRuc], [idtpDocumento], [condicion], [idEmpleado], [idEspecialidad], [idPersona], [estado], [fechabaja]) VALUES (3, N'3', 32343, N'23453', 109399392, 1, NULL, 3, 128, 3, N'1', NULL)
GO
INSERT [dbo].[T212_MEDICO] ([idMedico], [codMedico], [nroColegio], [nroRne], [nroRuc], [idtpDocumento], [condicion], [idEmpleado], [idEspecialidad], [idPersona], [estado], [fechabaja]) VALUES (4, N'4', 34345, N'23254', 209302393, 1, NULL, 4, 129, 4, N'1', NULL)
GO
INSERT [dbo].[T212_MEDICO] ([idMedico], [codMedico], [nroColegio], [nroRne], [nroRuc], [idtpDocumento], [condicion], [idEmpleado], [idEspecialidad], [idPersona], [estado], [fechabaja]) VALUES (5, NULL, 12345, NULL, NULL, 109, NULL, 5, 15, 5, N'1', NULL)
GO
INSERT [dbo].[T212_MEDICO] ([idMedico], [codMedico], [nroColegio], [nroRne], [nroRuc], [idtpDocumento], [condicion], [idEmpleado], [idEspecialidad], [idPersona], [estado], [fechabaja]) VALUES (6, N'6', 13231, N'10011', 203213235, 1, NULL, 6, 131, 6, N'1', NULL)
GO
INSERT [dbo].[T212_MEDICO] ([idMedico], [codMedico], [nroColegio], [nroRne], [nroRuc], [idtpDocumento], [condicion], [idEmpleado], [idEspecialidad], [idPersona], [estado], [fechabaja]) VALUES (7, N'7', 12346, N'10012', 106789456, 1, NULL, 7, 132, 7, N'1', NULL)
GO
INSERT [dbo].[T212_MEDICO] ([idMedico], [codMedico], [nroColegio], [nroRne], [nroRuc], [idtpDocumento], [condicion], [idEmpleado], [idEspecialidad], [idPersona], [estado], [fechabaja]) VALUES (8, N'8', 12312, N'20000', 202312007, 1, NULL, 8, 133, 8, N'1', NULL)
GO
INSERT [dbo].[T212_MEDICO] ([idMedico], [codMedico], [nroColegio], [nroRne], [nroRuc], [idtpDocumento], [condicion], [idEmpleado], [idEspecialidad], [idPersona], [estado], [fechabaja]) VALUES (9, NULL, 56470, NULL, NULL, 109, NULL, 1, 15, 1, N'1', NULL)
GO
INSERT [dbo].[T212_MEDICO] ([idMedico], [codMedico], [nroColegio], [nroRne], [nroRuc], [idtpDocumento], [condicion], [idEmpleado], [idEspecialidad], [idPersona], [estado], [fechabaja]) VALUES (10, N'10', 12312, N'20010', 203123120, 1, NULL, 2, 135, 10, N'1', NULL)
GO
SET IDENTITY_INSERT [dbo].[T212_MEDICO] OFF
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (1, N'CENTRO QUIRURGICO', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (2, N'CONSULTA AMBULATORIA', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (3, N'DENSITOMETRIA', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (4, N'ECOGRAFIAS', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (5, N'EMERGENCIA', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (6, N'HOSPITALIZACION', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (7, N'LABORATORIO', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (8, N'OD. CIRUGIA DENTAL', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (9, N'COD. INTEGRAL', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (10, N'OD. ORTODONCIA', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (11, N'OD. PROTESIS', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (12, N'ODONTOLOGIA', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (13, N'PEDIATRIA PD', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (14, N'RAYOS X', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (15, N'SALA DE PROCEDIMIENTOS', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (16, N'SANIDAD', N'          ')
GO
INSERT [dbo].[T218_SERVICIOSCLI] ([idservicioCli], [descripcion], [estado]) VALUES (17, N'TOMOGRAFIA Y RESONANCIAS', N'          ')
GO
ALTER TABLE [dbo].[D015_PAGO] ADD  CONSTRAINT [dfPagoFecRegistro]  DEFAULT (getdate()) FOR [fecRegistro]
GO
ALTER TABLE [dbo].[D00_TBDETALLE]  WITH CHECK ADD  CONSTRAINT [fk_gralDeta] FOREIGN KEY([idTab])
REFERENCES [dbo].[D00_TBGENERAL] ([idTab])
GO
ALTER TABLE [dbo].[D00_TBDETALLE] CHECK CONSTRAINT [fk_gralDeta]
GO
ALTER TABLE [dbo].[D001_USUARIO]  WITH CHECK ADD  CONSTRAINT [fk_usuEmp] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[T120_EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[D001_USUARIO] CHECK CONSTRAINT [fk_usuEmp]
GO
ALTER TABLE [dbo].[D002_PERFIL]  WITH CHECK ADD  CONSTRAINT [fk_perfUsuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[D001_USUARIO] ([idUsuario])
GO
ALTER TABLE [dbo].[D002_PERFIL] CHECK CONSTRAINT [fk_perfUsuario]
GO
ALTER TABLE [dbo].[D003_PERMISO]  WITH CHECK ADD  CONSTRAINT [fk_permiModulo] FOREIGN KEY([idModulo])
REFERENCES [dbo].[D004_MODULO] ([idModulo])
GO
ALTER TABLE [dbo].[D003_PERMISO] CHECK CONSTRAINT [fk_permiModulo]
GO
ALTER TABLE [dbo].[D005_MENU]  WITH CHECK ADD  CONSTRAINT [fk_menuModulo] FOREIGN KEY([idModulo])
REFERENCES [dbo].[D004_MODULO] ([idModulo])
GO
ALTER TABLE [dbo].[D005_MENU] CHECK CONSTRAINT [fk_menuModulo]
GO
ALTER TABLE [dbo].[D006_PERMISOPERFIL]  WITH CHECK ADD  CONSTRAINT [fk_perfilDetail] FOREIGN KEY([idPerfil])
REFERENCES [dbo].[D002_PERFIL] ([idPerfil])
GO
ALTER TABLE [dbo].[D006_PERMISOPERFIL] CHECK CONSTRAINT [fk_perfilDetail]
GO
ALTER TABLE [dbo].[D006_PERMISOPERFIL]  WITH CHECK ADD  CONSTRAINT [fk_permisoDetail] FOREIGN KEY([idPermiso])
REFERENCES [dbo].[D003_PERMISO] ([idPermiso])
GO
ALTER TABLE [dbo].[D006_PERMISOPERFIL] CHECK CONSTRAINT [fk_permisoDetail]
GO
ALTER TABLE [dbo].[D009_EMPRCONVENIODET]  WITH CHECK ADD  CONSTRAINT [fk_empconvDeta] FOREIGN KEY([idemprConvenio])
REFERENCES [dbo].[T011_EMPRCONVENIO] ([idemprConvenio])
GO
ALTER TABLE [dbo].[D009_EMPRCONVENIODET] CHECK CONSTRAINT [fk_empconvDeta]
GO
ALTER TABLE [dbo].[D011_UBIGEONACE]  WITH CHECK ADD  CONSTRAINT [fk_ubiNace] FOREIGN KEY([idUbigeo])
REFERENCES [dbo].[D011_UBIGEO] ([idUbigeo])
GO
ALTER TABLE [dbo].[D011_UBIGEONACE] CHECK CONSTRAINT [fk_ubiNace]
GO
ALTER TABLE [dbo].[D011_UBIGEORESIDE]  WITH CHECK ADD  CONSTRAINT [fk_ubiResi] FOREIGN KEY([idUbigeo])
REFERENCES [dbo].[D011_UBIGEO] ([idUbigeo])
GO
ALTER TABLE [dbo].[D011_UBIGEORESIDE] CHECK CONSTRAINT [fk_ubiResi]
GO
ALTER TABLE [dbo].[D012_CRONOMEDICO]  WITH CHECK ADD  CONSTRAINT [fk_cronoConsul] FOREIGN KEY([idConsultorio])
REFERENCES [dbo].[D008_CONSULTORIO] ([idConsultorio])
GO
ALTER TABLE [dbo].[D012_CRONOMEDICO] CHECK CONSTRAINT [fk_cronoConsul]
GO
ALTER TABLE [dbo].[D012_CRONOMEDICO]  WITH CHECK ADD  CONSTRAINT [fk_cronoMedico] FOREIGN KEY([idMedico])
REFERENCES [dbo].[T212_MEDICO] ([idMedico])
GO
ALTER TABLE [dbo].[D012_CRONOMEDICO] CHECK CONSTRAINT [fk_cronoMedico]
GO
ALTER TABLE [dbo].[D013_CRONOCONSULTORIO]  WITH CHECK ADD  CONSTRAINT [fk_consCronoConsul] FOREIGN KEY([idConsultorio])
REFERENCES [dbo].[D008_CONSULTORIO] ([idConsultorio])
GO
ALTER TABLE [dbo].[D013_CRONOCONSULTORIO] CHECK CONSTRAINT [fk_consCronoConsul]
GO
ALTER TABLE [dbo].[D014_CONSULESPDET]  WITH CHECK ADD  CONSTRAINT [fk_conConDet] FOREIGN KEY([idConsultorio])
REFERENCES [dbo].[D008_CONSULTORIO] ([idConsultorio])
GO
ALTER TABLE [dbo].[D014_CONSULESPDET] CHECK CONSTRAINT [fk_conConDet]
GO
ALTER TABLE [dbo].[D014_CONSULESPDET]  WITH CHECK ADD  CONSTRAINT [fk_espConsDet] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[T120_ESPECIALIDAD] ([idEspecialidad])
GO
ALTER TABLE [dbo].[D014_CONSULESPDET] CHECK CONSTRAINT [fk_espConsDet]
GO
ALTER TABLE [dbo].[D014_TELEQUERY]  WITH CHECK ADD  CONSTRAINT [fk_teleqCita] FOREIGN KEY([idCita])
REFERENCES [dbo].[T068_CITA] ([idCita])
GO
ALTER TABLE [dbo].[D014_TELEQUERY] CHECK CONSTRAINT [fk_teleqCita]
GO
ALTER TABLE [dbo].[D014_TELEQUERY]  WITH CHECK ADD  CONSTRAINT [fk_teleqConsul] FOREIGN KEY([idConsultorio])
REFERENCES [dbo].[D008_CONSULTORIO] ([idConsultorio])
GO
ALTER TABLE [dbo].[D014_TELEQUERY] CHECK CONSTRAINT [fk_teleqConsul]
GO
ALTER TABLE [dbo].[D014_TELEQUERY]  WITH CHECK ADD  CONSTRAINT [fk_teleqEspec] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[T120_ESPECIALIDAD] ([idEspecialidad])
GO
ALTER TABLE [dbo].[D014_TELEQUERY] CHECK CONSTRAINT [fk_teleqEspec]
GO
ALTER TABLE [dbo].[D014_TELEQUERY]  WITH CHECK ADD  CONSTRAINT [fk_teleqMed] FOREIGN KEY([idMedico])
REFERENCES [dbo].[T212_MEDICO] ([idMedico])
GO
ALTER TABLE [dbo].[D014_TELEQUERY] CHECK CONSTRAINT [fk_teleqMed]
GO
ALTER TABLE [dbo].[D014_TELEQUERY]  WITH CHECK ADD  CONSTRAINT [fk_teleqPer] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[T000_PERSONA] ([idPersona])
GO
ALTER TABLE [dbo].[D014_TELEQUERY] CHECK CONSTRAINT [fk_teleqPer]
GO
ALTER TABLE [dbo].[D015_PAGO]  WITH CHECK ADD  CONSTRAINT [fk_pagoCita] FOREIGN KEY([idCita])
REFERENCES [dbo].[T068_CITA] ([idCita])
GO
ALTER TABLE [dbo].[D015_PAGO] CHECK CONSTRAINT [fk_pagoCita]
GO
ALTER TABLE [dbo].[D015_PAGO]  WITH CHECK ADD  CONSTRAINT [fk_pagoFormaPag] FOREIGN KEY([idFormaPago])
REFERENCES [dbo].[D019_FORMAPAGO] ([idFormaPago])
GO
ALTER TABLE [dbo].[D015_PAGO] CHECK CONSTRAINT [fk_pagoFormaPag]
GO
ALTER TABLE [dbo].[D015_PAGODETA]  WITH CHECK ADD  CONSTRAINT [fk_detaExamen] FOREIGN KEY([idExamSpecial])
REFERENCES [dbo].[T257_EXAMESPECIAL] ([idExamSpecial])
GO
ALTER TABLE [dbo].[D015_PAGODETA] CHECK CONSTRAINT [fk_detaExamen]
GO
ALTER TABLE [dbo].[D015_PAGODETA]  WITH CHECK ADD  CONSTRAINT [fk_detaLaboratory] FOREIGN KEY([idLaboratorio])
REFERENCES [dbo].[T175_LABORATORIO] ([idLaboratorio])
GO
ALTER TABLE [dbo].[D015_PAGODETA] CHECK CONSTRAINT [fk_detaLaboratory]
GO
ALTER TABLE [dbo].[D015_PAGODETA]  WITH CHECK ADD  CONSTRAINT [fk_detaPago] FOREIGN KEY([idPago])
REFERENCES [dbo].[D015_PAGO] ([idPago])
GO
ALTER TABLE [dbo].[D015_PAGODETA] CHECK CONSTRAINT [fk_detaPago]
GO
ALTER TABLE [dbo].[D015_PAGODETA]  WITH CHECK ADD  CONSTRAINT [fk_detaReceta] FOREIGN KEY([idReceta])
REFERENCES [dbo].[T213_RECETAELEC] ([idReceta])
GO
ALTER TABLE [dbo].[D015_PAGODETA] CHECK CONSTRAINT [fk_detaReceta]
GO
ALTER TABLE [dbo].[D015_PAGODETA]  WITH CHECK ADD  CONSTRAINT [fk_detaServicio] FOREIGN KEY([idservicioCli])
REFERENCES [dbo].[T218_SERVICIOSCLI] ([idservicioCli])
GO
ALTER TABLE [dbo].[D015_PAGODETA] CHECK CONSTRAINT [fk_detaServicio]
GO
ALTER TABLE [dbo].[D016_DETLABORATORIO]  WITH CHECK ADD  CONSTRAINT [fk_detLaborCita] FOREIGN KEY([idCita])
REFERENCES [dbo].[T068_CITA] ([idCita])
GO
ALTER TABLE [dbo].[D016_DETLABORATORIO] CHECK CONSTRAINT [fk_detLaborCita]
GO
ALTER TABLE [dbo].[D016_DETLABORATORIO]  WITH CHECK ADD  CONSTRAINT [fk_detLaboroLab] FOREIGN KEY([idLaboratorio])
REFERENCES [dbo].[T175_LABORATORIO] ([idLaboratorio])
GO
ALTER TABLE [dbo].[D016_DETLABORATORIO] CHECK CONSTRAINT [fk_detLaboroLab]
GO
ALTER TABLE [dbo].[D016_DETRECETA]  WITH CHECK ADD  CONSTRAINT [fk_detReceta] FOREIGN KEY([idReceta])
REFERENCES [dbo].[T213_RECETAELEC] ([idReceta])
GO
ALTER TABLE [dbo].[D016_DETRECETA] CHECK CONSTRAINT [fk_detReceta]
GO
ALTER TABLE [dbo].[D016_DETRECETA]  WITH CHECK ADD  CONSTRAINT [fk_detRecetaMedica] FOREIGN KEY([idMedicaNrcg])
REFERENCES [dbo].[T007_MEDICAMENTONRCG] ([idMedicaNrcg])
GO
ALTER TABLE [dbo].[D016_DETRECETA] CHECK CONSTRAINT [fk_detRecetaMedica]
GO
ALTER TABLE [dbo].[D018_DETEXAMEN]  WITH CHECK ADD  CONSTRAINT [fk_detExamCita] FOREIGN KEY([idCita])
REFERENCES [dbo].[T068_CITA] ([idCita])
GO
ALTER TABLE [dbo].[D018_DETEXAMEN] CHECK CONSTRAINT [fk_detExamCita]
GO
ALTER TABLE [dbo].[D018_DETEXAMEN]  WITH CHECK ADD  CONSTRAINT [fk_detExamSpec] FOREIGN KEY([idExamSpecial])
REFERENCES [dbo].[T257_EXAMESPECIAL] ([idExamSpecial])
GO
ALTER TABLE [dbo].[D018_DETEXAMEN] CHECK CONSTRAINT [fk_detExamSpec]
GO
ALTER TABLE [dbo].[D020_TARJETA]  WITH CHECK ADD  CONSTRAINT [fk_tarjetaPago] FOREIGN KEY([idPago])
REFERENCES [dbo].[D015_PAGO] ([idPago])
GO
ALTER TABLE [dbo].[D020_TARJETA] CHECK CONSTRAINT [fk_tarjetaPago]
GO
ALTER TABLE [dbo].[D020_TARJETA]  WITH CHECK ADD  CONSTRAINT [fk_tarjTargetCred] FOREIGN KEY([idTarjCredito])
REFERENCES [dbo].[D021_TARJETACREDIT] ([idTarjCredito])
GO
ALTER TABLE [dbo].[D020_TARJETA] CHECK CONSTRAINT [fk_tarjTargetCred]
GO
ALTER TABLE [dbo].[D023_TBLICENCIA]  WITH CHECK ADD  CONSTRAINT [fk_licencyCita] FOREIGN KEY([idCita])
REFERENCES [dbo].[T068_CITA] ([idCita])
GO
ALTER TABLE [dbo].[D023_TBLICENCIA] CHECK CONSTRAINT [fk_licencyCita]
GO
ALTER TABLE [dbo].[D023_TBLICENCIA]  WITH CHECK ADD  CONSTRAINT [fk_licencyCrono] FOREIGN KEY([idProgramMedica])
REFERENCES [dbo].[D012_CRONOMEDICO] ([idProgramMedica])
GO
ALTER TABLE [dbo].[D023_TBLICENCIA] CHECK CONSTRAINT [fk_licencyCrono]
GO
ALTER TABLE [dbo].[D023_TBLICENCIA]  WITH CHECK ADD  CONSTRAINT [fk_licencyMed] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[T120_EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[D023_TBLICENCIA] CHECK CONSTRAINT [fk_licencyMed]
GO
ALTER TABLE [dbo].[D025_ASIGNACAJA]  WITH CHECK ADD  CONSTRAINT [fk_cajaAdmicion] FOREIGN KEY([idCaja])
REFERENCES [dbo].[D024_CAJA] ([idCaja])
GO
ALTER TABLE [dbo].[D025_ASIGNACAJA] CHECK CONSTRAINT [fk_cajaAdmicion]
GO
ALTER TABLE [dbo].[D025_ASIGNACAJA]  WITH CHECK ADD  CONSTRAINT [fk_cajaEmpl] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[T120_EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[D025_ASIGNACAJA] CHECK CONSTRAINT [fk_cajaEmpl]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgAtcSustancia] FOREIGN KEY([idAtcSustancia])
REFERENCES [dbo].[T146_ATCSUSTANCIA] ([idAtcSustancia])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgAtcSustancia]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgCie10Especial] FOREIGN KEY([idCIE10Especial])
REFERENCES [dbo].[T147_CIE10ESPECIALIDAD] ([idCIE10Especial])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgCie10Especial]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgClasiAtencion] FOREIGN KEY([idClasifiAtencion])
REFERENCES [dbo].[T144_CLASIFIATENCION] ([idClasifiAtencion])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgClasiAtencion]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgDatoPacHCE] FOREIGN KEY([idDatospacHCE])
REFERENCES [dbo].[T145_DATOSPACHCE] ([idDatospacHCE])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgDatoPacHCE]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgEstaAtencion] FOREIGN KEY([idEstAtencion])
REFERENCES [dbo].[T129_ESTADOATENCION] ([idEstAtencion])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgEstaAtencion]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgFormatAnxHIS] FOREIGN KEY([idFormatAnxHis])
REFERENCES [dbo].[T140_FORMATOANXHIS] ([idFormatAnxHis])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgFormatAnxHIS]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgPatoGesta] FOREIGN KEY([idPatoGestacion])
REFERENCES [dbo].[T056_PATOGESTACION] ([idPatoGestacion])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgPatoGesta]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgPatoNace] FOREIGN KEY([idPatologiaNace])
REFERENCES [dbo].[T193_PATOLOGIANACE] ([idPatologiaNace])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgPatoNace]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgPerfilSalud] FOREIGN KEY([idPerfilSalud])
REFERENCES [dbo].[T119_PERFILSALUD] ([idPerfilSalud])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgPerfilSalud]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgProtocolo] FOREIGN KEY([idProtocolo])
REFERENCES [dbo].[T149_PROTOCOLO] ([idProtocolo])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgProtocolo]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgRecetaElec] FOREIGN KEY([idtpRecetaElec])
REFERENCES [dbo].[T128_TPRECETAELECTRO] ([idtpRecetaElec])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgRecetaElec]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgSiteds] FOREIGN KEY([idHojaSiteds])
REFERENCES [dbo].[T148_HOJASITEDS] ([idHojaSiteds])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgSiteds]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgtpEmbarazo] FOREIGN KEY([idtpEmbarazo])
REFERENCES [dbo].[T194_TPEMBARAZO] ([idtpEmbarazo])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgtpEmbarazo]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgTpPacFrec] FOREIGN KEY([idtpPacFrecuente])
REFERENCES [dbo].[T139_TPPACFRECUENTE] ([idtpPacFrecuente])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgTpPacFrec]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgTpPartoDeta] FOREIGN KEY([idtpPartoDeta])
REFERENCES [dbo].[T188_TPPARTODETA] ([idtpPartoDeta])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgTpPartoDeta]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcgtpProcPsico] FOREIGN KEY([idtpProcPsico])
REFERENCES [dbo].[T196_TPPROCPSICO] ([idtpProcPsico])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcgtpProcPsico]
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA]  WITH CHECK ADD  CONSTRAINT [fk_hcnPeritorio] FOREIGN KEY([idPeritorio])
REFERENCES [dbo].[T083_PERITORIO] ([idPeritorio])
GO
ALTER TABLE [dbo].[T000_HCGINECOLOGIA] CHECK CONSTRAINT [fk_hcnPeritorio]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcgEdadEvaluaAli] FOREIGN KEY([idEdadEvaluaAli])
REFERENCES [dbo].[T205_EDADEVALUAALI] ([idEdadEvaluaAli])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcgEdadEvaluaAli]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcnAnamneAli] FOREIGN KEY([idAnamnesiAli])
REFERENCES [dbo].[T202_ANAMNESIALI] ([idAnamnesiAli])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcnAnamneAli]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcnAntropome] FOREIGN KEY([idAntropometrico])
REFERENCES [dbo].[T280_ANTROPOMETRICO] ([idAntropometrico])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcnAntropome]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcnEsquemaAli] FOREIGN KEY([idEsquemaAli])
REFERENCES [dbo].[T267_ESQUEMALIMENTO] ([idEsquemaAli])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcnEsquemaAli]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcnEstadoA] FOREIGN KEY([idEstaActual])
REFERENCES [dbo].[T201_ESTADOACTUAL] ([idEstaActual])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcnEstadoA]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcnEstaNutri] FOREIGN KEY([idEstaNutricion])
REFERENCES [dbo].[T208_ESTADONUTRICION] ([idEstaNutricion])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcnEstaNutri]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcnEvaluAli] FOREIGN KEY([idEvaluaAli])
REFERENCES [dbo].[T204_EVALUAALI] ([idEvaluaAli])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcnEvaluAli]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcnFormatNut] FOREIGN KEY([idFormatoNutri])
REFERENCES [dbo].[T277_FORMATONUTRI] ([idFormatoNutri])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcnFormatNut]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcnFrecAli] FOREIGN KEY([idFreconsumoAli])
REFERENCES [dbo].[T203_FRECONSUMOALI] ([idFreconsumoAli])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcnFrecAli]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcngpoNutri] FOREIGN KEY([idgpoNutricion])
REFERENCES [dbo].[T263_GPONUTRICION] ([idgpoNutricion])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcngpoNutri]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcnInventAli] FOREIGN KEY([idInventAlimento])
REFERENCES [dbo].[T268_INVENTALIMENTO] ([idInventAlimento])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcnInventAli]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcnRecomendaNut] FOREIGN KEY([idRecomendaNutri])
REFERENCES [dbo].[T269_RECOMENDANUTRI] ([idRecomendaNutri])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcnRecomendaNut]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcntpLactancia] FOREIGN KEY([idtpLactancia])
REFERENCES [dbo].[T278_TIPOLACTANCIA] ([idtpLactancia])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcntpLactancia]
GO
ALTER TABLE [dbo].[T000_HCNUTRICION]  WITH CHECK ADD  CONSTRAINT [fk_hcnValorNutri] FOREIGN KEY([idvalorNutricion])
REFERENCES [dbo].[T264_VALORNUTRICION] ([idvalorNutricion])
GO
ALTER TABLE [dbo].[T000_HCNUTRICION] CHECK CONSTRAINT [fk_hcnValorNutri]
GO
ALTER TABLE [dbo].[T000_HISTORIACLIDETA]  WITH CHECK ADD  CONSTRAINT [fk_hcDetalle] FOREIGN KEY([idHistoClinica])
REFERENCES [dbo].[T000_HISTORIACLINICA] ([idHistoClinica])
GO
ALTER TABLE [dbo].[T000_HISTORIACLIDETA] CHECK CONSTRAINT [fk_hcDetalle]
GO
ALTER TABLE [dbo].[T000_HISTORIACLINICA]  WITH CHECK ADD  CONSTRAINT [fk_hcEstandar] FOREIGN KEY([idhcEstandar])
REFERENCES [dbo].[T000_HCESTANDAR] ([idhcEstandar])
GO
ALTER TABLE [dbo].[T000_HISTORIACLINICA] CHECK CONSTRAINT [fk_hcEstandar]
GO
ALTER TABLE [dbo].[T000_HISTORIACLINICA]  WITH CHECK ADD  CONSTRAINT [fk_hcGineco] FOREIGN KEY([idhcGineco])
REFERENCES [dbo].[T000_HCGINECOLOGIA] ([idhcGineco])
GO
ALTER TABLE [dbo].[T000_HISTORIACLINICA] CHECK CONSTRAINT [fk_hcGineco]
GO
ALTER TABLE [dbo].[T000_HISTORIACLINICA]  WITH CHECK ADD  CONSTRAINT [fk_hcNutricion] FOREIGN KEY([idhcNutricion])
REFERENCES [dbo].[T000_HCNUTRICION] ([idhcNutricion])
GO
ALTER TABLE [dbo].[T000_HISTORIACLINICA] CHECK CONSTRAINT [fk_hcNutricion]
GO
ALTER TABLE [dbo].[T000_PERSONA]  WITH CHECK ADD  CONSTRAINT [fk_pacciaSeguro] FOREIGN KEY([idciaSeguro])
REFERENCES [dbo].[T018_CIASEGURO] ([idIafa])
GO
ALTER TABLE [dbo].[T000_PERSONA] CHECK CONSTRAINT [fk_pacciaSeguro]
GO
ALTER TABLE [dbo].[T000_PERSONA]  WITH CHECK ADD  CONSTRAINT [fk_pacEmprConvenio] FOREIGN KEY([idemprConvenio])
REFERENCES [dbo].[T011_EMPRCONVENIO] ([idemprConvenio])
GO
ALTER TABLE [dbo].[T000_PERSONA] CHECK CONSTRAINT [fk_pacEmprConvenio]
GO
ALTER TABLE [dbo].[T000_PERSONA]  WITH CHECK ADD  CONSTRAINT [fk_perUbiNace] FOREIGN KEY([idUbigeoNace])
REFERENCES [dbo].[D011_UBIGEONACE] ([idUbigeoNace])
GO
ALTER TABLE [dbo].[T000_PERSONA] CHECK CONSTRAINT [fk_perUbiNace]
GO
ALTER TABLE [dbo].[T000_PERSONA]  WITH CHECK ADD  CONSTRAINT [fk_perUbiReside] FOREIGN KEY([idUbigeoResi])
REFERENCES [dbo].[D011_UBIGEORESIDE] ([idUbigeoResi])
GO
ALTER TABLE [dbo].[T000_PERSONA] CHECK CONSTRAINT [fk_perUbiReside]
GO
ALTER TABLE [dbo].[T001_PACASEGURADO]  WITH CHECK ADD  CONSTRAINT [fk_PacAsegurado] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[T001_PACIENTE] ([idPaciente])
GO
ALTER TABLE [dbo].[T001_PACASEGURADO] CHECK CONSTRAINT [fk_PacAsegurado]
GO
ALTER TABLE [dbo].[T001_PACCONVENIO]  WITH CHECK ADD  CONSTRAINT [fk_pacConvenio] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[T001_PACIENTE] ([idPaciente])
GO
ALTER TABLE [dbo].[T001_PACCONVENIO] CHECK CONSTRAINT [fk_pacConvenio]
GO
ALTER TABLE [dbo].[T001_PACDETA]  WITH CHECK ADD  CONSTRAINT [fk_pacDetalle] FOREIGN KEY([idPacciente])
REFERENCES [dbo].[T001_PACIENTE] ([idPaciente])
GO
ALTER TABLE [dbo].[T001_PACDETA] CHECK CONSTRAINT [fk_pacDetalle]
GO
ALTER TABLE [dbo].[T001_PACIENTE]  WITH CHECK ADD  CONSTRAINT [fk_perPaciente] FOREIGN KEY([idPersona])
REFERENCES [dbo].[T000_PERSONA] ([idPersona])
GO
ALTER TABLE [dbo].[T001_PACIENTE] CHECK CONSTRAINT [fk_perPaciente]
GO
ALTER TABLE [dbo].[T009_TPPRESTACION]  WITH CHECK ADD  CONSTRAINT [fk_docuPagoPrestacion] FOREIGN KEY([idtpDocuPago])
REFERENCES [dbo].[T080_TPDOCUPAGO] ([idtpDocuPago])
GO
ALTER TABLE [dbo].[T009_TPPRESTACION] CHECK CONSTRAINT [fk_docuPagoPrestacion]
GO
ALTER TABLE [dbo].[T023_TARIFAXIAFA]  WITH CHECK ADD  CONSTRAINT [fk_tarixIafa] FOREIGN KEY([idTarifa])
REFERENCES [dbo].[T022_TARIFA] ([idTarifa])
GO
ALTER TABLE [dbo].[T023_TARIFAXIAFA] CHECK CONSTRAINT [fk_tarixIafa]
GO
ALTER TABLE [dbo].[T030_PROCQUIRUGICO]  WITH CHECK ADD  CONSTRAINT [fk_prcQuiTarifa] FOREIGN KEY([idTarifa])
REFERENCES [dbo].[T022_TARIFA] ([idTarifa])
GO
ALTER TABLE [dbo].[T030_PROCQUIRUGICO] CHECK CONSTRAINT [fk_prcQuiTarifa]
GO
ALTER TABLE [dbo].[T046_PROCEXCLUIDO]  WITH CHECK ADD  CONSTRAINT [fk_prcExcluIafa] FOREIGN KEY([idIafa])
REFERENCES [dbo].[T018_CIASEGURO] ([idIafa])
GO
ALTER TABLE [dbo].[T046_PROCEXCLUIDO] CHECK CONSTRAINT [fk_prcExcluIafa]
GO
ALTER TABLE [dbo].[T046_PROCEXCLUIDO]  WITH CHECK ADD  CONSTRAINT [fk_prcExcluTari] FOREIGN KEY([idTarifa])
REFERENCES [dbo].[T022_TARIFA] ([idTarifa])
GO
ALTER TABLE [dbo].[T046_PROCEXCLUIDO] CHECK CONSTRAINT [fk_prcExcluTari]
GO
ALTER TABLE [dbo].[T048_PROCNOGARANTIA]  WITH CHECK ADD  CONSTRAINT [fk_prcNoGaraIafa] FOREIGN KEY([idIafa])
REFERENCES [dbo].[T018_CIASEGURO] ([idIafa])
GO
ALTER TABLE [dbo].[T048_PROCNOGARANTIA] CHECK CONSTRAINT [fk_prcNoGaraIafa]
GO
ALTER TABLE [dbo].[T054_TARIFAXSEGU]  WITH CHECK ADD  CONSTRAINT [fk_tarixSegu] FOREIGN KEY([idTarifa])
REFERENCES [dbo].[T022_TARIFA] ([idTarifa])
GO
ALTER TABLE [dbo].[T054_TARIFAXSEGU] CHECK CONSTRAINT [fk_tarixSegu]
GO
ALTER TABLE [dbo].[T055_PROCFINANCIADOR]  WITH CHECK ADD  CONSTRAINT [fk_prcFinanIafa] FOREIGN KEY([idIafa])
REFERENCES [dbo].[T018_CIASEGURO] ([idIafa])
GO
ALTER TABLE [dbo].[T055_PROCFINANCIADOR] CHECK CONSTRAINT [fk_prcFinanIafa]
GO
ALTER TABLE [dbo].[T076_PROCEDIMIENTO]  WITH CHECK ADD  CONSTRAINT [fk_procEspecial] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[T120_ESPECIALIDAD] ([idEspecialidad])
GO
ALTER TABLE [dbo].[T076_PROCEDIMIENTO] CHECK CONSTRAINT [fk_procEspecial]
GO
ALTER TABLE [dbo].[T120_EMPLEADO]  WITH CHECK ADD  CONSTRAINT [fk_emplPer] FOREIGN KEY([idPersona])
REFERENCES [dbo].[T000_PERSONA] ([idPersona])
GO
ALTER TABLE [dbo].[T120_EMPLEADO] CHECK CONSTRAINT [fk_emplPer]
GO
ALTER TABLE [dbo].[T212_MEDICO]  WITH CHECK ADD  CONSTRAINT [fk_medEmpl] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[T120_EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[T212_MEDICO] CHECK CONSTRAINT [fk_medEmpl]
GO
ALTER TABLE [dbo].[T212_MEDICO]  WITH CHECK ADD  CONSTRAINT [fk_medPer] FOREIGN KEY([idPersona])
REFERENCES [dbo].[T000_PERSONA] ([idPersona])
GO
ALTER TABLE [dbo].[T212_MEDICO] CHECK CONSTRAINT [fk_medPer]
GO
ALTER TABLE [dbo].[T000_PERSONA]  WITH CHECK ADD  CONSTRAINT [chkPersoncel] CHECK  (([celular] like '[0-9]*10'))
GO
ALTER TABLE [dbo].[T000_PERSONA] CHECK CONSTRAINT [chkPersoncel]
GO
ALTER TABLE [dbo].[T000_PERSONA]  WITH CHECK ADD  CONSTRAINT [chkPersondni] CHECK  ((len([dniPersona])<=(8)))
GO
ALTER TABLE [dbo].[T000_PERSONA] CHECK CONSTRAINT [chkPersondni]
GO
ALTER TABLE [dbo].[T000_PERSONA]  WITH CHECK ADD  CONSTRAINT [chkPersonruc] CHECK  ((len([nroRuc])<=(11)))
GO
ALTER TABLE [dbo].[T000_PERSONA] CHECK CONSTRAINT [chkPersonruc]
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarCita]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_ActualizarCita]  (@idCita int, 
	  @codCita int
      ,@nroCita int
      ,@descripcion varchar(80)
      ,@fechaCita datetime
      ,@ultCie10 varchar(10)
      ,@tpAtencion int
      ,@nroHC varchar(10)
      ,@ejecutado char(10)
      ,@prioridad char(10)
      ,@precio decimal (16,2)
      ,@descuento decimal (16,2)
      ,@coa decimal (16,2)
      ,@igv decimal (16,2)
      ,@estadoReprogram char(10)
      ,@tipoCita int
      ,@motivoRepro varchar(80)
      ,@motivoAnula varchar(80)
      ,@idEstadoCita int
      ,@idPaciente int
      ,@idEmpleado int
      ,@idConsultorio int
      ,@idProgramMedica int
      ,@idservicioCli int
      ,@estado char(12) )
as  
begin  
update T068_CITA set codCita =@codCita,
      nroCita 	        =@nroCita ,
      descripcion 	    =@descripcion ,
      fechaCita 	    =@fechaCita ,
      ultCie10 	        =@ultCie10 ,
      tpAtencion 	    =@tpAtencion ,
      nroHC 	        =@nroHC ,
      ejecutado 	    =@ejecutado ,
      prioridad 	    =@prioridad ,
      precio 	        =@precio ,
      descuento 	    =@descuento ,
      coa 	      		=@coa ,
      igv 	      		=@igv ,
      estadoReprogram   =@estadoReprogram ,
      tipoCita 	      	=@tipoCita ,
      motivoRepro 	    =@motivoRepro ,
      motivoAnula 	    =@motivoAnula ,
      idEstadoCita 	    =@idEstadoCita ,
      idPaciente 	    =@idPaciente ,
      idEmpleado 	    =@idEmpleado ,
      idConsultorio 	=@idConsultorio ,
      idProgramMedica 	=@idProgramMedica ,
      idservicioCli 	=@idservicioCli ,
      estado	      =@estado	  
where idCita = @idCita
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarConsultorio]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_ActualizarConsultorio] (@idConsultorio int, @nroConsultorio int, @tpConsultorio int,
@descripcion varchar(45), @area varchar(35), @piso varchar(20), @idEspecialidad int,  @estado varchar(12)) 
as  
begin  
update  D008_CONSULTORIO set
		nroConsultorio = @nroConsultorio,
		tpConsultorio = @tpConsultorio,
		descripcion = @descripcion,		
		area = @area,
		idEspecialidad= @idEspecialidad,
		estado = @estado
where   idConsultorio = @idConsultorio  
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarCronoMedico]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_ActualizarCronoMedico] (@idProgramMedica int, @mes varchar(15), @semana varchar(15),
@dia varchar(15), @fechaIni datetime, @fechaFin datetime, @idMedico int, @idEspecialidad int,  @idConsultorio int,
@hrInicio varchar(6), @hrFin varchar(6), @estado varchar(12)) 
as  
begin  
update  D012_CRONOMEDICO set
		mes = @mes,
		semana = @semana,
		dia = @dia,
		fechaIni = @fechaIni,
		fechaFin = @fechaFin,
		idMedico = @idMedico,
		idEspecialidad = @idEspecialidad,
		idConsultorio = @idConsultorio,
		hrInicio = @hrInicio,
		hrFin = @hrFin,
		estado = @estado
where   idProgramMedica = @idProgramMedica  
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarEmpleado]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_ActualizarEmpleado]
(@idEmpleado int, @codEmpleado varchar(6), @descArea varchar(35), @cargo varchar(30), @fecIngreso date, 
@salario int, @genero varchar(15), @idtpEmpleado int, @idPersona int, @estado varchar(12))  
as  
begin  
update  T120_EMPLEADO set
		codEmpleado = @codEmpleado,
		descArea = @descArea,
		cargo = @cargo,
		fecIngreso = @fecIngreso,
		salario = @salario,
		genero = @genero,
		idtpEmpleado = @idtpEmpleado,
		idPersona = @idPersona,
		estado = @estado
where idEmpleado = @idEmpleado  
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarMedico]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_ActualizarMedico] (@idMedico int, @codMedico varchar(6), @nroColegio varchar(35), @nroRne varchar(30),
@nroRuc int, @idtpDocumento int, @condicion varchar(15), @idEmpleado int, @idEspecialidad int, @idPersona int, @estado varchar(12))  
as  
begin  
update  [dbo].[T212_MEDICO] set
		codMedico = @codMedico,
		nroColegio = @nroColegio,
		nroRne = @nroRne,
		nroRuc = @nroRuc,
		idtpDocumento = @idtpDocumento,
		condicion = @condicion,
		idEmpleado = @idEmpleado,
		idEspecialidad = @idEspecialidad,
		idPersona  = @idPersona,
		estado = @estado
where idMedico = @idMedico  
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarPaciente]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_ActualizarPaciente] (
@idPaciente int, @codPaciente varchar(6), @descripcion varchar(50), @nrohc varchar(15), @nombreAcom varchar(15), @edadAcom int, @dniAcom int, @idgpoSangre int,
@idFactorrh int, @cobertura varchar(25), @ordenAtenMed varchar(15), @nomAsegurado varchar(30), @codAsegurado varchar(15), @poliza varchar(20), @parentesco int,
@iniVigencia datetime, @finVigencia datetime, @tpPlanSalud int, @nroplanSalud int, @estadoSeguro char(10), @tpAfiliacion int, @fecAfiliacion datetime,
@codTitular int, @moneda varchar(25), @nomContratante varchar(35), @tpDocumento int, @dniContratante int, @planSalud varchar(40), @codCobertura int, @beneficio varchar(50),
@restriccion varchar(50), @copagoFijo int, @copagoVariable int, @finCarencia int, @convenio varchar(30), @descuento decimal(16,0), @codPaConvenio varchar(9),
@dsPacConv varchar(40), @statPaconv char(10), @codPacSoat varchar(9), @dsPacSoat varchar(40), @statPacSoat varchar(10), @codpacExterno varchar(9), 
@dspacExter varchar(40), @stapacexter char(10), @tpPaciente varchar(9), @idPersona int, @hojaFiliacion bit, @concienteDato bit, @estado char(10) )
as  
begin  
update  [dbo].[T001_PACIENTE] set
		codPaciente = @codPaciente,
		descripcion = @descripcion,
		nrohc = @nrohc,
		nombreAcom = @nombreAcom,
		edadAcom = @edadAcom,
		dniAcom = @dniAcom,
		idgpoSangre = @idgpoSangre,
		idFactorrh = @idFactorrh,
		cobertura = @cobertura,		
		ordenAtenMed = @ordenAtenMed,
		nomAsegurado = @nomAsegurado,
		codAsegurado = @codAsegurado,
		poliza = @poliza,
		parentesco = @parentesco,
		iniVigencia = @iniVigencia,
		finVigencia = @finVigencia,
		tpPlanSalud = @tpPlanSalud,
		nroplanSalud = @nroplanSalud,
		estadoSeguro = @estadoSeguro,
		tpAfiliacion = @tpAfiliacion,
		fecAfiliacion = @fecAfiliacion,
		codTitular = @codTitular,
		moneda = @moneda,
		nomContratante = @nomContratante,
		tpDocumento = @tpDocumento,
		dniContratante = @dniContratante,
		planSalud = @planSalud,
		codCobertura = @codCobertura,
		beneficio = @beneficio,
		restriccion = @restriccion,					
		copagoFijo = @copagoFijo,
		copagoVariable = @copagoVariable,
		finCarencia = @finCarencia,
		convenio = @convenio,
		descuento = @descuento,
		codPaConvenio = @codPaConvenio,
		dsPacConv = @dsPacConv,
		statPaconv = @statPaconv,
		codPacSoat = @codPacSoat,
		dsPacSoat = @dsPacSoat,		
		statPacSoat = @statPacSoat,
		codpacExterno = @codpacExterno,
		dspacExter = @dspacExter,
		stapacexter = @stapacexter,
		tpPaciente = @tpPaciente,
		idPersona = @idPersona,		
		hojaFiliacion = @hojaFiliacion,
		concienteDato = @concienteDato,
		estado = @estado 	
where idPaciente = @idPaciente  
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarPago]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_ActualizarPago] (@idPago int, @codTransaccion varchar(20), @codTransacRetorno varchar(20),
@idFormaPago int, @monto decimal(16,2), @fecRegistro datetime, @fecOkPasarela datetime, @idCita int,  @estado varchar(12))
as  
begin  
update  D015_PAGO set
		codTransaccion = @codTransaccion,
		codTransacRetorno = @codTransacRetorno,
		idFormaPago = @idFormaPago,		
		monto = @monto,
		fecRegistro= @fecRegistro,
		fecOkPasarela= @fecOkPasarela,
		idCita = @idCita,
		estado = @estado
where   idPago = @idPago  
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarPersona]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_ActualizarPersona] (
@idPersona int, @apePaterno varchar(25), @apeMaterno varchar(25), @nombres varchar(25), @idtpDocumento int, @dniPersona int, @idSexo int, @idEtnico int, @fecNace varchar(15),
 @idUbigeoResi int, @idtipoVia int, @nombreVia varchar(35), @nroVia int, @nroDpto int, @interior int, @manzana int, @nroLote int, @nroKm int, @nroBlock int, @nroEtapa int, @edad int, 
 @idUbigeoNace int, @fotografia varchar(150), @idGrdInstruc int, @centroEduca varchar(50), @idEstCivil int, @idOcupacion int, @idgpoSangre int, @idFactorrh int, @nroRuc int,
 @razonSocial varchar(80), @idReligion int, @estadoRuc varchar(15), @condicionRuc varchar(15), @domiFiscal varchar(40), @idParentesco int, @telefono varchar(15),
 @celular varchar(30), @correo varchar(150), @tpPersona int,  @iddatoSiteds int, @idemprConvenio int, @idciaSeguro int, @idtipoIafa int, @estado char(15) )
as  
begin  
update  [dbo].[T000_PERSONA] set
		apePaterno =@apePaterno,
	    apeMaterno = @apeMaterno,
	    nombres= @nombres,
	    idtpDocumento= @idtpDocumento,
	    dniPersona= @dniPersona,
	    idSexo= @idSexo,
	    idEtnico=  @idEtnico,
	    fecNace=  @fecNace,
	    idUbigeoResi=  @idUbigeoResi,
	    idtipoVia=  @idtipoVia,
	    nombreVia=  @nombreVia,  	  
	    nroVia=  @nroVia,
	    nroDpto=  @nroDpto,
	    interior=  @interior,
	    manzana=  @manzana,
	    nroLote=  @nroLote,
	    nroKm=  @nroKm,
	    nroBlock= @nroBlock,
	    nroEtapa = @nroEtapa,
	    edad=  @edad,
	  
	    idUbigeoNace=  @idUbigeoNace,
        fotografia=  @fotografia,
        idGrdInstruc=  @idGrdInstruc,
        idReligion=  @idReligion,
        centroEduca=  @centroEduca,
        idEstCivil=  @idEstCivil,
        idOcupacion=  @idOcupacion,	  
        idgpoSangre=  @idgpoSangre,
        idFactorrh=  @idFactorrh,
        nroRuc=  @nroRuc,
        razonSocial=  @razonSocial,
        estadoRuc=  @estadoRuc,
        condicionRuc=  @condicionRuc,	  
	    domiFiscal=  @domiFiscal,
        idParentesco=  @idParentesco,
        telefono=   @telefono,
        celular=   @celular,	  
        correo=  @correo,
        tpPersona=  @tpPersona,	  
        iddatoSiteds=  @iddatoSiteds,
        idemprConvenio=  @idemprConvenio,
        idciaSeguro=  @idciaSeguro,
        idtipoIafa=  @idtipoIafa,
        estado=  @estado
	   where idPersona = @idPersona; 
     end
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizartbDetalle]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_ActualizartbDetalle] (@idDet int, @coddetTab varchar(9), @descripcion varchar(50),
@abrev varchar(50), @fuente varchar(150), @idTab int, @estado varchar(12))  
as  
begin  
update  [dbo].[D00_TBDETALLE] set
		coddetTab = @coddetTab,
		descripcion = @descripcion,
		abrev = @abrev,
		fuente = @fuente,
		idTab = @idTab,
		estado = @estado
where   idDet = @idDet  
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizartbGeneral]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_ActualizartbGeneral] (@idTab int, @codTab varchar(9), @descripcion varchar(100), 
@tipo varchar(50), @fechaCreate date, @usuCreate varchar(35), @estado char(12))  
as  
begin  
update  [dbo].[D00_TBGENERAL] set
		codTab = @codTab,
		descripcion = @descripcion,
		tipo = @tipo,
		fechaCreate = @fechaCreate,
		usuCreate = @usuCreate,
		estado = @estado
where   idTab = @idTab  
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ActualizarUsuario]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_ActualizarUsuario] 
(@idUsuario int, @loginUser varchar(25), @claveUser varchar(25), @idEmpleado int, @estado varchar(12))
as 
begin 
     update D001_USUARIO 
     set    loginUser = @loginUser, 
            claveUser = @claveUser,
			idEmpleado = @idEmpleado,
			estado = @estado				  
     where  idUsuario = @idUsuario; 
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_BuscarDniPaciente]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[usp_BuscarDniPaciente] (@prmDni int)  
as  
begin  
--select idPaciente, codPaciente, nombreAcom, dniAcom, parentesco, estado  
select x.*
  from T001_PACIENTE x 
  where dniAcom = @prmDni  
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_BuscarDniPersona]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[usp_BuscarDniPersona]  (@prmDni int)  
as  
begin  
	--select idPersona, apePaterno, apeMaterno, nombres, idtpDocumento ,dniPersona ,idSexo,
	--idEstCivil, domiFiscal, telefono, celular, correo
	select p.*
	from T000_PERSONA p 
	where dniPersona = @prmDni  
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarCita]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_EliminarCita] (@Id int)   
as 
begin 
     --delete T068_CITA   
	 update T068_CITA
	 set estado = '2',
	 fechabaja = getdate()
     where  idCita= @Id;   
end
GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarConsultorio]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_EliminarConsultorio] (@Id int)   
as 
begin 
    -- delete D008_CONSULTORIO 
	 update  D008_CONSULTORIO
	 set estado  = '2',
	 fechabaja = getdate()
     where  idConsultorio= @Id;   
end
GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarCronoMedico]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_EliminarCronoMedico] (@Id int)   
as 
begin 
     -- delete D012_CRONOMEDICO   
	 update  D012_CRONOMEDICO
	 set estado  = '2',
	 fechabaja = getdate()
     where  idProgramMedica = @Id;   
end
GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarEmpleado]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_EliminarEmpleado] (@Id int)   
as 
begin 
     --delete T120_EMPLEADO   
	 update T120_EMPLEADO
	 set estado = '2',
	 fechabaja = getdate()
     where  idEmpleado= @Id;   
end
GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarMedico]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_EliminarMedico] (@Id int)   
as 
begin 
    -- delete T212_MEDICO   
	 update T212_MEDICO
	 set estado = '2',
	 fechabaja = getdate()
     where  idMedico= @Id;   
end
GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarPaciente]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_EliminarPaciente] (@Id int)   
as 
begin 
     --delete T001_PACIENTE 
	 update T001_PACIENTE
	 set estado = '2',
	 fechabaja = getdate()  
     where  idPaciente= @Id;   
end
GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarPago]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_EliminarPago] (@Id int)   
as 
begin 
     --delete D015_PAGO   
	 update D015_PAGO
	 set estado = '2',
	 fechabaja = getdate()  
     where  idPago= @Id;   
end
GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarPersona]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_EliminarPersona] (@Id int)   
as 
begin 
     --delete T000_PERSONA  
	 update T000_PERSONA
	 set estado = '2',
	 fechabaja = getdate()  
     where  idPersona= @Id;   
end
GO
/****** Object:  StoredProcedure [dbo].[usp_EliminartbDetalle]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_EliminartbDetalle] (@Id int)   
as 
begin 
      --DELETE D00_TBDETALLE   
	  update D00_TBDETALLE
	 set estado = '2',
	 fechabaja = getdate() 
      WHERE  idDet = @Id;   
end
GO
/****** Object:  StoredProcedure [dbo].[usp_EliminartbGeneral]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_EliminartbGeneral] (@Id int)   
as 
begin 
      --DELETE D00_TBGENERAL 
	 update D00_TBGENERAL
	 set estado = '2',
	 fechabaja = getdate()   
	 WHERE  idTab = @Id;   
end
GO
/****** Object:  StoredProcedure [dbo].[usp_EliminarUsuario]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_EliminarUsuario] (@id int)   
as 
begin   
 --    delete D001_USUARIO  
 update  D001_USUARIO
	 set estado  = '2',
	 fechabaja = getdate()
     where  idUsuario = @id;   
end
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertarUsuario]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_InsertarUsuario] (@loginUser varchar(25), @claveUser varchar(25), @idEmpleado int,
@estado varchar(12), @usuCrea varchar(25), @fechaCrea varchar(15), @usuMod varchar(25), @fechaMod varchar(15))
as 
begin 
insert into [dbo].[D001_USUARIO] 
([loginUser], [claveUser], [idEmpleado], [estado], [usuCrea], [fechaCrea], [usuMod], [fechaMod])
values    (@loginUser, 
           @claveUser, 
           @idEmpleado,
           @estado,
           @usuCrea,
           @fechaCrea,
           @usuMod, 
           @fechaMod)   
end
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarCita]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarCita]  
as 
begin  
select 	w.idCita 
      ,w.codCita 
      ,w.nroCita 
      ,w.descripcion 
      ,w.fechaCita 
      ,w.ultCie10 
      ,w.tpAtencion 
      ,w.nroHC 
      ,w.ejecutado 
      ,w.prioridad 
      ,w.precio 
      ,w.descuento 
      ,w.coa 
      ,w.igv 
      ,w.estadoReprogram 
      ,w.tipoCita 
      ,w.motivoRepro 
      ,w.motivoAnula 
      ,w.idEstadoCita 
      ,w.idPaciente 
      ,w.idEmpleado 
      ,w.idConsultorio 
      ,w.idProgramMedica 
      ,w.idservicioCli 
      ,w.estado
	  ,d.descripcion as 'tipo cita',
	--	d1.descripcion as 'consultorio',
		d2.descripcion as 'consultorio',
		s.descripcion

from T068_CITA w
	--inner join T001_PACIENTE z
	--on w.idPaciente = z.idPaciente
	inner join D00_TBDETALLE d 
	on w.tipoCita = d.idDet	

	--inner join D00_TBDETALLE d1
	--on w.tpAtencion = d1.idDet

	inner join D00_TBDETALLE d2
	on w.idConsultorio = d2.idDet
	
	inner join T218_SERVICIOSCLI s
	on w.idservicioCli = s.idservicioCli
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarConsultorio]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarConsultorio]  
as 
begin  
select c.idConsultorio, c.nroConsultorio, c.tpConsultorio, c.descripcion, c.area, c.piso, 
 c.idEspecialidad,  c.estado, d.descripcion as 'especialidad'
from D008_CONSULTORIO c
	inner join D00_TBDETALLE d
	on c.idEspecialidad = d.idDet
where c.estado= '1'
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarCronoMedico]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarCronoMedico]  
as 
begin 
select y.idProgramMedica, y.mes, y.semana, y.dia, y.fechaIni,  y.fechaFin, y.idMedico, 
	y.idEspecialidad, y.idConsultorio, y.hrInicio, y.hrFin, y.estado, p.nombres, p.apePaterno,
	c.descripcion, 	d.descripcion as 'especialidad'
from D012_CRONOMEDICO y
	inner join T212_MEDICO m
	on y.idMedico = m.idMedico
	inner join T000_PERSONA p
	on m.idPersona = p.idPersona
	inner join D008_CONSULTORIO c
	on y.idConsultorio = c.idConsultorio
	inner join D00_TBDETALLE d
	on y.idEspecialidad = d.idDet
where y.estado= '1'
end
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarEmpleado]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarEmpleado]  
as 
begin  
select e.idEmpleado, e.codEmpleado, e.descArea, e.cargo, e.fecIngreso, e.salario, e.genero, 
e.idtpEmpleado, e.idPersona, e.estado, p.nombres, p.apepaterno,
d.descripcion as 'genero',
d1.descripcion as 'empleado'

from T120_EMPLEADO e
	inner join T000_PERSONA p 
	on e.idPersona = p.idPersona
	inner join D00_TBDETALLE d 
	on e.genero = d.idDet
	inner join D00_TBDETALLE d1
	on e.idtpEmpleado = d1.idDet
where e.estado = '1'
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarEmpleadoxIdPersona]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[usp_ListarEmpleadoxIdPersona](@Id int)
as
Select E.* from T120_EMPLEADO E
join T000_PERSONA p on p.idPersona = e.idPersona
where p.idPersona = @Id
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarMedico]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarMedico]  
as 
begin  
select m.idMedico, m.codMedico, m.nroColegio, m.nroRne, m.nroRuc, m.idtpDocumento, m.condicion , m.idEmpleado , 
m.idEspecialidad , m.idPersona,  m.estado, p.nombres, p.apePaterno,
d.descripcion as 'documento',
d1.descripcion as 'especialidad'
from T212_MEDICO m
	inner join T000_PERSONA p 
	on m.idPersona = p.idPersona
	inner join D00_TBDETALLE d 
	on m.idtpDocumento = d.idDet
	inner join D00_TBDETALLE d1
	on m.idEspecialidad = d1.idDet

end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarMedicoxIdEmpleado]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ListarMedicoxIdEmpleado](@Id int)
as
select * from T212_MEDICO
where idEmpleado = @Id
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarPaciente]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarPaciente]  
as 
begin  
select 
x.idPaciente , x.codPaciente , x.descripcion  ,x.nrohc  ,x.nombreAcom , x.edadAcom  ,x.dniAcom  ,x.idgpoSangre  ,x.idFactorrh  ,x.cobertura  ,x.ordenAtenMed  ,x.nomAsegurado ,
x.codAsegurado  ,x.poliza  ,x.parentesco  , x.iniVigencia , x.finVigencia  ,x.tpPlanSalud  ,x.nroplanSalud  ,x.estadoSeguro  ,x.tpAfiliacion  ,x.fecAfiliacion  ,x.codTitular , x.moneda , 
x.nomContratante  ,x.tpDocumento ,x.dniContratante  ,x.planSalud  ,x.codCobertura  ,x.beneficio  ,x.restriccion  ,x.copagoFijo  ,x.copagoVariable  ,x.finCarencia   ,x.convenio ,
x.descuento,x.codPaConvenio  ,x.dsPacConv  ,x.statPaconv  ,x.codPacSoat  ,x.dsPacSoat , x.statPacSoat  ,x.codpacExterno  ,x.dspacExter  ,x.stapacexter  ,x.tpPaciente , x.idPersona ,
x.hojaFiliacion  ,x.concienteDato  ,x.estado, p.nombres, p.apepaterno,
d.descripcion as 'gpo sangre',
d1.descripcion as 'factor rh',
d2.descripcion as 'tp documento',
d3.descripcion as 'tp paciente',
d4.descripcion as 'parentesco'
from T001_PACIENTE x
	inner join T000_PERSONA p 
	on x.idPersona = p.idPersona
	inner join D00_TBDETALLE d 
	on x.idgpoSangre = d.idDet
	inner join D00_TBDETALLE d1
	on x.idFactorrh = d1.idDet
	inner join D00_TBDETALLE d2
	on x.tpDocumento = d2.idDet
	inner join D00_TBDETALLE d3
	on x.tpPaciente = d3.idDet
	inner join D00_TBDETALLE d4
	on x.parentesco = d4.idDet

where x.estado = '1'
end
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarPago]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarPago]  
as 
begin  
select idPago, codTransaccion, codTransacRetorno, idFormaPago, monto, fecRegistro , fecOkPasarela , idCita , estado
from D015_PAGO 
where estado = '1'
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarPersona]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarPersona]  
as 
begin 
select p.*,
	   d.descripcion as 'documento',
	   d2.descripcion as 'estado civil',
	   d3.descripcion as 'sexo',
	   d4.descripcion as 'ocupacion',
	   d5.descripcion as 'tipo via',
	   d6.descripcion as 'parentesco'
from T000_PERSONA p 
	inner join D00_TBDETALLE d 
			on p.idtpDocumento = d.idDet 
	inner join D00_TBDETALLE d2 
			on p.idEstCivil = d2.idDet
	inner join D00_TBDETALLE d3
			on p.idSexo = d3.idDet
	inner join D00_TBDETALLE d4
			on p.idOcupacion = d4.idDet
	inner join D00_TBDETALLE d5
			on p.idtipoVia = d5.idDet
	inner join D00_TBDETALLE d6
			on p.idParentesco = d6.idDet
end

GO
/****** Object:  StoredProcedure [dbo].[usp_ListartbDetalle]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_ListartbDetalle]  
as 
begin  
	select idDet ,coddetTab ,descripcion ,abrev ,fuente ,estado ,idTab
	from D00_TBDETALLE
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ListartbDetallexIdtbGeneral]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_ListartbDetallexIdtbGeneral] (@id int)
as
select td.*
from [dbo].[D00_TBDETALLE] td
join [dbo].[D00_TBGENERAL] tg on td.idTab = tg.idTab
where tg.idTab = @id

GO
/****** Object:  StoredProcedure [dbo].[usp_ListartbDetallexNombretbGeneral]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[usp_ListartbDetallexNombretbGeneral](@nombres varchar(20))
as
SELECT td.*
FROM [Clinica].[dbo].[D00_TBDETALLE] td
Join [Clinica].[dbo].[D00_TBGENERAL] tg on td.idTab = tg.idTab
where tg.descripcion = @nombres
GO
/****** Object:  StoredProcedure [dbo].[usp_ListartbGeneral]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListartbGeneral]  
as 
begin  
	select idTab ,codTab ,descripcion ,tipo ,fechaCreate ,usuCreate, estado
	from D00_TBGENERAL 
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarUsuario]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarUsuario]  
as 
begin    
select idUsuario, loginUser, claveUser, idEmpleado, estado,  usuCrea, fechaCrea, usuMod, fechaMod
from D001_USUARIO
end
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxIdCita]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxIdCita] (@Id int)  
as 
begin 
select 	w.idCita 
      ,w.codCita 
      ,w.nroCita 
      ,w.descripcion 
      ,w.fechaCita 
      ,w.ultCie10 
      ,w.tpAtencion 
      ,w.nroHC 
      ,w.ejecutado 
      ,w.prioridad 
      ,w.precio 
      ,w.descuento 
      ,w.coa 
      ,w.igv 
      ,w.estadoReprogram 
      ,w.tipoCita 
      ,w.motivoRepro 
      ,w.motivoAnula 
      ,w.idEstadoCita 
      ,w.idPaciente 
      ,w.idEmpleado 
      ,w.idConsultorio 
      ,w.idProgramMedica 
      ,w.idservicioCli 
      ,w.estado
	  ,d.descripcion as 'tipo cita',
	--	d1.descripcion as 'consultorio',
		d2.descripcion as 'consultorio',
		s.descripcion

from T068_CITA w
	--inner join T001_PACIENTE z
	--on w.idPaciente = z.idPaciente
	inner join D00_TBDETALLE d 
	on w.tipoCita = d.idDet	

	--inner join D00_TBDETALLE d1
	--on w.tpAtencion = d1.idDet

	inner join D00_TBDETALLE d2
	on w.idConsultorio = d2.idDet
	
	inner join T218_SERVICIOSCLI s
	on w.idservicioCli = s.idservicioCli

where w.idCita = @Id 
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxIdConsultorio]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxIdConsultorio] (@Id int)  
as 
begin 
select  c.idConsultorio, c.nroConsultorio,  c.tpConsultorio,  c.descripcion, c.area, c.piso, 
 c.idEspecialidad,  c.estado, d.descripcion as 'especialidad'
from D008_CONSULTORIO c
	inner join D00_TBDETALLE d
	on c.idEspecialidad = d.idDet
where idConsultorio = @Id
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxIdCronoMedico]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxIdCronoMedico] (@Id int)  
as 
begin 
select y.idProgramMedica, y.mes, y.semana, y.dia, y.fechaIni,  y.fechaFin, y.idMedico, 
	y.idEspecialidad, y.idConsultorio, y.hrInicio, y.hrFin, y.estado, p.nombres, p.apePaterno,
	c.descripcion, 	d.descripcion as 'especialidad'
from D012_CRONOMEDICO y
	inner join T212_MEDICO m
	on y.idMedico = m.idMedico
	inner join T000_PERSONA p
	on m.idPersona = p.idPersona
	inner join D008_CONSULTORIO c
	on y.idConsultorio = c.idConsultorio
	inner join D00_TBDETALLE d
	on y.idEspecialidad = d.idDet
	
where idProgramMedica = @Id and y.estado = '1'
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxIdEmpleado]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxIdEmpleado] (@Id int)  
as 
begin 
select e.idEmpleado, e.codEmpleado, e.descArea, e.cargo, e.fecIngreso, e.salario, e.genero, 
e.idtpEmpleado, e.idPersona, e.estado, p.nombres, p.apepaterno,
d.descripcion as 'genero',
d1.descripcion as 'empleado'

from T120_EMPLEADO e
	inner join T000_PERSONA p 
	on e.idPersona = p.idPersona
	inner join D00_TBDETALLE d 
	on e.genero = d.idDet
	inner join D00_TBDETALLE d1
	on e.idtpEmpleado = d1.idDet
where idEmpleado = @Id and p.estado = '1'
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxIdMedico]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxIdMedico] (@Id int)  
as 
begin 
select m.idMedico, m.codMedico, m.nroColegio, m.nroRne, m.nroRuc, m.idtpDocumento, m.condicion , m.idEmpleado , 
m.idEspecialidad , m.idPersona,  m.estado, p.nombres, p.apePaterno,
d.descripcion as 'documento',
d1.descripcion as 'especialidad'
from T212_MEDICO m
	inner join T000_PERSONA p 
	on m.idPersona = p.idPersona
	inner join D00_TBDETALLE d 
	on m.idtpDocumento = d.idDet
	inner join D00_TBDETALLE d1
	on m.idEspecialidad = d1.idDet
where m.idMedico = @Id and m.estado = '1'
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxIdPaciente]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxIdPaciente] (@Id int)  
as 
begin 
select
x.idPaciente , x.codPaciente , x.descripcion  ,x.nrohc  ,x.nombreAcom , x.edadAcom  ,x.dniAcom  ,x.idgpoSangre  ,x.idFactorrh  ,x.cobertura  ,x.ordenAtenMed  ,x.nomAsegurado ,
x.codAsegurado  ,x.poliza  ,x.parentesco  , x.iniVigencia , x.finVigencia  ,x.tpPlanSalud  ,x.nroplanSalud  ,x.estadoSeguro  ,x.tpAfiliacion  ,x.fecAfiliacion  ,x.codTitular , x.moneda , 
x.nomContratante  ,x.tpDocumento ,x.dniContratante  ,x.planSalud  ,x.codCobertura  ,x.beneficio  ,x.restriccion  ,x.copagoFijo  ,x.copagoVariable  ,x.finCarencia   ,x.convenio ,
x.descuento,x.codPaConvenio  ,x.dsPacConv  ,x.statPaconv  ,x.codPacSoat  ,x.dsPacSoat , x.statPacSoat  ,x.codpacExterno  ,x.dspacExter  ,x.stapacexter  ,x.tpPaciente , x.idPersona ,
x.hojaFiliacion  ,x.concienteDato, x.estado,
d.descripcion as 'gpo sangre',
d1.descripcion as 'factor rh',
d2.descripcion as 'tp documento',
d3.descripcion as 'tp paciente',
d4.descripcion as 'parentesco'
from T001_PACIENTE x
	inner join T000_PERSONA p 
	on x.idPersona = p.idPersona
	inner join D00_TBDETALLE d 
	on x.idgpoSangre = d.idDet
	inner join D00_TBDETALLE d1
	on x.idFactorrh = d1.idDet
	inner join D00_TBDETALLE d2
	on x.tpDocumento = d2.idDet
	inner join D00_TBDETALLE d3
	on x.tpPaciente = d3.idDet
	inner join D00_TBDETALLE d4
	on x.parentesco = d4.idDet
where idPaciente = @Id and x.estado= '1'
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxIdPago]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxIdPago] (@Id int)  
as 
begin 
select idPago, codTransaccion, codTransacRetorno, idFormaPago, monto, fecRegistro, fecOkPasarela, idCita, estado
from D015_PAGO where idPago = @Id and estado = '1'
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxIdPersona]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxIdPersona] (@Id int) 
as   
begin
select p.idPersona ,p.apePaterno ,p.apeMaterno ,p.nombres  ,p.idtpDocumento ,p.dniPersona ,p.idSexo, p.idEtnico,
p.fecNace ,p.idUbigeoResi ,p.idtipoVia ,p.nombreVia ,p.nroVia ,p.nroDpto ,p.interior, p.manzana ,p.nroLote,
p.nroKm  ,p.nroBlock  ,p.nroEtapa ,p.edad ,p.idUbigeoNace  ,p.fotografia  ,p.idGrdInstruc  ,p.idReligion,
p.centroEduca ,p.idEstCivil  ,p.idOcupacion ,p.idgpoSangre ,p.idFactorrh ,p.nroRuc ,p.razonSocial, p.estadoRuc,
p.condicionRuc ,p.domiFiscal ,p.idParentesco  ,p.telefono  ,p.celular  ,p.correo  ,p.tpPersona  ,p.iddatoSiteds,
p.idemprConvenio ,p.idciaSeguro ,p.idtipoIafa ,p.estado,
	   d.descripcion as 'documento',
	   d2.descripcion as 'sexo',
	   d3.descripcion as 'Etnico',
	   d4.descripcion as 'tipo via',
	   d5.descripcion as 'grado instruccion',
	   d6.descripcion as 'religion',
	   d7.descripcion as 'estado civil',	   
	   d8.descripcion as 'ocupacion',
	   d9.descripcion as 'gpo sangre',
	   d10.descripcion as 'factor rhr',	  
	   d11.descripcion as 'parentesco'
	   
from T000_PERSONA p 
	inner join D00_TBDETALLE d 
			on p.idtpDocumento = d.idDet 
	inner join D00_TBDETALLE d2 
			on p.idSexo= d2.idDet
	inner join D00_TBDETALLE d3
			on p.idEtnico = d3.idDet
	inner join D00_TBDETALLE d4
			on p.idtipoVia = d4.idDet
	inner join D00_TBDETALLE d5
			on p.idGrdInstruc = d5.idDet
	inner join D00_TBDETALLE d6
			on p.idReligion = d6.idDet
	inner join D00_TBDETALLE d7 
			on p.idEstCivil = d7.idDet
	inner join D00_TBDETALLE d8
			on p.idOcupacion = d8.idDet	
	inner join D00_TBDETALLE d9
			on p.idgpoSangre = d9.idDet	
	inner join D00_TBDETALLE d10
			on p.idFactorrh = d10.idDet	
	inner join D00_TBDETALLE d11
			on p.idParentesco = d11.idDet				

where p.idPersona = @Id and p.estado = '1'
end
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxIdtbDetalle]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_ListarxIdtbDetalle] (@Id int)  
as 
begin 
	select idDet ,coddetTab ,descripcion ,abrev ,fuente ,estado ,idTab
	from D00_TBDETALLE where idTab = @Id
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxIdtbGeneral]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_ListarxIdtbGeneral] (@Id int)  
as 
begin 
	select idTab ,codTab ,descripcion ,tipo ,fechaCreate ,usuCreate, estado
	from D00_TBGENERAL where idTab = @Id
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxIdUsuario]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxIdUsuario](@id int)  
as 
begin 
select idUsuario, loginUser, claveUser, idEmpleado, estado, usuCrea, fechaCrea, usuMod, fechaMod
from D001_USUARIO 
where idUsuario = @id and estado = '1'
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxNombrConsultorio]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxNombrConsultorio] (@nombres varchar(25))  
as 
begin 
select  c.idConsultorio, c.nroConsultorio,  c.tpConsultorio,  c.descripcion, c.area, c.piso, 
 c.idEspecialidad,  c.estado, d.descripcion as 'especialidad'
from D008_CONSULTORIO c
	inner join D00_TBDETALLE d
	on c.idEspecialidad = d.idDet
where c.descripcion like '%' + @nombres + '%' and c.estado = '1'
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxNombreCita]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[usp_ListarxNombreCita] (@nombres varchar(25))  
as 
begin 
select 	w.idCita 
      ,w.codCita 
      ,w.nroCita 
      ,w.descripcion 
      ,w.fechaCita 
      ,w.ultCie10 
      ,w.tpAtencion 
      ,w.nroHC 
      ,w.ejecutado 
      ,w.prioridad 
      ,w.precio 
      ,w.descuento 
      ,w.coa 
      ,w.igv 
      ,w.estadoReprogram 
      ,w.tipoCita 
      ,w.motivoRepro 
      ,w.motivoAnula 
      ,w.idEstadoCita 
      ,w.idPaciente 
      ,w.idEmpleado 
      ,w.idConsultorio 
      ,w.idProgramMedica 
      ,w.idservicioCli 
      ,w.estado
	  ,d.descripcion as 'tipo cita',
	--	d1.descripcion as 'consultorio',
		d2.descripcion as 'consultorio',
		s.descripcion

from T068_CITA w
	--inner join T001_PACIENTE z
	--on w.idPaciente = z.idPaciente
	inner join D00_TBDETALLE d 
	on w.tipoCita = d.idDet	

	--inner join D00_TBDETALLE d1
	--on w.tpAtencion = d1.idDet

	inner join D00_TBDETALLE d2
	on w.idConsultorio = d2.idDet
	
	inner join T218_SERVICIOSCLI s
	on w.idservicioCli = s.idservicioCli

where w.descripcion like '%' + @nombres + '%' 
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxNombreEmpleado]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxNombreEmpleado](@nombres VARCHAR(15))  
as 
begin
select e.idEmpleado, e.codEmpleado, e.descArea, e.cargo, e.fecIngreso, e.salario, e.genero, 
e.idtpEmpleado, e.idPersona, e.estado, p.nombres, p.apepaterno,
d.descripcion as 'genero',
d1.descripcion as 'empleado'
from T120_EMPLEADO e
	inner join T000_PERSONA p 
	on e.idPersona = p.idPersona
	inner join D00_TBDETALLE d 
	on e.genero = d.idDet
	inner join D00_TBDETALLE d1
	on e.idtpEmpleado = d1.idDet
where p.nombres like '%' + @nombres + '%'  and p.estado = '1'
end
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxNombreMedico]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxNombreMedico](@nombres varchar(25))  
as 
begin

select m.idMedico, m.codMedico, m.nroColegio, m.nroRne, m.nroRuc, m.idtpDocumento, m.condicion , m.idEmpleado , 
m.idEspecialidad , m.idPersona,  m.estado, p.nombres, p.apePaterno,
d.descripcion as 'documento',
d1.descripcion as 'especialidad'
from T212_MEDICO m
	inner join T000_PERSONA p 
	on m.idPersona = p.idPersona
	inner join D00_TBDETALLE d 
	on m.idtpDocumento = d.idDet
	inner join D00_TBDETALLE d1
	on m.idEspecialidad = d1.idDet

where p.nombres like '%' + @nombres + '%' and p.estado = '1'
end
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxNombrePaciente]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxNombrePaciente](@nombres varchar(15))  
as 
begin 
select x.idPaciente , x.codPaciente , x.descripcion  ,x.nrohc  ,x.nombreAcom , x.edadAcom  ,x.dniAcom  ,x.idgpoSangre  ,x.idFactorrh  ,x.cobertura  ,x.ordenAtenMed  ,x.nomAsegurado ,
x.codAsegurado  ,x.poliza  ,x.parentesco  , x.iniVigencia , x.finVigencia  ,x.tpPlanSalud  ,x.nroplanSalud  ,x.estadoSeguro  ,x.tpAfiliacion  ,x.fecAfiliacion  ,x.codTitular , x.moneda , 
x.nomContratante  ,x.tpDocumento ,x.dniContratante  ,x.planSalud  ,x.codCobertura  ,x.beneficio  ,x.restriccion  ,x.copagoFijo  ,x.copagoVariable  ,x.finCarencia   ,x.convenio ,
x.descuento,x.codPaConvenio  ,x.dsPacConv  ,x.statPaconv  ,x.codPacSoat  ,x.dsPacSoat , x.statPacSoat  ,x.codpacExterno  ,x.dspacExter  ,x.stapacexter  ,x.tpPaciente , x.idPersona ,
x.hojaFiliacion  ,x.concienteDato  ,x.estado,  p.nombres, p.apepaterno,
d.descripcion as 'gpo sangre',
d1.descripcion as 'factor rh',
d2.descripcion as 'tp documento',
d3.descripcion as 'tp paciente',
d4.descripcion as 'parentesco'
from T001_PACIENTE x
	inner join T000_PERSONA p 
	on x.idPersona = p.idPersona
	inner join D00_TBDETALLE d 
	on x.idgpoSangre = d.idDet
	inner join D00_TBDETALLE d1
	on x.idFactorrh = d1.idDet
	inner join D00_TBDETALLE d2
	on x.tpDocumento = d2.idDet
	inner join D00_TBDETALLE d3
	on x.tpPaciente = d3.idDet
	inner join D00_TBDETALLE d4
	on x.parentesco = d4.idDet
where p.nombres like '%' + @nombres + '%' and p.estado = '1'
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxNombrePago]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxNombrePago] (@nombres varchar(25))  
as 
begin 
select idPago, codTransaccion, codTransacRetorno, idFormaPago, monto, fecRegistro, fecOkPasarela, idCita , estado
from D015_PAGO 
where codTransaccion like '%' + @nombres + '%' and estado = '1'
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxNombrePersona]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxNombrePersona] (@nombres varchar(25))  
as 
begin 
select p.idPersona ,p.apePaterno ,p.apeMaterno ,p.nombres  ,p.idtpDocumento ,p.dniPersona ,p.idSexo, p.idEtnico,
p.fecNace ,p.idUbigeoResi ,p.idtipoVia ,p.nombreVia ,p.nroVia ,p.nroDpto ,p.interior, p.manzana ,p.nroLote,
p.nroKm  ,p.nroBlock  ,p.nroEtapa ,p.edad ,p.idUbigeoNace  ,p.fotografia  ,p.idGrdInstruc  ,p.idReligion,
p.centroEduca ,p.idEstCivil  ,p.idOcupacion ,p.idgpoSangre ,p.idFactorrh ,p.nroRuc ,p.razonSocial, p.estadoRuc,
p.condicionRuc ,p.domiFiscal ,p.idParentesco  ,p.telefono  ,p.celular  ,p.correo  ,p.tpPersona  ,p.iddatoSiteds,
p.idemprConvenio ,p.idciaSeguro ,p.idtipoIafa ,p.estado,
	   d.descripcion as 'documento',
	   d2.descripcion as 'sexo',
	   d3.descripcion as 'Etnico',
	   d4.descripcion as 'tipo via',
	   d5.descripcion as 'grado instruccion',
	   d6.descripcion as 'religion',
	   d7.descripcion as 'estado civil',	   
	   d8.descripcion as 'ocupacion',
	   d9.descripcion as 'gpo sangre',
	   d10.descripcion as 'factor rhr',	  
	   d11.descripcion as 'parentesco'
	   
from T000_PERSONA p 
	inner join D00_TBDETALLE d 
			on p.idtpDocumento = d.idDet 
	inner join D00_TBDETALLE d2 
			on p.idSexo= d2.idDet
	inner join D00_TBDETALLE d3
			on p.idEtnico = d3.idDet
	inner join D00_TBDETALLE d4
			on p.idtipoVia = d4.idDet
	inner join D00_TBDETALLE d5
			on p.idGrdInstruc = d5.idDet
	inner join D00_TBDETALLE d6
			on p.idReligion = d6.idDet
	inner join D00_TBDETALLE d7 
			on p.idEstCivil = d7.idDet
	inner join D00_TBDETALLE d8
			on p.idOcupacion = d8.idDet	
	inner join D00_TBDETALLE d9
			on p.idgpoSangre = d9.idDet	
	inner join D00_TBDETALLE d10
			on p.idFactorrh = d10.idDet	
	inner join D00_TBDETALLE d11
			on p.idParentesco = d11.idDet	
where p.nombres like '%' + @nombres + '%' and p.estado = '1'
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxNombretbDetalle]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_ListarxNombretbDetalle](@descripcion varchar(25))  
as 
begin 
	select idDet ,coddetTab ,descripcion ,abrev ,fuente ,estado ,idTab
	from D00_TBDETALLE where descripcion like '%' + @descripcion + '%' 
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxNombretbGeneral]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxNombretbGeneral](@descripcion varchar(25))  
as 
begin 
	select idTab ,codTab ,descripcion ,tipo ,fechaCreate ,usuCreate, estado
	from D00_TBGENERAL where descripcion like '%' + @descripcion + '%'
end 
GO
/****** Object:  StoredProcedure [dbo].[usp_ListarxNombreUsuario]    Script Date: 27/06/2020 10:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ListarxNombreUsuario](@loginUser VARCHAR(15))  
as 
begin 
select idUsuario, loginUser, claveUser, idEmpleado, estado, usuCrea, fechaCrea, usuMod, fechaMod
from D001_USUARIO where loginUser like '%' + @loginUser + '%'
end 
GO
USE [master]
GO
ALTER DATABASE [clinica_cem] SET  READ_WRITE 
GO

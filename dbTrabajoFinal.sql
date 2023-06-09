USE [master]
GO
DROP DATABASE IF EXISTS dbTrabajoFinal;
GO
CREATE DATABASE [dbTrabajoFinal]
GO
ALTER DATABASE [dbTrabajoFinal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbTrabajoFinal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbTrabajoFinal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbTrabajoFinal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbTrabajoFinal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbTrabajoFinal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbTrabajoFinal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbTrabajoFinal] SET  MULTI_USER 
GO
ALTER DATABASE [dbTrabajoFinal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbTrabajoFinal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbTrabajoFinal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbTrabajoFinal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbTrabajoFinal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbTrabajoFinal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dbTrabajoFinal] SET QUERY_STORE = OFF
GO
USE [dbTrabajoFinal]
GO
/****** Object:  Table [dbo].[Cliente] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[DNI] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Celular] [int] NULL,
	[Direccion] [varchar](100) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[CodigoProducto] [int] IDENTITY(1,1) NOT NULL,
	[NombreProducto] [varchar](50) NULL,
	[Precio] [money] NULL,
	[Categoria] [varchar](150) NULL,
	[Cantidad] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[CodigoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Usuario] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[CodigoVenta] [int] IDENTITY(1,1) NOT NULL,
	[DNIcliente] [int] NULL,
	[CodigoProducto] [int] NULL,
	[Cantidad] [int] NULL,
	[Precio] [money] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[CodigoVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([DNI], [Nombre], [Celular], [Direccion]) VALUES (35345345, N'Mario', 943434333, N'Av. asedfasf')
INSERT [dbo].[Cliente] ([DNI], [Nombre], [Celular], [Direccion]) VALUES (42199501, N'Juan', 914104884, N'Av. Los Jardines. Urb. Quiñones')
INSERT [dbo].[Cliente] ([DNI], [Nombre], [Celular], [Direccion]) VALUES (54645645, N'Carlos', 923674723, N'Av. Tomas Valle')
INSERT [dbo].[Cliente] ([DNI], [Nombre], [Celular], [Direccion]) VALUES (75074854, N'Laura', 14747011, N'Av. Los Sauces 974')
INSERT [dbo].[Cliente] ([DNI], [Nombre], [Celular], [Direccion]) VALUES (75978801, N'Jose', 951427074, N'Av. Los Proceres 471')
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([CodigoProducto], [NombreProducto], [Precio], [Categoria], [Cantidad]) VALUES (1, N'Leche', 15.0000, N'Lacteos', 15)
INSERT [dbo].[Producto] ([CodigoProducto], [NombreProducto], [Precio], [Categoria], [Cantidad]) VALUES (2, N'Queso', 24.0000, N'Lacteos', 10)
INSERT [dbo].[Producto] ([CodigoProducto], [NombreProducto], [Precio], [Categoria], [Cantidad]) VALUES (5, N'Chancho', 45.0000, N'Carne Cruda', 20)
INSERT [dbo].[Producto] ([CodigoProducto], [NombreProducto], [Precio], [Categoria], [Cantidad]) VALUES (7, N'Pavo', 45.0000, N'Carne Cruda', 0)
INSERT [dbo].[Producto] ([CodigoProducto], [NombreProducto], [Precio], [Categoria], [Cantidad]) VALUES (8, N'Yogurt', 14.0000, N'Lacteos', 18)
INSERT [dbo].[Producto] ([CodigoProducto], [NombreProducto], [Precio], [Categoria], [Cantidad]) VALUES (10, N'Mantequilla', 7.5000, N'Lacteos', 12)
INSERT [dbo].[Producto] ([CodigoProducto], [NombreProducto], [Precio], [Categoria], [Cantidad]) VALUES (11, N'Pollo', 24.5000, N'Carne Cruda', 13)
INSERT [dbo].[Producto] ([CodigoProducto], [NombreProducto], [Precio], [Categoria], [Cantidad]) VALUES (12, N'Gallina', 27.8000, N'Carne Cruda', 13)
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
INSERT [dbo].[Usuarios] ([Usuario], [Contraseña]) VALUES (N'admin01', N'hola123')
INSERT [dbo].[Usuarios] ([Usuario], [Contraseña]) VALUES (N'admin02', N'hola123')
GO
SET IDENTITY_INSERT [dbo].[Venta] ON 

INSERT [dbo].[Venta] ([CodigoVenta], [DNIcliente], [CodigoProducto], [Cantidad], [Precio], [Fecha]) VALUES (1, 42199501, 2, 2, 24.0000, CAST(N'2021-11-11T11:41:21.000' AS DateTime))
INSERT [dbo].[Venta] ([CodigoVenta], [DNIcliente], [CodigoProducto], [Cantidad], [Precio], [Fecha]) VALUES (3, 75978801, 1, 2, 30.0000, CAST(N'2021-11-13T22:50:01.077' AS DateTime))
INSERT [dbo].[Venta] ([CodigoVenta], [DNIcliente], [CodigoProducto], [Cantidad], [Precio], [Fecha]) VALUES (4, 75074854, 5, 10, 180.0000, CAST(N'2021-11-14T12:37:26.220' AS DateTime))
INSERT [dbo].[Venta] ([CodigoVenta], [DNIcliente], [CodigoProducto], [Cantidad], [Precio], [Fecha]) VALUES (5, 75074854, 1, 2, 30.0000, CAST(N'2021-11-14T12:44:25.750' AS DateTime))
INSERT [dbo].[Venta] ([CodigoVenta], [DNIcliente], [CodigoProducto], [Cantidad], [Precio], [Fecha]) VALUES (6, 75074854, 5, 2, 90.0000, CAST(N'2021-12-16T15:04:51.000' AS DateTime))
INSERT [dbo].[Venta] ([CodigoVenta], [DNIcliente], [CodigoProducto], [Cantidad], [Precio], [Fecha]) VALUES (7, 75978801, 5, 7, 315.0000, CAST(N'2021-11-14T15:16:27.373' AS DateTime))
INSERT [dbo].[Venta] ([CodigoVenta], [DNIcliente], [CodigoProducto], [Cantidad], [Precio], [Fecha]) VALUES (13, 75074854, 7, 5, 225.0000, CAST(N'2021-11-18T21:38:47.183' AS DateTime))
SET IDENTITY_INSERT [dbo].[Venta] OFF
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cliente] FOREIGN KEY([DNIcliente])
REFERENCES [dbo].[Cliente] ([DNI])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cliente]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Producto] FOREIGN KEY([CodigoProducto])
REFERENCES [dbo].[Producto] ([CodigoProducto])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Producto]
GO
/****** Object:  StoredProcedure [dbo].[AgregarCliente] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[AgregarCliente]
@DNI int,
@Nombre varchar(50),
@celular int,
@direccion varchar(100)
as
Insert into Cliente(DNI, Nombre, Celular, Direccion)
values (@DNI, @Nombre, @celular, @direccion)
GO
/****** Object:  StoredProcedure [dbo].[AgregarVenta] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AgregarVenta]
@DNICliente int,
@CodigoProducto int,
@cantidad int,
@precio money,
@fecha datetime
as
Insert into Venta(DNIcliente, CodigoProducto, Cantidad, Precio, Fecha) 
values (@DNICliente, @CodigoProducto, @cantidad, @precio, @fecha)
GO
/****** Object:  StoredProcedure [dbo].[Cantidad] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Cantidad]
@mes varchar(50),
@producto int
as
select count(*) from Venta where (select month(Fecha) as Fecha) = @mes AND CodigoProducto = @producto
GO
/****** Object:  StoredProcedure [dbo].[CantidadProducto] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CantidadProducto]
@codigo int
as
select Cantidad from Producto where CodigoProducto = @codigo
GO
/****** Object:  StoredProcedure [dbo].[CantidadProductoVenta] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CantidadProductoVenta]
@codigoVenta int
as
select Cantidad from Venta where CodigoVenta = @codigoVenta
GO
/****** Object:  StoredProcedure [dbo].[Eliminar_Producto] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Eliminar_Producto]
@codigoProducto int
as
delete from Producto
where CodigoProducto = @codigoProducto
GO
/****** Object:  StoredProcedure [dbo].[EliminarVenta] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EliminarVenta]
@codigoVenta int
as
Delete from Venta
where CodigoVenta = @codigoVenta
GO
/****** Object:  StoredProcedure [dbo].[GraficoEstadistico] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GraficoEstadistico]
as
select p.NombreProducto as Producto, sum(v.Precio) as VentaEnSoles
from  Producto p inner join Venta v on p.CodigoProducto = v.CodigoProducto
group by p.NombreProducto
GO
/****** Object:  StoredProcedure [dbo].[GraficoEstadistico2] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GraficoEstadistico2]
as
select c.Nombre as Nombre, sum(v.Precio) as ComprasSoles
from Cliente c inner join Venta v on C.DNI = v.DNIcliente
group by c.Nombre
GO
/****** Object:  StoredProcedure [dbo].[Ingresar] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Ingresar]
@usuario varchar(50),
@contraseña varchar(50)
as
select usuario, contraseña from Usuarios where usuario = @usuario and contraseña = @contraseña
GO
/****** Object:  StoredProcedure [dbo].[Insertar_Producto] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insertar_Producto]
@nombreProducto varchar(50),
@precio money,
@categoria varchar(50),
@cantidad int
as
insert into Producto (NombreProducto, Precio, Categoria, Cantidad)
values (@nombreProducto, @precio, @categoria, @cantidad)
GO
/****** Object:  StoredProcedure [dbo].[ListarReporte1] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ListarReporte1]
@mes varchar(50),
@producto int
as
select Fecha, CodigoProducto, DNIcliente from Venta where (select month(Fecha) as Fecha) = @mes AND CodigoProducto = @producto
GO
/****** Object:  StoredProcedure [dbo].[ListarVenta] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ListarVenta]
as
select CodigoVenta, DNIcliente, CodigoProducto, Cantidad, Precio, Fecha from Venta
GO
/****** Object:  StoredProcedure [dbo].[Modificar_Producto] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Modificar_Producto]
@codigoProducto int,
@nombreProducto varchar(50),
@precio money,
@categoria varchar(50),
@cantidad int
as
update Producto set 
NombreProducto = @nombreProducto,
Precio = @precio,
Categoria = @categoria,
Cantidad = @cantidad
where
CodigoProducto = @codigoProducto
GO
/****** Object:  StoredProcedure [dbo].[ModificarCantidad] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ModificarCantidad]
@cantidad int,
@codigo int
as
update Producto set 
Cantidad = @cantidad 
where 
CodigoProducto = @codigo
GO
/****** Object:  StoredProcedure [dbo].[ModificarCliente] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ModificarCliente]
@DNI int,
@Nombre varchar(50),
@celular int,
@direccion varchar(100)
as
update Cliente set
DNI = @DNI,
Nombre = @Nombre,
Celular = @celular,
Direccion = @direccion
where DNI = @DNI
GO
/****** Object:  StoredProcedure [dbo].[ModificarVenta] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ModificarVenta]
@CodigoVenta int,
@DNICliente int,
@CodigoProducto int,
@cantidad int,
@precio money,
@fecha datetime
as
update Venta set
DNIcliente = @DNICliente,
CodigoProducto = @CodigoProducto,
Cantidad = @cantidad,
Precio = @precio,
Fecha = @fecha
where CodigoVenta = @CodigoVenta
GO
/****** Object:  StoredProcedure [dbo].[Mostrar_Productos] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Mostrar_Productos]
as
select CodigoProducto, NombreProducto, Precio, Categoria, Cantidad from Producto
GO
/****** Object:  StoredProcedure [dbo].[MostrarCliente] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MostrarCliente]
as
select DNI, Nombre, Celular, Direccion from Cliente
GO
/****** Object:  StoredProcedure [dbo].[PrecioProducto] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PrecioProducto]
@codigo int
as
select Precio from Producto where CodigoProducto = @codigo
GO
/****** Object:  StoredProcedure [dbo].[Reporte2] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Reporte2]
@mes varchar(50)
as
select Venta.CodigoProducto, sum(Venta.Cantidad) as CantidadVendida, sum(Venta.Precio) as VentasMes from Venta, Producto
where (select month(Fecha) as Fecha) = @mes and Venta.CodigoProducto = Producto.CodigoProducto
group by Venta.CodigoProducto
order by CantidadVendida desc
GO
/****** Object:  StoredProcedure [dbo].[Restaurar_Contraseña] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Restaurar_Contraseña]
@usuario varchar(50),
@contraseña varchar(50)
as
update Usuarios set contraseña = @contraseña where usuario = @usuario
GO
USE [master]
GO
ALTER DATABASE [dbTrabajoFinal] SET  READ_WRITE 
GO

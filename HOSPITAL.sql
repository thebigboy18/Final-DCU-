Create database HOSPITAL

USE HOSPITAL 

Create table Paciente(
 DPI_PACIENTE int,
 Nombre varchar(50),
 Apellido varchar(50),
 Direcci�n varchar(50),
 Fecha_Ingreso date,
 PRIMARY KEY (DPI_PACIENTE)
);

Create table Consulta(
 ID_CONSULTA int,
 DPI_PACIENTE int,
 ID_EMPLEADO int,
 ID_AREA varchar(50),
 Fecha_Consulta date,
 Padecimiento varchar(50),
 Estado_Consulta varchar(50),
 PRIMARY KEY (ID_CONSULTA)
);

Create table Empleado(
 ID_Empleado int,
 Nombre varchar(50),
 Apellido varchar(50),
 Puesto varchar(50),
 ID_AREA varchar(50),
 Tel�fono int,
 Sueldo float,
 ID_SUB int
 PRIMARY KEY (ID_Empleado)
); 

Create table Area(
 ID_AREA int,
 Nombre varchar(50),
 PRIMARY KEY (ID_AREA)
);

Create table Factura(
 ID_FACTURA int,
 ID_CONSULTA int,
 Nombre varchar(50),
 Direcci�n varchar(50),
 Fecha date,
 Telef�no int,
 Nit int,
 Total float
 PRIMARY KEY (ID_FACTURA)
);

select * from Paciente
select * from Consulta
select * from Empleado
select * from Area
select * from Factura

--INSERTAR DATOS DE LA TABLA PACIENTE--
INSERT INTO Paciente(DPI_PACIENTE, Nombre, Apellido, Direcci�n, Fecha_Ingreso)Values
('896','Carlos Jose','Perez Alonzo','Mixco, Guatemala','2021-02-02')

INSERT INTO Paciente(DPI_PACIENTE, Nombre, Apellido, Direcci�n, Fecha_Ingreso)Values
('547','Maria Jose','Gonzales Mendez','Villa Nueva, Guatemala','2021-03-02'),
('456','Fernanda','Lopez D�a','Santa Rosa, Guatemala','2021-03-03'),
('789','Lucia Mariela','Ezpinoza Paz','Chiquimula, Guatemala','2021-03-04'),
('9101','Rafael Jose','Ramirez Garcia','Peten, Guatemala','2021-03-05'),
('0102','Jose Alejandro','Guerra Estrada','Baja Verapaz, Guatemala','2021-03-05'),
('0103','Edin Jose','Maldonado Jurado','Alta Verpaz, Guatemala','2021-03-06'),
('6597','Maritza Andrea','Arellano Rodriguez','Escuintla, Guatemala','2021-03-07'),
('7458','Daniela Estefany','Pirir Beltr�n','Mixco, Guatemala','2021-04-04')


--Insertar DATOS DE LA TABLA CONSULTA--

INSERT INTO Consulta(ID_CONSULTA,  DPI_PACIENTE, ID_EMPLEADO, ID_AREA , Fecha_Consulta, Padecimiento,Estado_Consulta)Values
('01','896','202001','01','2021-02-02','apendicitis aguda','REALIZADA')

INSERT INTO Consulta(ID_CONSULTA,  DPI_PACIENTE, ID_EMPLEADO, ID_AREA , Fecha_Consulta, Padecimiento,Estado_Consulta)Values
('03','547','202002','01','2021-03-02','Indigestion Intestinal','REALIZADA'),
('04','456','202003','02','2021-03-03','Fiebre','REALIZADA'),
('05','789','202001','01','2021-03-04','Mareas','PENDIENTE'),
('06','9101','202003','01','2021-03-05','Hipertensi�n','PENDIENTE'),
('07','0102','202001','03','2021-03-05','Alteraci�n de la frecuencia card�aca','PENDIENTE'),
('08','0103','202004','02','2021-03-06','S�ntomas del sistema nervioso','PENDIENTE'),
('09','6597','202004','02','2021-03-07','Alteraciones en la orina','PENDIENTE'),
('10','7458','202002','01','2021-04-04','Complicaci�n a nivel del drenaje biliar','PENDIENTE')


--INSERTAR DATOS DE LA TABLA EMPLEADOS--
INSERT INTO Empleado (ID_Empleado, Nombre, Apellido, Puesto, ID_AREA, Tel�fono, Sueldo, ID_SUB) VALUES 
('202001', 'Lidia Griselda', 'Cuj� Jer�nimo', 'Doctora Cirujana', '01', '53306776', '5500', '01')

INSERT INTO Empleado (ID_Empleado, Nombre, Apellido, Puesto, ID_AREA, Tel�fono, Sueldo, ID_SUB) VALUES 
('202003', 'Rolando Jose', 'Gonzales Mendez', 'Dermatolog�a.', '03', '98567412', '6000', '01'),
('202004', 'Kevin Alexander', 'Monroy Mellano', 'Ginecolog�a y obstetricia o tocolog�a.', '04', '98745123', '7000', '01'),
('202005', 'Daniel Jose', 'Canel Chitay', 'Medicina de Urgencias', '01', '65847129', '6500', '02'),
('202006', 'Martina Alejandra', 'Jimenez Mendez', 'Oftalmolog�a', '03', '85471234', '6500', '03'),
('202007', 'Tania Estefany', 'Roblero Vasquez', 'Otorrinolaringolog�a', '01', '78456312', '7000', '05'),
('202008', 'Kelly Raquel', 'Botero Gutierrez', 'Traumatolog�a', '02', '96547123', '7000', '03'),
('202009', 'Diana', 'Giron Loera', 'Urolog�a.', '03', '87456321', '5500', '06'),
('2020010', 'Marcelo Octaviano', 'Alvarador Giron', 'Urolog�a.', '03', '23568974', '600', '06')



--INSERTAR DATOS DE LA TABLA AREA--
INSERT INTO Area(ID_AREA, Nombre) VALUES 
('01','Area Quirurgica')
INSERT INTO Area(ID_AREA, Nombre) VALUES 
('04','LABORATORIOS CL�NICOS'),
('05','RADIODIAGN�STICO'),
('06','	CIRUG�A ORTOP�DICA Y TRAUMATOLOG�A'),
('07','	CARDIOLOG�A'),
('08','	ANESTESIOLOG�A'),
('09','	GINECOLOG�A Y OBSTETRICIA'),
('10','	DIGESTIVO')


--INSERTAR DATOS DE LA TABLA FACTURAS--
INSERT INTO Factura(ID_FACTURA, ID_CONSULTA, Nombre, Direcci�n, Fecha, Telef�no, Nit,Total) VALUES 
('20200001','01','Carlos Jose','Mixco, Guatemala','2021-02-02','59846532','89654712','8000')
INSERT INTO Factura(ID_FACTURA, ID_CONSULTA, Nombre, Direcci�n, Fecha, Telef�no, Nit,Total) VALUES 
('20200002','02','Jose Alejandro','Baja Verapaz, Guatemala','2021-03-05','87459654','65874562','1500'),
('20200003','03','Lely Dayana','Villa Nueva, Guatemala','2021-03-02','87457457','23568741','2000'),
('20200004','04','Fernanda Dia','Santa Rosa, Guatemala','2021-03-03','89745231','65478941','2500'),
('20200005','05','Maria Jose','Villa Nueva, Guatemala','2021-03-02','87456321','74521423','6000'),
('20200006','06','Lucia Mariela','Chiquimula, Guatemala','2021-03-04','5645745','35214245','500'),
('20200007','07','Maritza Andrea','Escuintla, Guatemala','2021-03-07','74562318','32547891','600'),
('20200008','08','Daniela Estefany','Mixco, Guatemala','2021-04-04','6574585','25478941','8002'),
('20200009','09','Edin Jose','Mixco, Guatemala','2021-04-04','85452145','65748541','6500')

select Empleado.ID_EMPLEADO, Empleado.Nombre, Area.ID_AREA
 from Empleado
 inner join Area on Empleado.ID_EMPLEADO = Area.ID_AREA







USE bienes_raices;

-- Crear la tabla Tipo
CREATE TABLE Tipo (
    Id_Tipo INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Tipo VARCHAR(100) NOT NULL
);

-- Insertar datos en la tabla Tipo
INSERT INTO Tipo VALUES 
(null, 'Casa'), 
(null, 'Departamento'), 
(null, 'Penthouse'), 
(null, 'Country'), 
(null, 'Local Comercial');

-- Crear la tabla Estado
CREATE TABLE Estado (
    Id_Estado INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Estado VARCHAR(100) NOT NULL
);

-- Insertar datos en la tabla Estado
INSERT INTO Estado VALUES 
(null, 'Disponible'), 
(null, 'Vendida'),
(null, 'Alquilada')


-- Crear la tabla OperatoriaComercial
CREATE TABLE OperatoriaComercial (
    Id_Operatoria_Comercial INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Operatoria_Comercial VARCHAR(100) NOT NULL
);

-- Insertar datos en la tabla OperatoriaComercial
INSERT INTO OperatoriaComercial VALUES 
(null, 'Venta'), 
(null, 'Alquiler'),
(null, 'No Disponible');

-- Crear la tabla Propietario
CREATE TABLE Propietario (
    Id_Propietario INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(255),
    Contacto VARCHAR(100)
);

-- Insertar datos en la tabla Propietario
INSERT INTO Propietario VALUES 
(null, 'Juan Perez', 'Segui 1824', 45467012), 
(null, 'Fernando Palacios', 'Saavdera 3012', 456267349), 
(null, 'Alejandro Garnacho', 'Candido Pujato 3258', 454267549),
(null, 'Nicki Nicole', 'Castelli 2026', 45623890),
(null, 'Mauro Lombardo', 'Pasaje Maipu 3340', 456439851);

-- Crear la tabla Propiedad
CREATE TABLE Propiedad (
    Id_Propiedad INT PRIMARY KEY AUTO_INCREMENT,
    Id_Tipo INT,
    Id_Estado INT,
    Id_Operatoria_Comercial INT,
    Id_Propietario INT,
    Nombre VARCHAR(100),
    Direccion VARCHAR(255),
    Contacto VARCHAR(100),
    FOREIGN KEY (Id_Tipo) REFERENCES Tipo(Id_Tipo),
    FOREIGN KEY (Id_Estado) REFERENCES Estado(Id_Estado),
    FOREIGN KEY (Id_Operatoria_Comercial) REFERENCES OperatoriaComercial(Id_Operatoria_Comercial),
    FOREIGN KEY (Id_Propietario) REFERENCES Propietario(Id_Propietario)
);

-- Insertar datos en la tabla Propiedad
INSERT INTO Propiedad (Id_Tipo, Id_Estado, Id_Operatoria_Comercial, Id_Propietario, Nombre, Direccion, Contacto) VALUES 
(1, 1, 1, 1, 'Casa a Estrenar', 'Alberdi 3364', '485377855'),
(1, 1, 1, 2, 'Casa Amoblada', 'Necochea 2325', '492178641'),
(2, 1, 1, 3, 'Departamento 2 Ambientes', 'Rivadavia 4350', '478339652'), 
(2, 1, 1, 4, 'Monoambiente', 'Calchines 1722', '432578965'),
(3, 1, 1, 5, 'Penthouse Lujoso', '9 de Julio 3572', '445683969');

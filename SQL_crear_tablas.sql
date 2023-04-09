CREATE DATABASE IF NOT EXISTS biblioteca;

USE biblioteca;

CREATE TABLE Tipo_usuarios(
    codigo_tipo CHAR(10) NOT NULL,
    tipo   CHAR(30) NOT NULL,
    PRIMARY KEY ( codigo )
);

CREATE TABLE Usuarios(
    codigo_usuario CHAR(10) NOT NULL,
    nombre CHAR(30) NOT NULL,
    telefono CHAR(12) NOT NULL, 
    direccion CHAR(40),
    correo CHAR(30) NOT NULL,
    codigo_tipo CHAR(10) NOT NULL,
    estado BOOLEAN NOT NULL,
    PRIMARY KEY (codigo_usuario)
);

CREATE TABLE categorias(
    codigo_categoria CHAR(10) NOT NULL,
    nombre CHAR(30) NOT NULL,
    PRIMARY KEY (codigo_categoria)
);

CREATE TABLE libros(
    codigo_libro CHAR(10) NOT NULL,
    titulo CHAR(30) NOT NULL,
    autor CHAR(30),
    codigo_categoria CHAR(10) NOT NULL,
    PRIMARY KEY (codigo_libro)
);

CREATE TABLE copias(
    codigo_barras CHAR(10) NOT NULL,
    estado,
    codigo_libro CHAR(10) NOT NULL,
    PRIMARY KEY (codigo_barras)
);

CREATE TABLE reglas(
    dias_prestamo INTEGER NOT NULL,
    valor_multa_diario MONEY NOT NULL,
    codigo_tipo CHAR(10) NOT NULL, 
    codigo_categoria CHAR(10) NOT NULL,
    PRIMARY KEY (codigo_tipo, codigocategoria)
);

CREATE TABLE prestamos(
    consecutivo_prestamo CHAR(10) NOT NULL,
    fecha_prestamo DATE NOT NULL,
    fecha_a_devolver DATE NOT NULL,
    fecha_devolucion DATE,
    codigo_barras CHAR(10) NOT NULL,
    codigo_usuario CHAR(10) NOT NULL,
    PRIMARY KEY (consecutivo_prestasmo)
);

CREATE TABLE multas(
    consecutivo_multa CHAR(10) NOT NULL,
    valor_multa MONEY NOT NULL,
    pagado BOOLEAN NOT NULL,
    consecutivo_prestamo CHAR(10) NOT NULL,
    PRIMARY KEY (consecutivo_multa)
);


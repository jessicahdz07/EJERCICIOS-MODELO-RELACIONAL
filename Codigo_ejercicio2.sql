create database facturas;
use facturas;

CREATE TABLE cliente (
  idcliente INT NOT NULL,
  nombre  VARCHAR(45) NULL,
  apellidos  VARCHAR(45) NULL,
  fecha_naimiento  DATE NULL,
  telefono VARCHAR(45) NULL,
  email  VARCHAR(45) NULL,
  PRIMARY KEY (idcliente));

CREATE TABLE modo_de_pago (
  idmodo_de_pago INT NOT NULL,
  nombres VARCHAR(45) NULL,
  otros_detalles VARCHAR(45) NULL,
  PRIMARY KEY (idmodo_de_pago));

CREATE TABLE Factura (
  idFactura INT NOT NULL,
  fecha  DATE NULL,
  cliente_idcliente  INT NOT NULL,
  modo_de_pago_idmodo_de_pago  INT NOT NULL,
  PRIMARY KEY (idFactura),
  INDEX (cliente_idcliente  ) ,
  INDEX  ( modo_de_pago_idmodo_de_pago ),
  CONSTRAINT Factura_cliente
    FOREIGN KEY (cliente_idcliente)
    REFERENCES cliente (idcliente),
  CONSTRAINT Factura_modo_de_pago
    FOREIGN KEY (modo_de_pago_idmodo_de_pago)
    REFERENCES modo_de_pago (idmodo_de_pago));

CREATE TABLE Categoria (
  idCategoria  INT NOT NULL,
  nombre  VARCHAR(45) NULL,
  descripcion  TEXT NULL,
  PRIMARY KEY ( idCategoria ));

CREATE TABLE Producto (
  idProducto  INT NOT NULL,
  nombre VARCHAR(45) NULL,
  precio INT NULL,
  stock  INT NULL,
  Categoria_idCategoria INT NOT NULL,
  PRIMARY KEY (idProducto),
  INDEX (Categoria_idCategoria ASC),
  CONSTRAINT Producto_Categoria
    FOREIGN KEY (Categoria_idCategoria)
    REFERENCES Categoria (idCategoria )
);

CREATE TABLE Detalle (
  num_Detalle  INT NOT NULL,
  cantidad VARCHAR(45) NULL,
  precio INT NULL,
  Producto_idProducto INT NOT NULL,
  Factura_idFactura INT NOT NULL,
  PRIMARY KEY (num_Detalle),
  INDEX (Producto_idProducto ) ,
  INDEX  (Factura_idFactura ) ,
  CONSTRAINT Detalle_Producto
    FOREIGN KEY (Producto_idProducto)
    REFERENCES Producto (idProducto),
  CONSTRAINT Detalle_Factura1
    FOREIGN KEY (Factura_idFactura)
REFERENCES derpartament (idderpartament));
create database arboles;
use arboles;


-- --------------------------------------------------------



CREATE TABLE arboles (
  idarbol int(11) NOT NULL,
  fuente tinytext DEFAULT NULL,
  Especie  tinytext DEFAULT NULL,
  edad double DEFAULT NULL,
  num.arbol int(11) DEFAULT NULL,
  diametro double DEFAULT NULL,
  altura double DEFAULT NULL,
  fecha_plan int(11) DEFAULT NULL,
  sitios_idsitios  int(11) NOT NULL;




CREATE TABLE contratos (
  idcontratos int(11) NOT NULL,
  contrato tinytext DEFAULT NULL,
  Predios_idPredios int(11) NOT NULL;



CREATE TABLE inverntario (
  idInverntario int(11) NOT NULL,
  realizo  tinytext DEFAULT NULL;




CREATE TABLE orden (
  idOrden int(11) NOT NULL,
  año_planta  varchar(45) DEFAULT NULL,
  superficie double DEFAULT NULL,
  bloque int(11) DEFAULT NULL,
  contratos_idcontratos  int(11) NOT NULL;



CREATE TABLE predios (
  idPredios int(11) NOT NULL,
  predio tinytext DEFAULT NULL,
  zona tinytext DEFAULT NULL,
  Inverntario_idInverntario int(11) NOT NULL;




CREATE TABLE sitios (
  idsitios int(11) NOT NULL,
  sitio int(11) DEFAULT NULL,
  Orden_idOrden int(11) NOT NULL;


-- --------------------------------------------------------


CREATE TABLE usuarios (
  idUsuarios int(11) NOT NULL,
  nombre tinytext DEFAULT NULL,
  apellidoP tinytext DEFAULT NULL,
  tipo tinytext DEFAULT NULL;





ALTER TABLE arboles
  ADD PRIMARY KEY (idarbol),
  ADD KEY fk_arboles_sitios1_idx (sitios_idsitios);


ALTER TABLE contratos
  ADD PRIMARY KEY (idcontratos),
  ADD KEY fk_contratos_Predios1_idx (Predios_idPredios);


ALTER TABLE inverntario
  ADD PRIMARY KEY (idInverntario);


ALTER TABLE orden
  ADD PRIMARY KEY (idOrden),
  ADD KEY fk_Orden_contratos1_idx (contratos_idcontratos);


ALTER TABLE predios
  ADD PRIMARY KEY (idPredios),
  ADD KEY Inverntario_idInverntario (Inverntario_idInverntario);


ALTER TABLE sitios
  ADD PRIMARY KEY (idsitios),
  ADD KEY fk_sitios_Orden1_idx (Orden_idOrden);


ALTER TABLE usuarios
  ADD PRIMARY KEY (idUsuarios);




--
ALTER TABLE arboles
  ADD CONSTRAINT fk_arboles_sitios1 
  FOREIGN KEY (sitios_idsitios) 
  REFERENCES sitios (idsitios);


ALTER TABLE contratos
  ADD CONSTRAINT fk_contratos_Predios1
  FOREIGN KEY (Predios_idPredios) 
  REFERENCES predios (idPredios);


ALTER TABLE orden
  ADD CONSTRAINT fk_Orden_contratos1
   FOREIGN KEY (contratos_idcontratos)
	 REFERENCES contratos (idcontratos);


ALTER TABLE predios
  ADD CONSTRAINT predios_ibfk_1 
  FOREIGN KEY (Inverntario_idInverntario) 
  REFERENCES inverntario (idInverntario);


ALTER TABLE sitios
  ADD CONSTRAINT sitios_ibfk_1 
  FOREIGN KEY (Orden_idOrden) 
  REFERENCES `orden` (`idOrden`);

create database users ;
use users;

CREATE TABLE USUARIOS (
  id_user INT(45) NOT NULL,
  nom_user  VARCHAR(100) NULL,
  pass_user VARCHAR(45) NULL,
  nombre_user VARCHAR(100) NULL,
  apell_user VARCHAR(100) NULL,
  email_user  VARCHAR(45) NULL,
  active VARCHAR(10) NULL,
  LEVEL  VARCHAR(45) NULL,
  PRIMARY KEY (id_user));


CREATE TABLE ACTIVATIONS  (
  code VARCHAR(100) NOT NULL,
  email  VARCHAR(100) NULL,
  nick VARCHAR(45) NULL,
  USUARIOS_id_user  INT(45) NOT NULL,
  PRIMARY KEY (code),
  INDEX (USUARIOS_id_user  ASC) ,
  CONSTRAINT ACTIVATIONS_USUARIOS
    FOREIGN KEY (USUARIOS_id_user )
    REFERENCES USUARIOS (id_user));



CREATE TABLE EMPRESA (
  code_empr  VARCHAR(45) NOT NULL,
  nom_empr  VARCHAR(45) NULL,
  mision_empr VARCHAR(1000) NULL,
  vision_empr  VARCHAR(1000) NULL,
  nit VARCHAR(150) NULL,
  rep_legal VARCHAR(150) NULL,
  cam_comer VARCHAR(150) NULL,
  telefono_1 VARCHAR(150) NULL,
  telefono_2 VARCHAR(150) NULL,
  direccion VARCHAR(150) NULL,
  email VARCHAR(150) NULL,
  website VARCHAR(150) NULL,
  PRIMARY KEY (code_empr));



CREATE TABLE ASIGNADOR_CODIGO  (
  codigo VARCHAR(45) NOT NULL,
  EMPRESA_code_empr  VARCHAR(45) NOT NULL,
  PRIMARY KEY (codigo),
  INDEX (EMPRESA_code_empr ASC) ,
  CONSTRAINT ASIGNADOR_CODIGO_EMPRESA
    FOREIGN KEY (EMPRESA_code_empr)
    REFERENCES EMPRESA (code_empr));


CREATE TABLE OBJETIVOS (
  objgen VARCHAR(500) NULL,
  obj1 VARCHAR(500) NULL,
  obj2 VARCHAR(500) NULL,
  obj3 VARCHAR(500) NULL,
  obj4 VARCHAR(500) NULL,
  EMPRESA_code_empr VARCHAR(45) NOT NULL,
  INDEX fk_OBJETIVOS_EMPRESA1_idx (EMPRESA_code_empr),
  PRIMARY KEY (EMPRESA_code_empr),
  CONSTRAINT OBJETIVOS_EMPRESA
    FOREIGN KEY (EMPRESA_code_empr)
    REFERENCES EMPRESA (code_empr));

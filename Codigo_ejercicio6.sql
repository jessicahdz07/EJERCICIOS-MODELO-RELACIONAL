create database musicos;
use musicos;

CREATE TABLE Genero (
  idGenero  INT NOT NULL,
  descripciom  VARCHAR(45) NULL,
  PRIMARY KEY (idGenero));

CREATE TABLE grupos (
  idgrupos INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  formacion DATE NULL,
  desintegracion DATE NULL,
  PRIMARY KEY (idgrupos));

CREATE Table musico (
  idmusico INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  instrumento VARCHAR(45) NOT NULL,
  lugardenaciemiento VARCHAR(45) NULL,
  fechanNaciemiento DATE NULL,
  fechamuerte DATE NULL,
  PRIMARY KEY (idmusico));



CREATE TABLE Musicogrupos (
  instrumento VARCHAR(45) NOT NULL,
  fechainicio DATE NULL,
  fechafin VARCHAR(45) NULL,
  musico_idmusico INT NOT NULL,
  grupos_idgrupos INT NOT NULL,
  INDEX  (musico_idmusico ) ,
  INDEX (grupos_idgrupos ) ,
  PRIMARY KEY (grupos_idgrupos, musico_idmusico),
  CONSTRAINT Musicogrupos_musico
    FOREIGN KEY (musico_idmusico)
    REFERENCES musico (idmusico),
  CONSTRAINT Musicogrupos_grupos
    FOREIGN KEY (grupos_idgrupos)
    REFERENCES grupos (idgrupos));



CREATE TABLE generogrupo (
  Genero_idGenero INT NOT NULL,
  grupos_idgrupos INT NOT NULL,
  INDEX  (Genero_idGenero ) ,
  INDEX (grupos_idgrupos ) ,
  PRIMARY KEY (Genero_idGenero, grupos_idgrupos),
  CONSTRAINT generogrupo_Genero
    FOREIGN KEY (Genero_idGenero)
    REFERENCES Genero (idGenero),
  CONSTRAINT generogrupo_grupos1
    FOREIGN KEY (grupos_idgrupos)
    REFERENCES grupos (idgrupos));

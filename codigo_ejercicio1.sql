CREATE DATABASE lenguaje;
use lenguaje;
-- -----------------------------------------------------

CREATE TABLE lenguaje (
  idlenguaje INT NOT NULL,
  name VARCHAR(45) NULL,
  PRIMARY KEY (idlenguaje));
-- -----------------------------------------------------

CREATE TABLE employee (
  id INT NOT NULL,
  name VARCHAR(45) NULL,
  lenguaje_idlenguaje INT NOT NULL,
  PRIMARY KEY (id),
  INDEX (lenguaje_idlenguaje) ,
  CONSTRAINT fk_employee_lenguaje1
    FOREIGN KEY (lenguaje_idlenguaje)
    REFERENCES lenguaje (idlenguaje));
-- -----------------------------------------------------

CREATE TABLE derpartament (
  idderpartament INT NOT NULL,
  name VARCHAR(45) NULL,
  code_derpartament VARCHAR(45) NULL,
  PRIMARY KEY (idderpartament));
-- -----------------------------------------------------

CREATE TABLE employeee_derpatament (
  idemployeee_derpatament INT NOT NULL,
  employee_id INT NOT NULL,
  derpartament_idderpartament INT NOT NULL,
  PRIMARY KEY ( idemployeee_derpatament),
  INDEX (employee_id) ,
  INDEX (derpartament_idderpartament) ,
  CONSTRAINT fk_employeee_derpatament_employee
    FOREIGN KEY (employee_id)
    REFERENCES employee (id),
  CONSTRAINT fk_employeee_derpatament_derpartament1
    FOREIGN KEY (derpartament_idderpartament)
    REFERENCES derpartament (idderpartament));
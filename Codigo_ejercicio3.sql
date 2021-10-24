create database students;
use students;

CREATE TABLE Seat (
  seat_number  INT NOT NULL,
  seat_position VARCHAR(45) NULL,
  PRIMARY KEY (seat_number ));



CREATE TABLE Student (
  idStudent  INT NOT NULL,
  Student_name VARCHAR(45) NULL,
  Student_address VARCHAR(45) NULL,
  Seat_seat_number  INT NOT NULL,
  PRIMARY KEY (idStudent),
  INDEX  (Seat_seat_number  ASC) ,
    FOREIGN KEY (Seat_seat_number)
    REFERENCES Seat (seat_number));



CREATE TABLE instructor (
  instructor_number INT NOT NULL,
  instructor_name  VARCHAR(45) NULL,
  instructor_faculty VARCHAR(45) NULL,
  PRIMARY KEY (instructor_number));



CREATE TABLE profesor (
  idprofesor  INT NOT NULL,
  profesor_name  VARCHAR(45) NULL,
  profesor_faculty  VARCHAR(45) NULL,
  PRIMARY KEY (idprofesor));



CREATE TABLE section (
  section_number  INT NOT NULL,
  profesor_idprofesor  INT NOT NULL,
  PRIMARY KEY (section_number),
  INDEX  (profesor_idprofesor ASC) ,
  CONSTRAINT profesor_idprofesor
    FOREIGN KEY (profesor_idprofesor)
    REFERENCES profesor  (idprofesor));



CREATE TABLE Class (
  course_name  DATE NOT NULL,
  section_number INT NULL,
  num_date_timel VARCHAR(45) NULL,
  section_section_number INT NOT NULL,
  PRIMARY KEY (course_name),
  INDEX  (section_section_number ASC) ,
    FOREIGN KEY (section_number)
    REFERENCES section (section_number))
   ;



CREATE TABLE Course (
  Course_name DATE NOT NULL,
  student_number INT NULL,
  Student_idStudent  INT NOT NULL,
  instructor_instructor_number INT NOT NULL,
  Class_course_name  DATE NOT NULL,
  PRIMARY KEY (Course_name),
  INDEX  (Student_idStudent) ,
  INDEX (instructor_instructor_number) ,
  INDEX (Class_course_name) ,
  CONSTRAINT Course_Student
    FOREIGN KEY (Student_idStudent )
    REFERENCES Student (idStudent),
  CONSTRAINT Course_instructor
    FOREIGN KEY (instructor_instructor_number)
    REFERENCES instructor (instructor_number),
  CONSTRAINT Course_Class
    FOREIGN KEY (Class_course_name)
    REFERENCES Class  (course_name));


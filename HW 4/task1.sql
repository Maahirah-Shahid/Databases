-- DROP DATABASE IF EXISTS pet_database;
-- CREATE DATABASE pet_database;
-- USE pet_database;

-- DROP TABLE IF EXISTS petPet, petEvent;


CREATE TABLE petPet (
  petname varchar(20) PRIMARY KEY,
  owner varchar(45) NOT NULL,
  species varchar(45) NOT NULL,
  gender ENUM('M','F'),
  birth date NOT NULL,
  death date
);

CREATE TABLE petEvent (
  petname varchar(20) NOT NULL,
  eventdate date NOT NULL,
  eventtype varchar(255),
  remark varchar(255),
  FOREIGN KEY (petname) REFERENCES petPet(petname),
  PRIMARY KEY (petname, eventdate, eventtype)
);

DESCRIBE petPet;
DESCRIBE petEvent;
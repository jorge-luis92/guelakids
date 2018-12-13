CREATE DATABASE data_base_guelakids;

use data_base_guelakids;

CREATE TABLE usuarios (
    id   INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nomnre_usuario  VARCHAR(20) NOT NULL,
    email       VARCHAR(100) NOT NULL,
    contraseña  VARCHAR(100) NOT NULL

);

CREATE TABLE administradores (
    id_admin INT(10) UNSIGNED ,
    FOREIGN KEY (id_admin) REFERENCES usuarios(id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE multimedia(
	id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    descripcion TEXT NOT NULL,
    url VARCHAR(100) NOT NULL,
    id_region INT (10) UNSIGNED

);
CREATE TABLE regiones(
    id INT (10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    descripcion TEXT NOT NULL

);

CREATE TABLE localizaciones (
    id_region INT (10) UNSIGNED,
    nombre VARCHAR (40) NOT NULL,
    latitud FLOAT (10,6) NOT NULL,
    altitud FLOAT (10,6) NOT NULL,
    descripcion TEXT NOT NULL,
    FOREIGN KEY (id_region) REFERENCES regiones(id)
);
 CREATE TABLE escuelas (
    clave VARCHAR(40) NOT NULL PRIMARY KEY,
    id_region INT (10) UNSIGNED,
    nombre VARCHAR (50) NOT NULL,
    latitud FLOAT (10,6) NOT NULL,
    altitud FLOAT (10,6) NOT NULL,
    direccion VARCHAR(40) NOT NULL

 );
 CREATE TABLE docente(
    id_docente INT(10) UNSIGNED,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR (60) NOT NULL,
    id_clave  VARCHAR(40) NOT NULL,
    id_multimedia INT (10) UNSIGNED,
    FOREIGN KEY (id_docente) REFERENCES usuarios (id),
    FOREIGN KEY (id_clave) REFERENCES escuelas (clave),
    FOREIGN KEY (id_multimedia) REFERENCES multimedia (id)

);

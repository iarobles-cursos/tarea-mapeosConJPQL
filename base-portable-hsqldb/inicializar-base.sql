/************** TABLA peliculas ***************/

/*##################################################################
Definición de tabla peliculas y datos de prueba
####################################################################*/
CREATE SEQUENCE peliculas_id_seq START WITH 1 INCREMENT BY 1;
CREATE TABLE peliculas(
   id INT GENERATED BY DEFAULT AS SEQUENCE peliculas_id_seq,
   titulo VARCHAR(300),
   fecha_estreno DATE,
   calificacion VARCHAR(100),   
   PRIMARY KEY(id)
);

INSERT INTO peliculas(id, titulo, fecha_estreno,calificacion)
VALUES(DEFAULT,'El gran Lebowski', '1996-01-18','R');

INSERT INTO peliculas(id, titulo, fecha_estreno,calificacion)
VALUES(DEFAULT,'No es pais para viejos', '2007-11-21','R');

INSERT INTO peliculas(id, titulo, fecha_estreno,calificacion)
VALUES(DEFAULT,'En realidad, nunca estuviste aquí', '2017-05-27','R');
 
INSERT INTO peliculas(id, titulo, fecha_estreno,calificacion)
VALUES(DEFAULT,'Predestinación', '2015-01-09','R');

INSERT INTO peliculas(id, titulo, fecha_estreno,calificacion)
VALUES(DEFAULT,'Voraz', '2016-04-14','R');

INSERT INTO peliculas(id, titulo, fecha_estreno,calificacion)
VALUES(DEFAULT,'Coherencia', '2013-09-19','NR');

INSERT INTO peliculas(id, titulo, fecha_estreno,calificacion)
VALUES(DEFAULT,'Stalker', '1979-04-01','NR');


/*##################################################################
Definición de tabla directores y datos de prueba
####################################################################*/
CREATE SEQUENCE directores_id_seq START WITH 1 INCREMENT BY 1;
CREATE TABLE directores(
   id INT GENERATED BY DEFAULT AS SEQUENCE directores_id_seq,
   nombre VARCHAR(300),
   nacionalidad VARCHAR(300),
   PRIMARY KEY(id) 
);


INSERT INTO directores(id, nombre, nacionalidad)
VALUES(DEFAULT, 'Lynne Ramsay', 'Escosesa');

INSERT INTO directores(id, nombre, nacionalidad)
VALUES(DEFAULT, 'Joel Coen', 'Estadounidense');

INSERT INTO directores(id, nombre, nacionalidad)
VALUES(DEFAULT, 'Ethan Coen', 'Estadounidense');

INSERT INTO directores(id, nombre, nacionalidad)
VALUES(DEFAULT, 'Julia Ducournau', 'Francesa');

INSERT INTO directores(id, nombre, nacionalidad)
VALUES(DEFAULT, 'Michael Spierig', 'Alemana');

INSERT INTO directores(id, nombre, nacionalidad)
VALUES(DEFAULT, 'Peter Spierig', 'Alemana');

INSERT INTO directores(id, nombre, nacionalidad)
VALUES(DEFAULT, 'James Ward', 'Estadounidense');

INSERT INTO directores(id, nombre, nacionalidad)
VALUES(DEFAULT, 'Andrei Tarkovsky', 'Ruso');

/*##################################################################
Definición de tabla generos y datos de prueba
####################################################################*/
CREATE SEQUENCE generos_id_seq START WITH 1 INCREMENT BY 1;
CREATE TABLE generos(
   id INT GENERATED BY DEFAULT AS SEQUENCE generos_id_seq,
   nombre VARCHAR(300),
   PRIMARY KEY(id) 
);

INSERT INTO generos(id,nombre) VALUES(DEFAULT,'Terror');
INSERT INTO generos(id,nombre) VALUES(DEFAULT,'Ciencia ficción');
INSERT INTO generos(id,nombre) VALUES(DEFAULT,'Suspenso');
INSERT INTO generos(id,nombre) VALUES(DEFAULT,'Drama');
INSERT INTO generos(id,nombre) VALUES(DEFAULT,'Comedia');



/*##################################################################
tabla para relación MUCHOS A MUCHOS entre pelculas y generos 
####################################################################*/

CREATE TABLE peliculas_generos(
   id_pelicula INT,
   id_genero INT,
   PRIMARY KEY(id_pelicula,id_genero),
   FOREIGN KEY(id_pelicula) REFERENCES peliculas,
   FOREIGN KEY(id_genero) REFERENCES generos 
);

INSERT INTO peliculas_generos(id_pelicula,id_genero) 
VALUES(1,5);
INSERT INTO peliculas_generos(id_pelicula,id_genero) 
VALUES(2,3);
INSERT INTO peliculas_generos(id_pelicula,id_genero) 
VALUES(3,3);
INSERT INTO peliculas_generos(id_pelicula,id_genero) 
VALUES(3,4);
INSERT INTO peliculas_generos(id_pelicula,id_genero) 
VALUES(4,2);
INSERT INTO peliculas_generos(id_pelicula,id_genero) 
VALUES(4,3);
INSERT INTO peliculas_generos(id_pelicula,id_genero) 
VALUES(5,1);
INSERT INTO peliculas_generos(id_pelicula,id_genero) 
VALUES(6,2);
INSERT INTO peliculas_generos(id_pelicula,id_genero) 
VALUES(6,3);
INSERT INTO peliculas_generos(id_pelicula,id_genero) 
VALUES(7,4);
INSERT INTO peliculas_generos(id_pelicula,id_genero) 
VALUES(7,2);

/*##################################################################
tabla para relación MUCHOS A MUCHOS entre peliculas y directores 
####################################################################*/
CREATE TABLE  peliculas_directores(
   id_pelicula INT,
   id_director INT,
   PRIMARY KEY(id_pelicula, id_director),
   FOREIGN KEY(id_pelicula) REFERENCES peliculas,
   FOREIGN KEY(id_director) REFERENCES directores
);


INSERT INTO peliculas_directores(id_pelicula, id_director) VALUES(1,2);
INSERT INTO peliculas_directores(id_pelicula, id_director) VALUES(1,3);
INSERT INTO peliculas_directores(id_pelicula, id_director) VALUES(2,2);
INSERT INTO peliculas_directores(id_pelicula, id_director) VALUES(2,3);
INSERT INTO peliculas_directores(id_pelicula, id_director) VALUES(3,1);
INSERT INTO peliculas_directores(id_pelicula, id_director) VALUES(4,5);
INSERT INTO peliculas_directores(id_pelicula, id_director) VALUES(4,6);
INSERT INTO peliculas_directores(id_pelicula, id_director) VALUES(5,4);
INSERT INTO peliculas_directores(id_pelicula, id_director) VALUES(6,7);
INSERT INTO peliculas_directores(id_pelicula, id_director) VALUES(7,8);
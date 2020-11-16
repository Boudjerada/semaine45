drop database if exists biblio;
CREATE DATABASE biblio character set utf8;
USE biblio;
CREATE TABLE livre(
   isbn VARCHAR(13),
   titre VARCHAR(255) NOT NULL,
   PRIMARY KEY(isbn)
);

CREATE TABLE auteur(
   id_auteur INT,
   nom VARCHAR(255) NOT NULL,
   prenom VARCHAR(255),
   PRIMARY KEY(id_auteur)
);

CREATE TABLE ecrire(
   isbn VARCHAR(13) NOT NULL, 
   id_auteur INT NOT NULL,
   PRIMARY KEY(isbn, id_auteur),
   FOREIGN KEY(isbn) REFERENCES livre(isbn),
   FOREIGN KEY(id_auteur) REFERENCES auteur(id_auteur)
);


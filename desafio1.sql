DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
	id_plan INT PRIMARY KEY AUTO_INCREMENT,
    name_plan VARCHAR(80) NOT NULL,
    price DECIMAL(5,2)
    );

CREATE TABLE user(
	id_user INT PRIMARY KEY AUTO_INCREMENT,
    name_user VARCHAR(80) NOT NULL,
    birthdate DATE,
    id_plan INT,
    FOREIGN KEY (id_plan) REFERENCES plan(id_plan)
    );
    
CREATE TABLE artist(
	id_artist INT PRIMARY KEY AUTO_INCREMENT,
    name_artist VARCHAR(80) NOT NULL,
    id_user INT,
    FOREIGN KEY (id_user) REFERENCES user(id_user)
    );
    
CREATE TABLE following(
	id_user INT,
    id_artist INT,
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (id_artist) REFERENCES artist(id_artist)
    );

CREATE TABLE album(
	id_album INT PRIMARY KEY AUTO_INCREMENT,
    name_album VARCHAR(80) NOT NULL,
    id_artist INT,
    FOREIGN KEY (id_artist) REFERENCES artist(id_artist)
    );

CREATE TABLE music(
	id_music INT PRIMARY KEY AUTO_INCREMENT,
    name_music VARCHAR(80) NOT NULL,
    id_album INT,
    FOREIGN KEY (id_album) REFERENCES album(id_album)
    );

CREATE TABLE history(
	id_user INT,
    id_music INT,
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (id_music) REFERENCES music(id_music)
    );
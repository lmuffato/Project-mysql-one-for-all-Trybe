DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans(
id_plan INT PRIMARY KEY AUTO_INCREMENT,
plan_name VARCHAR(30) NOT NULL,
price_plan DECIMAL(5,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(80) NOT NULL,
age INT NOT NULL,
id_plan INT NOT NULL,
FOREIGN KEY (id_plan) REFERENCES plans(id_plan)
) ENGINE = InnoDB;

CREATE TABLE artists(
id_artist INT PRIMARY KEY AUTO_INCREMENT,
name_artist VARCHAR(80) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE albums(
id_album INT PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(100) NOT NULL,
id_artist INT NOT NULL,
FOREIGN KEY (id_artist) REFERENCES artists(id_artist)
) ENGINE = InnoDB;

CREATE TABLE songs(
song_id INT PRIMARY KEY AUTO_INCREMENT,
song_name VARCHAR(300) NOT NULL,
id_album INT NOT NULL,
FOREIGN KEY (id_album) REFERENCES albums(id_album)
) ENGINE = InnoDB;

CREATE TABLE `history`(
user_id INT NOT NULL,
song_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (song_id, user_id),
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id)
) ENGINE = InnoDB;

CREATE TABLE follow_artist (
user_id INT NOT NULL,
id_artist INT NOT NULL,
CONSTRAINT PRIMARY KEY (id_artist, user_id),
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (id_artist) REFERENCES artists(id_artist)
) ENGINE = InnoDB;

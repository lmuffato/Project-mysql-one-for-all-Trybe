DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(50) NOT NULL,
    plan_price DECIMAL(4,2) NOT NULL
) engine = InnoDB;
CREATE TABLE users(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(50) NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;

CREATE TABLE artists(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE followed_artists(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE albums(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(100) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE songs(
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    song_name VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
) engine = InnoDB;

CREATE TABLE songs_history(
    song_id INT NOT NULL,
    user_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (song_id, user_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
) engine = InnoDB;


INSERT INTO plans(plan_name, plan_price)
VALUES
  ('Student plan', 9.90),
  ('Duo plan', 24.90),
  ('Family plan', 34.90);

INSERT INTO users(user_name, plan_id)
VALUES
  ('Alan Albuquerque', 1),
  ('Jhon Doe', 3),
  ('Tetsuya Oogask', 1),
  ('Denis Melo', 2);
INSERT INTO artists(artist_name) 
VALUES
  ('Yoñlu'), ('Terno'), ('Bo Buhman'), ('potsu');

INSERT INTO followed_artists(user_id, artist_id)
VALUES
  (1, 2),(2, 1),(3,4),(5,3),(3,3),(4,2),(1,3),(4,3);

INSERT INTO albums(album_name, artist_id)
VALUES
  ('a Society in which no tear is shed is inconceivably mediocre', 1),
  ('<Atrás/Além>', 2),
  ('Inside', 3),
  ('Death of a Bachelor', 4),
  ('Reaching for a star', 5);

INSERT INTO songs(song_name, album_id)
VALUES 
  ('Suicide song', 1),
  ('Mecânica celeste aplicada', 1),
  ('Regra de três', 1),
  ('Tudo que eu não fiz', 2),
  ('Pegando leve', 2),
  ('Eu vou', 2),
  ('Welcome to the internet', 3),
  ('Comedy', 3),
  ('All eyes on me', 3),
  ('Victorious', 4),
  ('dont threaten me with a good time', 4),
  ('Hallelujah', 4),
  ('take me there', 5),
  ('bossa uh', 5),
  ('im closing my eyes', 5),
  ('oops', 4),
  ('be', 5),
  ('sunny', 2);

INSERT INTO songs_history(song_id, user_id) 
VALUES 
    (1,1),(3,1),(2,1),(7,1),
    (23,3),(22,2),(13,4),(10,3),(2,2),
    (23,4),(24,5),(13,2),(10,2),(22,4);

DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans(
  plan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  value DOUBLE
) engine = InnoDB;

INSERT INTO plans (plan_id, name, value) VALUES
	(1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);

CREATE TABLE users(
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  plan_id INT,
  FOREIGN KEY (plan_id) REFERENCES plans (plan_id)
) engine = InnoDB;

INSERT INTO users (user_id, name, age, plan_id) VALUES
	(1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);

CREATE TABLE artists(
  artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50)
) engine = InnoDB;

CREATE TABLE albuns(
  album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  artist_id INT,
  FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) engine = InnoDB;

CREATE TABLE songs(
  song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) engine = InnoDB;

CREATE TABLE follows(
  user_id INT,
  artist_id INT,
  CONSTRAINT PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) engine = InnoDB;

CREATE TABLE reproductions(
  user_id INT,
  song_id INT,
  CONSTRAINT PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (song_id) REFERENCES songs (song_id)
) engine = InnoDB;

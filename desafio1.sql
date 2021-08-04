DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS plan (
  id INT AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  price FLOAT NOT NULL,
  CONSTRAINT plan_pk
    PRIMARY KEY (id),
  UNIQUE KEY(name)
);

CREATE TABLE IF NOT EXISTS artist (
  id INT AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  CONSTRAINT artist_pk
    PRIMARY KEY (id),
  UNIQUE KEY (name)
);

CREATE TABLE IF NOT EXISTS album (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  artist_id INT NOT NULL,
  CONSTRAINT album_pk
	PRIMARY KEY (id),
  CONSTRAINT album_artist_id_fk
	FOREIGN KEY (artist_id) REFERENCES artist (id)
);

CREATE TABLE IF NOT EXISTS song (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  album_id INT NOT NULL,
  CONSTRAINT song_pk
	PRIMARY KEY (id),
  CONSTRAINT song_album_id_fk
	FOREIGN KEY (album_id) REFERENCES album (id)
);

CREATE TABLE IF NOT EXISTS user (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  CONSTRAINT user_pk
	PRIMARY KEY (id),
  CONSTRAINT user_plan_id_fk
	FOREIGN KEY (plan_id) REFERENCES plan (id)
);

CREATE TABLE IF NOT EXISTS follow_artist (
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  CONSTRAINT follow_artist_artist_id_fk
  	FOREIGN KEY (artist_id) REFERENCES artist (id),
  CONSTRAINT follow_artist_user_id_fk
	FOREIGN KEY (user_id) REFERENCES user (id),
  CONSTRAINT follow_artist_user_id_artist_id_fk
    PRIMARY KEY (user_id, artist_id)
);

CREATE TABLE IF NOT EXISTS reproduction_history (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  CONSTRAINT reproduction_history_user_id_fk
  	FOREIGN KEY (user_id) REFERENCES user (id),
  CONSTRAINT reproduction_song_id_fk
	  FOREIGN KEY (song_id) REFERENCES song (id),
  CONSTRAINT reproduction_history_user_id_song_id_fk
    PRIMARY KEY (user_id, song_id)
);

INSERT INTO plan (name, price)
  VALUES
    ('gratuito', 0.00),
    ('universitário', 5.99),
    ('familiar', 7.99);

INSERT INTO artist (name)
  VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');

INSERT INTO album (name, artist_id)
  VALUES
    ('Envious', 1),
    ('Exuberant', 1),
    ('Hallowed Steam', 2),
    ('Incandescent', 3),
    ('Temporary Culture', 4);

INSERT INTO song (name, album_id)
  VALUES
    ('Soul For Us', 1),
    ('Reflections Of Magic', 1),
    ('Dance With Her Own', 1),
    ('Troubles Of My Inner Fire', 2),
    ('Time Fireworks', 2),
    ('Magic Circus', 3),
    ('Honey, So Do I', 3),
    ('Sweetie, Let''s Go Wild', 3),
    ('She Knows', 3),
    ('Fantasy For Me', 4),
    ('Celebration Of More', 4),
    ('Rock His Everything', 4),
    ('Home Forever', 4),
    ('Diamond Power', 4),
    ('Honey, Let''s Be Silly', 4),
    ('Thang Of Thunder', 5),
    ('Words Of Her Life', 5),
    ('Without My Streets', 5);

INSERT INTO user (name, age, plan_id)
  VALUES
    ('Thati', 23, 1),
    ('Cintia', 35, 3),
    ('Bill', 20, 2),
    ('Roger', 45, 1);

INSERT INTO follow_artist (user_id, artist_id)
  VALUES
    (1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);

INSERT INTO reproduction_history (user_id, song_id)
  VALUES
    (1, 1),
    (1, 6),
    (1, 14),
    (1, 16),
    (2, 13),
    (2, 17),
    (2, 2),
    (2, 15),
    (3, 4),
    (3, 16),
    (3, 6),
    (4, 3),
    (4, 18),
    (4, 11);

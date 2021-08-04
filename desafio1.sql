DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
  plan_id INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(70) NOT NULL,
  `value` DOUBLE(4, 2) NOT NULL,
  PRIMARY KEY (plan_id)
) engine = InnoDB;

CREATE TABLE `user`(
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(80) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  PRIMARY KEY (`user_id`),
  FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;

CREATE TABLE song (
  song_id INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (song_id)
) engine = InnoDB;

CREATE TABLE album (
  album_id INT NOT NULL AUTO_INCREMENT,
  song_id INT NOT NULL,
  PRIMARY KEY (album_id)
) engine = InnoDB;

CREATE TABLE artist (
  artist_id INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(70) NOT NULL,
  album_id INT NOT NULL,
  PRIMARY KEY (artist_id),
  FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

ALTER TABLE album ADD artist_id INT NOT NULL;

ALTER TABLE album ADD `name` VARCHAR(50) NOT NULL;

ALTER TABLE album ADD CONSTRAINT artist_id FOREIGN KEY (artist_id) REFERENCES artist(artist_id);

CREATE TABLE follow_artist (
  `user_id` INT NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

CREATE TABLE listened_song (
  `user_id` INT NOT NULL,
  song_id INT NOT NULL,
  FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`),
  FOREIGN KEY (song_id) REFERENCES song(song_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.plan (`name`, `value`)
VALUES
  ('gratuito', 0),
  ('universitário', 5.99),
  ('familiar', 7.99);

INSERT INTO SpotifyClone.song (`name`)
VALUES
  ('Soul For Us'),
  ('Reflections Of Magic'),
  ('Dance With Her On'),
  ('Troubles Of My Inner Fire'),
  ('Time'),
  ('Magic Circus'),
  ('Honey, So Do I'),
  ("Sweetie, Let's Go Wild"),
  ('She Knows'),
  ('Fantasy For Me'),
  ('Celebration Of More'),
  ('Rock His Everything'),
  ('Home Forever'),
  ('Diamond Power'),
  ("Honey, Let's Be Silly"),
  ('Thang Of Thunder'),
  ('Words Of Her Life'),
  ('Without My Streets');

INSERT INTO SpotifyClone.user (`name`, age, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 3),
  ('Bill', 20, 2),
  ('Roger', 45, 1);

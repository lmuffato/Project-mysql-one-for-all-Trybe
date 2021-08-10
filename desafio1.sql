DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

-- USE SpotifyClone;

CREATE TABLE SpotifyClone.plan(
  plan_id INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(70) NOT NULL,
  `value` DOUBLE(4, 2) NOT NULL,
  PRIMARY KEY (plan_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.`user`(
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(80) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  PRIMARY KEY (`user_id`),
  FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artist (
  artist_id INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(70) NOT NULL,
  PRIMARY KEY (artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.album (
  album_id INT NOT NULL AUTO_INCREMENT,
  artist_id INT NOT NULL,
  `name` VARCHAR(40) NOT NULL,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.song (
  song_id INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  album_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (song_id),
  FOREIGN KEY (album_id) REFERENCES album(album_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;


CREATE TABLE SpotifyClone.follow_artist (
  `user_id` INT NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
  PRIMARY KEY (`user_id`, artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.listened_song (
  `user_id` INT NOT NULL,
  song_id INT NOT NULL,
  FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`),
  FOREIGN KEY (song_id) REFERENCES song(song_id),
  PRIMARY KEY (`user_id`, song_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.plan (`name`, `value`)
VALUES
  ('gratuito', 0),
  ('universitário', 5.99),
  ('familiar', 7.99);

INSERT INTO SpotifyClone.user (`name`, age, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 3),
  ('Bill', 20, 2),
  ('Roger', 45, 1);

INSERT INTO SpotifyClone.artist (`name`)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO SpotifyClone.album (artist_id, `name`)
VALUES
  (1, 'Envious'),
  (1, 'Exuberant'),
  (2, 'Hallowed Steam'),
  (3, 'Incandescent'),
  (4, 'Temporary Culture');

INSERT INTO SpotifyClone.follow_artist (`user_id`, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

INSERT INTO SpotifyClone.song (`name`, album_id, artist_id)
VALUES
  ('Soul For Us', 1, 1),
  ('Reflections Of Magic', 1, 1),
  ('Dance With Her Own', 1, 1),
  ('Troubles Of My Inner Fire', 2, 1),
  ('Time Fireworks', 2, 1),
  ('Magic Circus', 3, 2),
  ('Honey, So Do I', 3, 2),
  ("Sweetie, Let's Go Wild", 3, 2),
  ('She Knows', 3, 2),
  ('Fantasy For Me', 4, 3),
  ('Celebration Of More', 4, 3),
  ('Rock His Everything', 4, 3),
  ('Home Forever', 4, 3),
  ('Diamond Power', 4, 3),
  ("Honey, Let's Be Silly", 4, 3),
  ('Thang Of Thunder', 5, 4),
  ('Words Of Her Life', 5, 4),
  ('Without My Streets', 5, 4);

INSERT INTO SpotifyClone.listened_song (`user_id`, song_id)
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

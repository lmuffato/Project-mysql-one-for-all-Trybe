DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;
CREATE TABLE membership(
  membership_id INT PRIMARY KEY AUTO_INCREMENT,
  membership_name VARCHAR(50) NOT NULL,
  membership_value DECIMAL(5, 2) NOT NULL
) engine = InnoDB;
CREATE TABLE users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  membership_id INT NOT NULL,
  FOREIGN KEY (membership_id) REFERENCES membership (membership_id)
) engine = InnoDB;
CREATE TABLE artists(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(50) NOT NULL
) engine = InnoDB;
CREATE TABLE albums(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(50) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) engine = InnoDB;
CREATE TABLE songs(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(50) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums (album_id)
) engine = InnoDB;
CREATE TABLE followed_artists (
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) engine = InnoDB;
CREATE TABLE listening_history (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (song_id) REFERENCES songs (song_id)
) engine = InnoDB;
INSERT INTO membership (membership_name, membership_value)
VALUES ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);
INSERT INTO users (user_name, age, membership_id)
VALUES ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);
INSERT INTO artists (artist_name)
VALUES ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
INSERT INTO albums (album_name, artist_id)
VALUES ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);
INSERT INTO songs (song_name, album_id)
VALUES ('Soul For Us', 1),
  ('Magic Circus', 3),
  ('Diamond Power', 4),
  ('Thang Of Thunder', 5),
  ('Home Forever', 4),
  ('Words Of Her Life', 5),
  ('Reflections Of Magic', 1),
  ("Honey, Let's Be Silly", 4),
  ('Troubles Of My Inner Fire', 2),
  ('Dance With Her Own', 1),
  ('Without My Streets', 5),
  ('Celebration Of More', 4),
  ('Time Fireworks', 2),
  ('Honey, So Do I', 3),
  ("Sweetie, Let's Go Wild", 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Rock His Everything', 4);
INSERT INTO followed_artists (user_id, artist_id)
VALUES (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
INSERT INTO listening_history (user_id, song_id)
VALUES (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (2, 5),
  (2, 6),
  (2, 7),
  (2, 8),
  (3, 9),
  (3, 4),
  (3, 2),
  (4, 10),
  (4, 11),
  (4, 12);

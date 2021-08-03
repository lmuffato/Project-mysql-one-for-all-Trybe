DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  plan_name VARCHAR(50) NOT NULL,
  price DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE users(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plans (id)
) engine = InnoDB;

CREATE TABLE artists(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artist_name VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE albums(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  album_name VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE songs(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  song_name VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE album_details(
  album_id INT,
  artist_id INT,
  song_id INT,
  CONSTRAINT PRIMARY KEY(album_id, artist_id, song_id),
  FOREIGN KEY (album_id) REFERENCES albums (id),
  FOREIGN KEY (artist_id) REFERENCES artists (id),
  FOREIGN KEY (song_id) REFERENCES songs (id)
) engine = InnoDB;

CREATE TABLE user_history(
  user_id INT,
  song_id INT,
  CONSTRAINT PRIMARY KEY(song_id, user_id),
  FOREIGN KEY (song_id) REFERENCES songs (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
) engine = InnoDB;

CREATE TABLE user_likes(
  artist_id INT,
  user_id INT,
  CONSTRAINT PRIMARY KEY(artist_id, user_id),
  FOREIGN KEY (artist_id) REFERENCES artists (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
) engine = InnoDB;

INSERT INTO
  plans (plan_name, price)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitario', 5.99);
  
INSERT INTO
  users (user_name, age, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO
  artists (artist_name)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO
  albums (album_name)
VALUES
  ('Envious'),
  ('Exuberant'),
  ('Hallowed Steam'),
  ('Incandescent'),
  ('Temporary Culture');

INSERT INTO
  songs (song_name)
VALUES
  ('Soul For Us'),
  ('Reflections Of Magic'),
  ('Dance With Her Own'),
  ('Troubles Of My Inner Fire'),
  ('Time Fireworks'),
  ('Magic Circus'),
  ("Honey, So Do I"),
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

INSERT INTO
  album_details (album_id, artist_id, song_id)
VALUES
  (1, 1, 1),
  (1, 1, 2),
  (1, 1, 3),
  (2, 1, 4),
  (2, 1, 5),
  (3, 2, 6),
  (3, 2, 7),
  (3, 2, 8),
  (3, 2, 9),
  (4, 3, 10),
  (4, 3, 11),
  (4, 3, 12),
  (4, 3, 13),
  (4, 3, 14),
  (4, 3, 15),
  (5, 4, 16),
  (5, 4, 17),
  (5, 4, 18);

INSERT INTO
  user_history (user_id, song_id)
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

INSERT INTO
  user_likes (user_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

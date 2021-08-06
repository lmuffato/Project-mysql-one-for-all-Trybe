DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan_name VARCHAR(50) NOT NULL,
  value DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE users(
  user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  plan_id INT NOT NULL,
  user_name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;

CREATE TABLE artist(
  artista_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name_artist VARCHAR(40) NOT NULL
) engine = InnoDB;

CREATE TABLE album(
  album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  artista_id INT NOT NULL,
  name_album VARCHAR(40) NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artist(artista_id)
) engine = InnoDB;

CREATE TABLE songs(
  song_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  album_id INT NOT NULL,
  song VARCHAR(255) NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE historic(
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY(user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (song_id) REFERENCES songs(song_id)
) engine = InnoDB;

CREATE TABLE following(
  user_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY(user_id, artista_id),
  FOREIGN KEY (artista_id) REFERENCES artist(artista_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
) engine = InnoDB;

INSERT INTO plans (plan_name, value)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO users (plan_id, user_name, age)
VALUES
  (1, 'Thati', 23),
  (2, 'Cintia', 35),
  (3, 'Bill', 20),
  (1, 'Roger', 45);

INSERT INTO artist (name_artist)
VALUES
  ('Walter Phoenix'),
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong');

INSERT INTO album (artista_id, name_album)
VALUES
  (1, 'Envious'),
  (1, 'Exuberant'),
  (4, 'Hallowed Steam'),
  (3, 'Incandescent'),
  (2, 'Temporary Culture');

INSERT INTO songs (album_id, song)
VALUES
  (1, 'Soul For Us'),
  (1, 'Reflections Of Magic'),
  (1, 'Dance With Her Own'),
  (2, 'Troubles Of My Inner Fire'),
  (2, 'Time Fireworks'),
  (3, 'Magic Circus'),
  (3, 'Honey, So Do I'),
  (3, "Sweetie, Let's Go Wild"),
  (3, 'She Knows'),
  (4, 'Fantasy For Me'),
  (4, 'Celebration Of More'),
  (4, 'Rock His Everything'),
  (4, 'Home Forever'),
  (4, 'Diamond Power'),
  (4, "Honey, Let's Be Silly"),
  (5, 'Thang Of Thunder'),
  (5, 'Words Of Her Life'),
  (5, 'Without My Streets');

INSERT INTO historic (user_id, song_id)
VALUES
  (1,1),
  (1,6),
  (1,14),
  (1,16),
  (2,13),
  (2,17),
  (2,15),
  (2,2),
  (3,4),
  (3,16),
  (3,6),
  (4,3),
  (4,11),
  (4,18);

INSERT INTO following (user_id, artista_id)
VALUES
  (1,1),
  (1,2),
  (1,3),
  (2,1),
  (2,3),
  (3,4),
  (3,1),
  (4,2);

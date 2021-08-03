DROP DATABASE IF EXISTS SpotifyClone;
CREATE SCHEMA SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans(
  plans_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  plans_name VARCHAR(100) NOT NULL,
  plans_value DECIMAL(5, 2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE users(
  users_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  users_name VARCHAR(100) NOT NULL,
  users_age INT NOT NULL,
  plans_id INT NOT NULL,
  FOREIGN KEY (plans_id) REFERENCES plans(plans_id)
) ENGINE=InnoDB;

CREATE TABLE artists(
  artists_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artists_name VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE albums(
  albums_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  albums_name VARCHAR(100),
  artists_id INT NOT NULL,
  FOREIGN KEY (artists_id) REFERENCES artists(artists_id)
) ENGINE=InnoDB;

CREATE TABLE songs(
  songs_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  songs_name VARCHAR(100),
  albums_id INT NOT NULL,
  FOREIGN KEY (albums_id) REFERENCES albums(albums_id)
) ENGINE=InnoDB;

CREATE TABLE reproductions_history(
  users_id INT NOT NULL,
  songs_id INT NOT NULL,
  PRIMARY KEY (users_id, songs_id),
  FOREIGN KEY (users_id) REFERENCES users(users_id),
  FOREIGN KEY (songs_id) REFERENCES songs(songs_id)
) ENGINE=InnoDB;

CREATE TABLE followers(
  users_id INT NOT NULL,
  artists_id INT NOT NULL,
  PRIMARY KEY (users_id, artists_id),
  FOREIGN KEY (users_id) REFERENCES users(users_id),
  FOREIGN KEY (artists_id) REFERENCES artists(artists_id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.plans(plans_name, plans_value) VALUES
('gratuito', 0),
('familliar', 7.99),
('universitário', 5.99);

INSERT INTO SpotifyClone.users(users_name, users_age, plans_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO SpotifyClone.artists(artists_name) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.albums(albums_name, artists_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO SpotifyClone.songs(songs_name, albums_id)
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

INSERT INTO SpotifyClone.reproductions_history(users_id, songs_id)
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

INSERT INTO SpotifyClone.followers(users_id, artists_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

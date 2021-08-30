DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans (
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan_type VARCHAR(100) NOT NULL,
  price VARCHAR(10) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) ENGINE=InnoDB;

CREATE TABLE artists (
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE albums (
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(100) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) ENGINE=InnoDB;

CREATE TABLE musics (
  music_id INT PRIMARY KEY AUTO_INCREMENT,
  album_id INT NOT NULL,
  music VARCHAR(200) NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
) ENGINE=InnoDB;

CREATE TABLE played (
  played_id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  music_id INT NOT NULL,
  PRIMARY KEY (played_id, user_id, music_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (music_id) REFERENCES musics(music_id)
) ENGINE=InnoDB;

CREATE TABLE social (
  conection_id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (conection_id, user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) ENGINE=InnoDB;


INSERT INTO plans (plan_type, price) VALUES
('free', 0),
('family', 7.99),
('student', 5.99);

INSERT INTO users (username, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artists (artist) VALUES
('Walter Phoenix'),
('Freedie Shannon'),
('Lance Day'),
('Peter Song');

INSERT INTO albums (album, artist_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 4),
('Incandescent', 3),
('Temporary Culture', 2);

INSERT INTO musics (album_id, music) VALUES
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

INSERT INTO played (user_id, music_id) VALUES
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

INSERT INTO social (user_id, artist_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 4),
(3, 1),
(4, 2);

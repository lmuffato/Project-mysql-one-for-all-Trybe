DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan_type VARCHAR(100) NOT NULL,
price DOUBLE NOT NULL
);

INSERT INTO plans (plan_type, price) VALUES
('free', 0.00),
('family', 7.99),
('student', 5.99);

CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
`user` VARCHAR(100) NOT NULL,
age INT NOT NULL,
plan_id_fk INT NOT NULL,
FOREIGN KEY (plan_id_fk) REFERENCES plans(plan_id)
);

INSERT INTO users (`user`, age, plan_id_fk) VALUES
('Thati', 23, 1),
('Cintia', 25, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE artists(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist_name VARCHAR(100) NOT NULL
);

INSERT INTO artists (artist_name) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shanno');

CREATE TABLE albums(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(100) NOT NULL,
artist_id_fk INT NOT NULL,
FOREIGN KEY (artist_id_fk) REFERENCES artists(artist_id)
);

INSERT INTO albums (album, artist_id_fk) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE songs(
song_id INT PRIMARY KEY AUTO_INCREMENT,
song_name VARCHAR(100) NOT NULL,
album_id_fk INT NOT NULL,
FOREIGN KEY (album_id_fk) REFERENCES albums(album_id)
);

INSERT INTO songs (song_name, album_id_fk) VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let\'s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let\'s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

CREATE TABLE `history`(
  user_id_fk INT NOT NULL,
  song_id_fk INT NOT NULL,
  PRIMARY KEY (song_id_fk, user_id_fk),
  FOREIGN KEY (user_id_fk) REFERENCES users(user_id),
  FOREIGN KEY (song_id_fk) REFERENCES songs(song_id),
  CONSTRAINT PRIMARY KEY(user_id_fk, song_id_fk)
);

INSERT INTO `history` (user_id_fk, song_id_fk) VALUES
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

CREATE TABLE followers(
user_id_fk INT NOT NULL,
artist_id_fk INT NOT NULL,
PRIMARY KEY (artist_id_fk, user_id_fk),
FOREIGN KEY (artist_id_fk) REFERENCES SpotifyClone.artists(artist_id),
FOREIGN KEY (user_id_fk) REFERENCES SpotifyClone.users(user_id)
);

INSERT INTO followers (user_id_fk, artist_id_fk) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

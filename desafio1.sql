DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.PLANS(
plan_id INT NOT NULL AUTO_INCREMENT,
plan_name VARCHAR(20) NOT NULL,
plan_value DECIMAL(5,2) NOT NULL,
PRIMARY KEY(plan_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.ARTISTS(
artist_id INT AUTO_INCREMENT,
artist_name VARCHAR(50) NOT NULL,
PRIMARY KEY(artist_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.ALBUMS(
album_id INT AUTO_INCREMENT,
album_name VARCHAR(50) NOT NULL,
artist_id INT NOT NULL,
PRIMARY KEY(album_id),
FOREIGN KEY(artist_id) REFERENCES ARTISTS(artist_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.USERS(
user_id INT AUTO_INCREMENT,
user_name VARCHAR(50) NOT NULL,
age INT NOT NULL,
user_plan INT NOT NULL,
PRIMARY KEY(user_id),
FOREIGN KEY(user_plan) REFERENCES PLANS(plan_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.SONGS(
song_id INT NOT NULL AUTO_INCREMENT,
album_id INT NOT NULL,
song_name VARCHAR(50) NOT NULL,
PRIMARY KEY(song_id),
FOREIGN KEY(album_id) REFERENCES ALBUMS(album_id)
) Engine=InnoDB;

CREATE TABLE SpotifyClone.FOLLOWING_ARTISTS(
following_id INT NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
artist_id INT NOT NULL,
PRIMARY KEY(following_id, user_id, artist_id),
FOREIGN KEY(user_id) REFERENCES USERS(user_id),
FOREIGN KEY(artist_id) REFERENCES ARTISTS(artist_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.HISTORY_REPRODUCTIONS(
history_id INT AUTO_INCREMENT,
user_id INT NOT NULL,
song_id INT NOT NULL,
PRIMARY KEY(history_id, user_id, song_id),
FOREIGN KEY(user_id) REFERENCES USERS(user_id),
FOREIGN KEY(song_id) REFERENCES SONGS(song_id)
) Engine=InnoDB;

INSERT INTO SpotifyClone.PLANS (plan_name, plan_value)
VALUES
('gratuíto', 0.00),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO SpotifyClone.ARTISTS (artist_name)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.ALBUMS (album_name, artist_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO SpotifyClone.USERS (user_name, age, user_plan)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO SpotifyClone.FOLLOWING_ARTISTS
(following_id, user_id, artist_id)
VALUES
(1,1,1),
(2,1,4),
(3,1,3),
(4,2,1),
(5,2,3),
(6,3,2),
(7,3,1),
(8,4,4);

INSERT INTO SpotifyClone.SONGS
(song_id, album_id, song_name)
VALUES
(1, 1, "Soul For Us"),
(2, 1, "Reflections Of Magic"), 
(3, 1, "Dance With Her Own"),
(4, 2, "Troubles Of My Inner Fire"),
(5, 2, "Time Fireworks"),
(6, 3, "Magic Circus"),
(7, 3, "Honey, So Do I"),
(8, 3, "Sweetie, Let's Go Wild"),
(9, 3, "She Knows"),
(10, 4, "Fantasy For Me"),
(11, 4, "Celebration Of More"),
(12, 4, "Rock His Everything"),
(13, 4, "Home Forever"),
(14, 4, "Diamond Power"),
(15, 4, "Honey, Let's Be Silly"),
(16, 5, "Thang Of Thunder"),
(17, 5, "Words Of Her Life"),
(18, 5, "Without My Streets");

INSERT INTO SpotifyClone.HISTORY_REPRODUCTIONS
(history_id, user_id, song_id)
VALUES
(1, 1, 1),
(2, 1, 6),
(3, 1, 14),
(4, 1, 16),
(5, 2, 13),
(6, 2, 17),
(7, 2, 2),
(8, 2, 15),
(9, 3, 4),
(10, 3, 16),
(11, 3, 6),
(12, 4, 3),
(13, 4, 18),
(14, 4, 11);

/* Contribuições da Marília para a refatoração das tabelas
Link GitHub/PR: https://github.com/tryber/sd-010-a-mysql-one-for-all/pull/15/files
 */

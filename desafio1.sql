DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.PLANS(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan_name VARCHAR(20) NOT NULL,
plan_value DECIMAL(5,2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.ARTISTS(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist_name VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.ALBUMS(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(50) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY(artist_id) REFERENCES ARTISTS(artist_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.USERS(
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(50) NOT NULL,
age INT NOT NULL,
user_plan INT NOT NULL,
FOREIGN KEY(user_plan) REFERENCES PLANS(plan_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.FOLLOWING_ARTISTS(
user_id INT NOT NULL,
artist1 INT,
artist2 INT, 
artist3 INT, 
artist4 INT, 
FOREIGN KEY(user_id) REFERENCES USERS(user_id),
FOREIGN KEY(artist1) REFERENCES ARTISTS(artist_id),
FOREIGN KEY(artist2) REFERENCES ARTISTS(artist_id),
FOREIGN KEY(artist3) REFERENCES ARTISTS(artist_id),
FOREIGN KEY(artist4) REFERENCES ARTISTS(artist_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.SONGS(
album_id INT NOT NULL,
song1 VARCHAR(50),
song2 VARCHAR(50),
song3 VARCHAR(50),
song4 VARCHAR(50),
song5 VARCHAR(50),
song6 VARCHAR(50),
FOREIGN KEY(album_id) REFERENCES ALBUMS(album_id)
) Engine=InnoDB;

CREATE TABLE SpotifyClone.HISTORY_REPRODUCTIONS(
user_id INT NOT NULL,
rep1 VARCHAR(50),
rep2 VARCHAR(50),
rep3 VARCHAR(50),
rep4 VARCHAR(50),
FOREIGN KEY(user_id) REFERENCES USERS(user_id)
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
(user_id, artist1, artist2, artist3, artist4)
VALUES
(1, 1, 4, 3, 4),
(2, 1, 3, null, null),
(3, 2, 1, null, null),
(4, 4, null, null, null);

INSERT INTO SpotifyClone.SONGS
(album_id, song1, song2, song3, song4, song5, song6)
VALUES
(1, "Soul For Us", "Reflections Of Magic", "Dance With Her Own", null, null, null),
(2, "Troubles Of My Inner Fire", "Time Fireworks", null, null, null, null),
(3, "Magic Circus", "Honey, So Do I", "Sweetie, Let's Go Wild", "She Knows", null, null),
(4, "Fantasy For Me", "Celebration Of More", "Rock His Everything", "Home Forever", "Diamond Power", "Honey, Let's Be Silly"),
(5, "Thang Of Thunder", "Words Of Her Life", "Without My Streets", null, null, null);

INSERT INTO SpotifyClone.HISTORY_REPRODUCTIONS
(user_id, rep1, rep2, rep3, rep4)
VALUES
(1, "Soul For Us", "Magic Circus", "Diamond Power", "Thang Of Thunder"),
(2, "Home Forever", "Words Of Her Life", "Reflections Of Magic", "Honey, Let's Be Silly"),
(3, "Troubles Of My Inner Fire", "Thang Of Thunder", "Magic Circus", null),
(4, "Dance With Her Own", "Without My Streets", "Celebration Of More", null);

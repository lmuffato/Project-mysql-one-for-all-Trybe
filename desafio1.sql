DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans(
id_plan INT PRIMARY KEY AUTO_INCREMENT,
plan_name VARCHAR(30) NOT NULL,
price_plan DECIMAL(5,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE users(
user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(80) NOT NULL,
age INT NOT NULL,
id_plan INT NOT NULL,
FOREIGN KEY (id_plan) REFERENCES plans(id_plan)
) ENGINE = InnoDB;

CREATE TABLE artists(
id_artist INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name_artist VARCHAR(80) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE albums(
id_album INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(100) NOT NULL,
id_artist INT NOT NULL,
FOREIGN KEY (id_artist) REFERENCES artists(id_artist)
) ENGINE = InnoDB;

CREATE TABLE songs(
song_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
song_name VARCHAR(300) NOT NULL,
id_album INT NOT NULL,
FOREIGN KEY (id_album) REFERENCES albums(id_album)
) ENGINE = InnoDB;

CREATE TABLE `history`(
user_id INT NOT NULL,
song_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (song_id, user_id),
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id)
) ENGINE = InnoDB;

CREATE TABLE follow_artist (
user_id INT NOT NULL,
id_artist INT NOT NULL,
CONSTRAINT PRIMARY KEY (id_artist, user_id),
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (id_artist) REFERENCES artists(id_artist)
) ENGINE = InnoDB;

INSERT INTO plans(plan_name, price_plan)
VALUES
("gratuito", 0), 
("familiar", 7.99), 
("universitário", 5.99);

INSERT INTO users(user_name, age, id_plan)
VALUES
('Thati', 23, 1), 
('Cintia', 35, 2), 
('Bill', 20, 3), 
('Roger', 45, 1);

INSERT INTO artists(name_artist)
VALUES 
('Walter Phoenix'), 
('Peter Strong'), 
('Lance Day'), 
('Freedie Shannon');

INSERT INTO albums(album_name, id_artist)
VALUES 
('Envious', 1), 
('Exuberant', 1), 
('Hallowed Steam', 2), 
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs(song_name, id_album)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
("She Knows", 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
("Thang Of Thunder", 5),
("Words Of Her Life", 5),
("Without My Streets", 5);

INSERT INTO history(user_id, song_id)
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

INSERT INTO follow_artist(user_id, id_artist)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan (
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan_name VARCHAR(25),
plan_value DECIMAL(10, 2) NOT NULL
) engine=InnoDB;

CREATE TABLE users (
users_id INT PRIMARY KEY AUTO_INCREMENT,
`user_name` VARCHAR(25),
age INT,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) engine=InnoDB;

CREATE TABLE stars (
stars_id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(25),
last_name VARCHAR(25)
) engine=InnoDB;

CREATE TABLE follow_stars (
users_id INT NOT NULL,
stars_id INT NOT NULL,
FOREIGN KEY (users_id) REFERENCES users(users_id),
FOREIGN KEY (stars_id) REFERENCES stars(stars_id),
PRIMARY KEY (users_id, stars_id)
) engine=InnoDB;

CREATE TABLE album (
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(50),
stars_id INT NOT NULL,
FOREIGN KEY (stars_id) REFERENCES stars(stars_id)
) engine=InnoDB;

CREATE TABLE songs (
songs_id INT PRIMARY KEY AUTO_INCREMENT,
songs_name VARCHAR(50),
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine=InnoDB;

CREATE TABLE `history` (
users_id INT NOT NULL,
songs_id INT NOT NULL,
FOREIGN KEY (users_id) REFERENCES users(users_id),
FOREIGN KEY (songs_id) REFERENCES songs(songs_id),
PRIMARY KEY (users_id, songs_id)
) engine=InnoDB;

INSERT INTO plan(plan_name, plan_value) VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO users(user_name, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO stars(`name`, last_name) VALUES
('Walter', 'Phoenix'),
('Peter', 'Strong'),
('Lance', 'Day'),
('Freedie', 'Shannon');

INSERT INTO follow_stars(users_id, stars_id) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);

INSERT INTO album(album_name, stars_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs(songs_name, album_id) VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO `history`(users_id, songs_id) VALUES
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

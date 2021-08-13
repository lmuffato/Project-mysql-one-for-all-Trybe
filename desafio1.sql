DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.artists(
id INT PRIMARY KEY AUTO_INCREMENT,
artist VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.plans(
id INT PRIMARY KEY AUTO_INCREMENT,
plan VARCHAR(20) NOT NULL,
price DOUBLE NOT NULL
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.albums(
id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(50) NOT NULL,
artist INT NOT NULL,
FOREIGN KEY (artist) REFERENCES SpotifyClone.artists(id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.songs(
id INT PRIMARY KEY AUTO_INCREMENT,
song VARCHAR(50) NOT NULL,
album INT NOT NULL,
FOREIGN KEY (album) REFERENCES SpotifyClone.albums(id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.users(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
age INT NOT NULL,
plan INT NOT NULL,
FOREIGN KEY (plan) REFERENCES SpotifyClone.plans(id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.followers(
artist INT NOT NULL,
user_id INT NOT NULL,
FOREIGN KEY (artist) REFERENCES artists (id),
FOREIGN KEY (user_id) REFERENCES users (id),
PRIMARY KEY (artist, user_id)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.playback_history(
song INT NOT NULL,
user_id INT NOT NULL,
FOREIGN KEY (song) REFERENCES SpotifyClone.songs(id),
FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.artists(artist)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.plans(plan, price)
VALUES
('Gratuito', 0.00),
('Universitário', 5.99),
('Familiar', 7.99);

INSERT INTO SpotifyClone.albums(album, artist)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO SpotifyClone.songs(song, album)
VALUES
('Soul For Us', 1),
('Reflections of Magic', 1),
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
    ('Thang of Thunder', 5),
    ('Words Of Her Life', 5),
    ('Without My Streets', 5);

INSERT INTO SpotifyClone.users(name, age, plan)
VALUES
('Thati', 23, 1),
    ('Cintia', 35, 3),
    ('Bill', 20, 2),
    ('Roger', 45, 1);
    
INSERT INTO SpotifyClone.followers(artist, user_id)
VALUES
(1, 1),
    (1, 2),
    (1, 3),
    (2, 3),
    (3, 1),
    (3, 2),
    (4, 1),
    (4, 4);

INSERT INTO SpotifyClone.playback_history(song, user_id)
VALUES
(1, 1),
    (6, 1),
    (14, 1),
    (16, 1),
    (13, 2),
    (17, 2),
    (2, 2),
    (15, 2),
    (4, 3),
    (16, 3),
    (6, 3),
    (3, 4),
    (18, 4),
    (11, 4);

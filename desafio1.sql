DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
price DECIMAL(5, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(100) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plans (plan_id)
) engine = InnoDB;

CREATE TABLE performers(
singer_id INT PRIMARY KEY AUTO_INCREMENT,
singer_name VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE following_artists(
user_id INT NOT NULL,
singer_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, singer_id),
FOREIGN KEY (user_id) REFERENCES users (user_id),
FOREIGN KEY (singer_id) REFERENCES performers (singer_id)
) engine = InnoDB;

CREATE TABLE albums(
album_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
singer_id INT NOT NULL,
FOREIGN KEY (singer_id) REFERENCES performers (singer_id)
) engine = InnoDB;

CREATE TABLE songs(
song_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
singer_id INT NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (singer_id) REFERENCES performers (singer_id),
FOREIGN KEY (album_id) REFERENCES albums (album_id)
) engine = InnoDB;

CREATE TABLE playback_history(
user_id INT NOT NULL,
song_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, song_id),
FOREIGN KEY (user_id) REFERENCES users (user_id),
FOREIGN KEY (song_id) REFERENCES songs (song_id)
) engine = InnoDB;


INSERT INTO plans (title, price)
VALUES
("gratuito", 0),
("familiar", 7.99),
("universitário", 5.99);

INSERT INTO users (user_name, age, plan_id)
VALUES
("Thati", 23,	1),
("Cintia", 35, 2),
("Bill", 20, 3),
("Roger", 45, 1);

INSERT INTO performers (singer_name)
VALUES
("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");
    
INSERT INTO following_artists (user_id, singer_id)
VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3,2),
(4, 4);

INSERT INTO albums (title, singer_id)
VALUES
("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);
    
INSERT INTO songs (title, singer_id, album_id)
VALUES
("Soul For Us", 1, 1),
("Reflections Of Magic", 1, 1),
("Dance With Her Own", 1, 1),
("Troubles Of My Inner Fire", 1, 2),
("Time Fireworks", 1, 2),
("Magic Circus", 2, 3),
("Honey, So Do I", 2, 3),
("Sweetie, Let's Go Wild", 2, 3),
("She Knows", 2, 3),
("Fantasy For Me", 3, 4),
("Celebration Of More", 3, 4),
("Rock His Everything", 3, 4),
("Home Forever", 3, 4),
("Diamond Power", 3, 4),
("Honey, Let's Be Silly", 3, 4),
("Thang Of Thunder", 4, 5),
("Words Of Her Life", 4, 5),
("Without My Streets", 4, 5);

INSERT INTO playback_history (user_id, song_id)
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

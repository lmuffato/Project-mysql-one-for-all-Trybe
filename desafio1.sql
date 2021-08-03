DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(plan_id INT AUTO_INCREMENT, plan_name VARCHAR(50) NOT NULL UNIQUE, plan_price FLOAT(2) NOT NULL,
CONSTRAINT PRIMARY KEY(plan_id));

INSERT INTO plans (plan_name, plan_price) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

CREATE TABLE users(user_id INT AUTO_INCREMENT, username VARCHAR(50) NOT NULL UNIQUE, age INT NOT NULL, plan_id INT NOT NULL, CONSTRAINT PRIMARY KEY(user_id),
FOREIGN KEY(plan_id) REFERENCES plans (plan_id));

INSERT INTO users (username, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE artists(artist_id INT AUTO_INCREMENT, artist_name VARCHAR(50), CONSTRAINT PRIMARY KEY(artist_id));

INSERT INTO artists (artist_name) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE albums(album_id INT AUTO_INCREMENT, album_name VARCHAR(50) NOT NULL, artist_id INT,
CONSTRAINT PRIMARY KEY(album_id), FOREIGN KEY(artist_id) REFERENCES artists (artist_id));

INSERT INTO albums (album_name, artist_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE songs(song_id INT AUTO_INCREMENT, song_name VARCHAR(50) NOT NULL, album_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(song_id), FOREIGN KEY(album_id) REFERENCES albums(album_id));

INSERT INTO songs (song_name, album_id) VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie', 3),
('Let\'s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let\'s Be Silly', 4),
('Thang Of Thunder', 5),
('Word Of Her Life', 5),
('Without My Streets', 5);

CREATE TABLE users_history(user_id INT, song_id INT, CONSTRAINT PRIMARY KEY(user_id, song_id),
FOREIGN KEY(user_id) REFERENCES users(user_id), FOREIGN KEY(song_id) REFERENCES songs(song_id));

INSERT INTO users_history(user_id, song_id) VALUES
(1, 1),
(1, 6),
(1, 15),
(1, 17),
(2, 14),
(2, 18),
(2, 2),
(2, 16),
(3, 4),
(3, 17),
(3, 6),
(4, 3),
(4, 19),
(4, 12);

CREATE TABLE user_status(user_id INT, plan_id INT,
CONSTRAINT PRIMARY KEY(user_id, plan_id), FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(plan_id) REFERENCES plans(plan_id));

INSERT INTO user_status(user_id, plan_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1);

CREATE TABLE followers(user_id INT, artist_id INT, CONSTRAINT PRIMARY KEY(user_id, artist_id),
FOREIGN KEY(user_id) REFERENCES users(user_id), FOREIGN KEY(artist_id) REFERENCES artists(artist_id));

INSERT INTO followers(user_id, artist_id) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

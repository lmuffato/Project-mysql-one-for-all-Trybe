DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans(
  plan_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  plan VARCHAR(10) NOT NULL,
  price DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE users(
  user_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  `user` VARCHAR(20) NOT NULL,
  age TINYINT NOT NULL,
  plan_id TINYINT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;

CREATE TABLE artists(
  artist_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  artist VARCHAR(20) NOT NULL
) engine = InnoDB;

CREATE TABLE albums(
  album_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(20) NOT NULL,
  artist_id TINYINT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE songs(
  song_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  song VARCHAR(30) NOT NULL,
  album_id TINYINT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
) engine = InnoDB;

CREATE TABLE `history`(
  user_id TINYINT NOT NULL,
  history_id TINYINT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (history_id) REFERENCES songs(history_id),
  CONSTRAINT PRIMARY KEY(user_id, history_id)
) engine = InnoDB;

CREATE TABLE followers(
  user_id TINYINT NOT NULL,
  follower_id TINYINT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (follower_id) REFERENCES artists(follower_id),
  CONSTRAINT PRIMARY KEY(user_id, follower_id)
) engine = InnoDB;

INSERT INTO plans (plan, price) VALUES
('free', 0.00),
('family', 7.99),
('student', 5.99);

INSERT INTO users (`user`, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artists (artist) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albums (album, follower_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs (song, album_id) VALUES
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

INSERT INTO `history` (user_id, history_id) VALUES
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

INSERT INTO followers (user_id, follower_id) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

DROP DATABASE if exists SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE `PLANS` (
  `plan_id` INT AUTO_INCREMENT PRIMARY KEY,
  `plan_name` VARCHAR(50) NOT NULL,
  `plan_value` DECIMAL(4, 2) DEFAULT NULL
) engine = InnoDB;

CREATE TABLE `USERS` (
  `user_id` INT AUTO_INCREMENT PRIMARY KEY,
  `user_name` VARCHAR(50) NOT NULL,
  `user_age` INT DEFAULT NULL,
  `plan_id` INT NOT NULL,
  FOREIGN KEY (`plan_id`) REFERENCES `PLANS` (`plan_id`)
) engine = InnoDB;

CREATE TABLE `ARTIST` (
  `artist_id` INT AUTO_INCREMENT PRIMARY KEY,
  `artist_name` VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE `ALBUM` (
  `album_id` INT AUTO_INCREMENT PRIMARY KEY,
  `album_name` VARCHAR(50) NOT NULL,
  `artist_id` INT NOT NULL,
  FOREIGN KEY (`artist_id`) REFERENCES `ARTIST` (`artist_id`)
) engine = InnoDB;

CREATE TABLE `MUSIC` (
  `music_id` INT AUTO_INCREMENT PRIMARY KEY,
  `music_name` VARCHAR(50) NOT NULL,
  `artist_id` INT NOT NULL,
  `album_id` INT NOT NULL,
  FOREIGN KEY (`album_id`) REFERENCES `ALBUM` (`album_id`),
  FOREIGN KEY (`artist_id`) REFERENCES `ARTIST` (`artist_id`)
) engine = InnoDB;

CREATE TABLE `FOLLOW_ARTIST` (
  `follow_artist_id` INT AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `artist_id` INT NOT NULL,
  PRIMARY KEY (follow_artist_id, user_id, artist_id),
  FOREIGN KEY (`user_id`) REFERENCES `USERS` (`user_id`),
  FOREIGN KEY (`artist_id`) REFERENCES `ARTIST` (`artist_id`)
) engine = InnoDB;

CREATE Table `PLAYBACK_HISTORY` (
  `playback_history_id` INT AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `music_id` INT NOT NULL,
  PRIMARY KEY (playback_history_id, user_id, music_id),
  FOREIGN KEY (`user_id`) REFERENCES `USERS` (`user_id`),
  FOREIGN KEY (`music_id`) REFERENCES `MUSIC` (`music_id`)
) engine = InnoDB;

INSERT INTO `PLANS` (`plan_name`, `plan_value`)
VALUES
('gratuito', 0.00),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO `USERS` (`user_name`, `user_age`, `plan_id`)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 40, 1);

INSERT INTO `ARTIST` (`artist_name`)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO `ALBUM` (`album_name`, `artist_id`)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Freedie Shannon', 3),
('Temporary Culture', 4);

INSERT INTO `MUSIC` (`music_name`, `album_id`, `artist_id`)
VALUES
('Celebration Of More', 4, 3),
('Dance With Her Own', 1 , 1),
('Diamond Power', 3 , 3),
('Fantasy For Me', 4 , 3),
('Home Forever', 4 , 3),
('Honey, Let''s Be Silly', 4 , 3),
('Honey, So Do I', 3 , 2),
('Magic Circus', 3 , 2),
('Reflections Of Magic', 1 , 1),
('Rock His Everything', 4 , 3),
('She Knows', 3 , 2),
('Soul For Us', 1 , 1),
('Sweetie, Let''s Go Wild', 3 , 2),
('Thang Of Thunder', 5 , 4),
('Time Fireworks', 2 , 1),
('Troubles Of My Inner Fire', 2 , 1),
('Without My Streets', 5 , 4),
('Words Of Her Life', 5 , 4);

INSERT INTO `FOLLOW_ARTIST` (`user_id`, `artist_id`)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO `PLAYBACK_HISTORY` (`user_id`, `music_id`)
VALUES
(1, 12),
(1, 8),
(1, 3),
(1, 14),
(2, 5),
(2, 18),
(2, 9),
(2, 6),
(3, 16),
(3, 14),
(3, 8),
(4, 2),
(4, 17),
(4, 1);

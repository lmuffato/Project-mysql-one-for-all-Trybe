SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS SpotifyClone;
CREATE SCHEMA SpotifyClone;
USE SpotifyClone;

CREATE TABLE Plans (
  plan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  plan_name VARCHAR(70),
  plan_value DECIMAL(5, 2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Users (
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(70),
  user_age INT,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES Plans (plan_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Artists (
  artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artist_name VARCHAR(70)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Followed_artists (
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES Users (user_id),
  FOREIGN KEY (artist_id) REFERENCES Artists (artist_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Albuns (
  album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  album_name VARCHAR(70),
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES Artists (artist_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Songs (
  song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  song_name VARCHAR(70),
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES Albuns (album_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE User_history (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES Users (user_id),
  FOREIGN KEY (song_id) REFERENCES Songs (song_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO Plans (plan_id, plan_name, plan_value)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);

INSERT INTO Users (user_id, user_name, user_age, plan_id)
VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);

INSERT INTO Artists (artist_id, artist_name)
VALUES
  (1, 'Walter Phoenix'),
  (2,  'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');

INSERT INTO Followed_artists (user_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 4);

INSERT INTO Albuns (album_id, album_name, artist_id)
VALUES
  (1, 'Envious', 1),
  (2,  'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4);

INSERT INTO Songs (song_id, song_name, album_id)
VALUES
  (1, 'Soul For Us', 1),
  (2, 'Reflections Of Magic', 1),
  (3, 'Dance With Her Own', 1),
  (4, 'Troubles Of My Inner Fire', 2),
  (5, 'Time Fireworks', 2),
  (6, 'Magic Circus', 3),
  (7, 'Honey, So Do I', 3),
  (8, "Sweetie, Let's Go Wild", 3),
  (9, 'She Knows', 3),
  (10, 'Fantasy For Me', 4),
  (11, 'Celebration Of More', 4),
  (12, 'Rock His Everything', 4),
  (13, 'Home Forever', 4),
  (14, 'Diamond Power', 4),
  (15,  "Honey, Let's Be Silly", 4),
  (16, 'Thang Of Thunder', 5),
  (17, 'Words Of Her Life', 5),
  (18, 'Without My Streets', 5);

INSERT INTO User_history (user_id, song_id)
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

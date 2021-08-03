DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plans(
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan_name VARCHAR(50) NOT NULL,
  price DOUBLE NOT NULL
) ENGINE = InnoDB;

CREATE TABLE Users(
  `user_id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES Plans(plan_id)
) ENGINE = InnoDB;

CREATE TABLE Artists(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE followedArtist(
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
) ENGINE = InnoDB;

CREATE TABLE Albums(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(50) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
) ENGINE = InnoDB;

CREATE TABLE Songs(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(50) NOT NULL,
  artist_id INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES Albums(album_id),
  FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
) ENGINE = InnoDB;


CREATE TABLE PlayedSongs(
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (song_id) REFERENCES Songs(song_id)
) ENGINE = InnoDB;

INSERT INTO Plans (plan_name, price)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO Users (`name`, age, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO Artists (artist_name)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO FollowedArtist (user_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

INSERT INTO Albums (album_name, artist_id)
VALUES
  ('Envious',	1),
  ('Exuberant',	1),
  ('Hallowed Steam',	2),
  ('Incandescent',	3),
  ('Temporary Culture',	4);

INSERT INTO Songs (song_name, artist_id, album_id)
VALUES
  ('Soul For Us',	1,	1),
  ('ReReflections Of Magic',	1,	1),
  ('Dance With Her Own',	1,	1),
  ('Troubles Of My Inner Fire',	1,	2),
  ('Time Fireworks',	1,	2),
  ("Sweetie, Let's Go Wild",	2,	3),
  ('Honey, So Do I',	2,	3),
  ("Sweetie, Let's Go Wild",	2,	3),
  ('She Knows',	2,	3),
  ('Fantasy For Me',	3,	4),
  ('Celebration Of More',	3,	4),
  ('Rock His Everything',	3,	4),
  ("Home Forever",	3,	4),
  ("Diamond Power",	3,	4),
  ("Honey, Let's Be Silly",	3,	4),
  ("Thang Of Thunder",	4,	5),
  ("Words Of Her Life",	4,	5),
  ("Without My Streets",	4,	5);

INSERT INTO PlayedSongs (user_id, song_id)
VALUES
  (1,	1),
  (1,	6),
  (1,	14),
  (1,	16),
  (2,	13),
  (2,	17),
  (2,	2),
  (2,	15),
  (3,	4),
  (3,	16),
  (3,	6),
  (4,	3),
  (4,	18),
  (4,	11);

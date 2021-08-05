DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
  plan_id INT NOT NULL UNIQUE AUTO_INCREMENT,
  plan_name VARCHAR(100) NOT NULL,
  value DECIMAL(5, 2) NOT NULL,
  PRIMARY KEY (plan_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS users(
  user_id INT NOT NULL UNIQUE AUTO_INCREMENT,
  plan_id INT NOT NULL,
  history_id INT NOT NULL,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  PRIMARY KEY (user_id),
  FOREIGN KEY (plan_id) REFERENCES plan(plan_id),
  FOREIGN KEY (history_id) REFERENCES history(history_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS history(
  history_id INT NOT NULL UNIQUE AUTO_INCREMENT,
  user_id INT NOT NULL,
  PRIMARY KEY (history_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS artist(
  artist_id INT NOT NULL UNIQUE AUTO_INCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL, 
  PRIMARY KEY (artist_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS album(
  album_id INT NOT NULL UNIQUE AUTO_INCREMENT,
  album_name VARCHAR(400) NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS music(
  music_id INT NOT NULL UNIQUE AUTO_INCREMENT,
  music_name VARCHAR(300) NOT NULL,
  album_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (music_id),
  FOREIGN KEY (album_id) REFERENCES album(album_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS follower(
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS music_history(
  music_id INT NOT NULL,
  history_id INT NOT NULL,
  PRIMARY KEY (music_id, history_id),
  FOREIGN KEY (music_id) REFERENCES music(music_id),
  FOREIGN KEY (history_id) REFERENCES history(history_id)
) engine = InnoDB;

INSERT INTO plan(plan_id, plan_name, value)
  VALUES
    (1, 'gratuito', 0),
    (2, 'familiar', 7.99),
    (3, 'universitário', 5.99);

INSERT INTO users(user_id, plan_id, history_id, first_name, last_name, age)
  VALUES
    (1, 1, 1, 'Thati', '', 23),
    (2, 2, 2, 'Cintia', '', 35),
    (3, 3, 3, 'Bill', '', 20),
    (4, 1, 4, 'Roger', '', 45);

INSERT INTO history(history_id, user_id)
  VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4);

INSERT INTO artist(artist_id, first_name, last_name)
  VALUES
    (1, 'Walter', 'Phoenix'),
    (2, 'Freedie', 'Shannon'),
    (3, 'Lance', 'Day'),
    (4, 'Peter', 'Strong');

INSERT INTO album(album_id, album_name, artist_id)
  VALUES
    (1, 'Envious', 1),
    (2, 'Exuberant', 1),
    (3, 'Hallowed Steam', 4),
    (4, 'Incandescent', 3),
    (5, 'Temporary Culture', 2);

INSERT INTO music(music_id, music_name, album_id, artist_id)
  VALUES
    (1, 'Soul For Us', 1, 1),
    (2, 'Reflections Of Magic', 1, 1),
    (3, 'Dance With Her Own', 1, 1),
    (4, 'Troubles Of My Inner Fire', 2, 1),
    (5, 'Time Fireworks', 2, 1),
    (6, 'Magic Circus', 3, 4),
    (7, 'Honey, So Do I', 3, 4),
    (8, "Sweetie, Let's Go Wild", 3, 4),
    (9, 'She Knows', 3, 4),
    (10, 'Fantasy For Me', 4, 3),
    (11, 'Celebration Of More', 4, 3),
    (12, 'Rock His Everything', 4, 3),
    (13, 'Home Forever', 4, 3),
    (14, 'Diamond Power', 4, 3),
    (15, "Honey, Let's Be Silly", 4, 3),
    (16, 'Thang Of Thunder', 5, 2),
    (17, 'Words Of Her Life', 5, 2),
    (18, 'Without My Streets', 5, 2);

INSERT INTO follower(user_id, artist_id)
  VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 4),
    (3, 1),
    (4, 2);

INSERT INTO music_history(music_id, history_id)
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


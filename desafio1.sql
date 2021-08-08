DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plans (
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan_name VARCHAR(20),
  value DECIMAL(3,2)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.plans
  (plan_name, value)
VALUES
  ("gratuito", 0.00),
  ("familiar", 7.99),
  ("universitário", 5.99);

CREATE TABLE SpotifyClone.users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(20) NOT NULL,
  age INT,
  plan_id INT,
  FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plans (plan_id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.users
  (user_name, age, plan_id)
VALUES 
  ("Thati", 23, 1),
  ("Cintia", 35, 2),
  ("Bill", 20, 3),
  ("Roger", 45, 1);

CREATE TABLE SpotifyClone.artists (
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(50)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.artists
  (artist_name)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");

CREATE TABLE SpotifyClone.albuns (
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(50),
  artist_id INT,
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists (artist_id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.albuns
  (album_name, artist_id)
VALUES
  ("Envious", 1),
  ("Exuberant", 1),
  ("Hallowed Steam", 2),
  ("Incandescent", 3),
  ("Temporary Culture", 4);

CREATE TABLE SpotifyClone.songs (
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(50),
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.albuns (album_id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.songs
  (song_name, album_id)
VALUES
  ('Soul For Us', 1),
  ('Magic Circus', 3),
  ('Diamond Power', 4),
  ('Thang Of Thunder', 5),
  ('Home Forever', 4),
  ('Words Of Her Life', 5),
  ('Reflections Of Magic', 1),
  ("Honey, Let's Be Silly", 4),
  ('Troubles Of My Inner Fire', 2),
  ('Dance With Her Own', 1),
  ('Without My Streets', 5),
  ('Celebration Of More', 4),
  ('Time Fireworks', 2),
  ('Honey, So Do I', 3),
  ("Sweetie, Let's Go Wild", 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Rock His Everything', 4);

CREATE TABLE SpotifyClone.reproduction_history (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES SpotifyClone.users (user_id),
  FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs (song_id),
  PRIMARY KEY (user_id , song_id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.reproduction_history
  (user_id, song_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (2, 5),
  (2, 6),
  (2, 7),
  (2, 8),
  (3, 9),
  (3, 4),
  (3, 2),
  (4, 10),
  (4, 11),
  (4, 12);

CREATE TABLE SpotifyClone.following_artists (
  user_id INT,
  artist_id INT,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (artist_id) REFERENCES artists (artist_id),
  PRIMARY KEY (user_id , artist_id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.following_artists
  (user_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

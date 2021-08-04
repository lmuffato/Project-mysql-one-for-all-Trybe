DROP DATABASE IF EXISTS SpotifyClone;

CREATE SCHEMA SpotifyClone;

CREATE TABLE SpotifyClone.users(
  user_id INT NOT NULL PRIMARY KEY auto_increment ,
  user_name VARCHAR(100) NOT NULL,
  age INT NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.plan(
  plan_id INT NOT NULL PRIMARY KEY auto_increment,
  plan_name VARCHAR(100) NOT NULL,
  plan_price DOUBLE NOT NULL
) ENGINE = InnoDB;

CREATE table SpotifyClone.artists(
	artist_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(150) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.albums(
	album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(225) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists (artist_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.songs(
	song_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(225) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums(album_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.user_plans(
	user_id INT,
  plan_id INT,
  CONSTRAINT PRIMARY KEY(user_id, plan_id),
  FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
  FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plan(plan_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.user_play_history(
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
  FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs(song_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.artist_followers(
  artist_id INT NOT NULL,
  user_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (artist_id, user_id),
  FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists(artist_id),
  FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id)
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.users (user_name, age)
VALUES
  ('Thati', 23),
  ('Cintia', 35),
  ('Bill', 20),
  ('Roger', 45);

INSERT INTO SpotifyClone.plan (plan_name, plan_price)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);
  
INSERT INTO SpotifyClone.artists (artist_name)
VALUES 
	('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO SpotifyClone.albums (album_name, artist_id)
VALUES
	('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO SpotifyClone.songs (song_name, album_id)
VALUES
	('Soul For Us', 1),
  ('Reflections Of Magic', 1),
  ('Dance With Her Own', 1),
  ('Troubles Of My Inner Fire', 2),
  ('Time Fireworks', 2),
  ('Magic Circus', 3),
  ('Honey, So Do I', 3),
  ("Sweetie, Let's Go Wild", 3),
  ("She Knows", 3),
  ('Fantasy For Me', 4),
	('Celebration Of More', 4),
  ('Rock His Everything', 4),
  ('Home Forever', 4),
  ('Diamond Power', 4),
  ("Honey, Let's Be Silly", 4),
  ("Thang Of Thunder", 5),
  ("Words Of Her Life", 5),
  ("Without My Streets", 5);
    
INSERT INTO SpotifyClone.user_plans (user_id, plan_id)
VALUES
	(1, 1),
  (2, 2),
  (3, 3),
  (4, 1);

INSERT INTO SpotifyClone.user_play_history (user_id, song_id)
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

INSERT INTO SpotifyClone.artist_followers (user_id, artist_id)
VALUES
	(1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

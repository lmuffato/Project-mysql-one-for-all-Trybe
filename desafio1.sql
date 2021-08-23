DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans(
	plan_id INT PRIMARY KEY AUTO_INCREMENT,
	plan VARCHAR(20) NOT NULL,
  price DECIMAL(5, 2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE users(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(20) NOT NULL,
  age TINYINT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) ENGINE = InnoDB;

CREATE TABLE artists(
	artist_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE albums(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_title VARCHAR(50) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) ENGINE = InnoDB;

CREATE TABLE musics(
	music_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
) ENGINE = InnoDB;

CREATE TABLE followers(
	follow_id INT NOT NULL,
	user_id INT NOT NULL,
  followed_artist INT NOT NULL,
  CONSTRAINT PRIMARY KEY(user_id, followed_artist),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (followed_artist) REFERENCES artists(artist_id)
) ENGINE = InnoDB;

CREATE TABLE playback_history(
	playback_id INT NOT NULL,
	user_id INT NOT NULL,
  music_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY(user_id, music_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (music_id) REFERENCES musics(music_id)
) ENGINE = InnoDB;
  
INSERT INTO plans (plan, price)
VALUES
	('gratuito', '0'),
  ('familiar', '7.99'),
  ('universitário', '5.99');

INSERT INTO users (username, age, plan_id)
VALUES
	('Thati', '23', '1'),
  ('Cintia', '35', '2'),
  ('Bill', '20', '3'),
  ('Roger', '45', '1');
  
INSERT INTO artists (name)
VALUES
	('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freddie Shannon');
  
INSERT INTO albums (album_title, artist_id)
VALUES
	('Envious', '1'),
  ('Exuberant', '1'),
  ('Hallowed Steam', '2'),
  ('Incandescent', '3'),
  ('Temporary Culture', '4');
  
INSERT INTO musics (title, album_id)
VALUES
	('Soul For Us', '1'), ('Reflections Of Magic', '1'), ('Dance With Her Own', '1'),
  ('Troubles Of My Inner Fire', '2'), ('Time Fireworks', '2'),
  ('Magic Circus', '3'), ('Honey, So Do I', '3'), ("Sweetie, Let's Go Wild", '3'), ('She Knows', '3'),
  ('Fantasy For Me', '4'), ('Celebration Of More', '4'), ('Rock His Everything', '4'), ('Home Forever', '4'), ('Diamond Power', '4'), ("Honey, Let's Be Silly", '4'),
  ('Thang Of Thunder', '5'), ('Words Of Her Life', '5'), ('Without My Streets', '5');
  
INSERT INTO followers (follow_id, user_id, followed_artist)
VALUES
	('1', '1', '1'), ('2', '1', '4'), ('3', '1', '3'),
  ('4', '2', '1'), ('5', '2', '3'),
  ('6', '3', '2'), ('7', '3', '1'),
  ('8', '4', '4');
  
INSERT INTO playback_history (playback_id, user_id, music_id)
VALUES
	('1', '1', '1'), ('2', '1', '6'), ('3', '1', '14'), ('4', '1', '16'),
  ('5', '2', '13'), ('6', '2', '17'), ('7', '2', '2'), ('8', '2', '15'),
  ('9', '3', '4'), ('10', '3', '16'), ('11', '3', '6'),
  ('12', '4', '3'), ('13', '4', '18'), ('14', '4', '11');

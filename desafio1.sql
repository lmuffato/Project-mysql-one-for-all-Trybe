DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
	plan_id INTEGER,
    plan_name VARCHAR(40),
    plan_value DECIMAL(4,2),
    CONSTRAINT PRIMARY KEY(plan_id)
) engine = InnoDB;

CREATE TABLE `user`(
    user_id INTEGER,
    username VARCHAR(40),
    age INTEGER,
    plan_id INTEGER,
    CONSTRAINT PRIMARY KEY(user_id),
    FOREIGN KEY(plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;

CREATE TABLE artist(
	artist_id INTEGER,
    artist_name VARCHAR(40),
    CONSTRAINT PRIMARY KEY(artist_id)
) engine = InnoDB;

CREATE TABLE album(
	album_id INTEGER,
    album_name VARCHAR(40),
    artist_id INTEGER,
    CONSTRAINT PRIMARY KEY(album_id),
    FOREIGN KEY(artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

CREATE TABLE songs(
	song_id INTEGER,
    song_name VARCHAR(40),
    album_id INTEGER,
    CONSTRAINT PRIMARY KEY(song_id),
    FOREIGN KEY(album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE play_history(
	user_id INTEGER,
    song_id INTEGER,
    CONSTRAINT PRIMARY KEY(user_id, song_id),
    FOREIGN KEY(user_id) REFERENCES `user`(user_id),
    FOREIGN KEY(song_id) REFERENCES songs(song_id)
) engine = InnoDB;

CREATE TABLE user_following(
	user_id INTEGER,
    artist_id INTEGER,
    CONSTRAINT PRIMARY KEY(user_id, artist_id),
    FOREIGN KEY(user_id) REFERENCES `user`(user_id),
    FOREIGN KEY(artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

INSERT INTO plan (plan_id, plan_name, plan_value)
VALUES
  (1, 'gratuito', 0),
  (2, 'universitário', 5.99),
  (3, 'familiar', 7.99);

INSERT INTO `user`(user_id, username, age, plan_id)
VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 3),
  (3, 'Bill', 20, 2),
  (4, 'Roger', 45, 1);

INSERT INTO artist (artist_id, artist_name)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');

INSERT INTO album (album_id, album_name, artist_id)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4);
  
INSERT INTO songs (song_id, song_name, album_id)
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
  (15, "Honey, Let's Be Silly", 4),
  (16, 'Thang Of Thunder', 5),
  (17, 'Words Of Her Life', 5),
  (18, 'Without My Streets', 5);
  
INSERT INTO play_history (user_id, song_id)
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
  
  INSERT INTO user_following (user_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
  
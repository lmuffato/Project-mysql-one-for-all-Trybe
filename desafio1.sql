DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
    PLAN_ID INT AUTO_INCREMENT,
    PLAN_NAME VARCHAR(20) NOT NULL,
    PLAN_VALUE DECIMAL(3,2) NOT NULL,
    PRIMARY KEY (PLAN_ID)
);

CREATE TABLE user(
    USER_ID INT AUTO_INCREMENT,
    USER_NAME VARCHAR(20) NOT NULL,
    AGE INT(3) NOT NULL,
    PLAN_ID INT(3) NOT NULL,
    PRIMARY KEY (USER_ID),
    FOREIGN KEY (PLAN_ID)
    REFERENCES plan(PLAN_ID)
);

CREATE TABLE artist(
    ARTIST_ID INT NOT NULL AUTO_INCREMENT,
    FIRST_NAME VARCHAR(50) NOT NULL,
    LAST_NAME VARCHAR(50) NOT NULL,
    PRIMARY KEY (ARTIST_ID)
);

CREATE TABLE album(
    ALBUM_ID INT NOT NULL AUTO_INCREMENT,
    ALBUM_NAME VARCHAR(100) NOT NULL,
    ARTIST_ID INT NOT NULL,
    PRIMARY KEY (ALBUM_ID),
    FOREIGN KEY (ARTIST_ID)
    REFERENCES artist(ARTIST_ID)
);

CREATE TABLE song(
    SONG_ID INT AUTO_INCREMENT,
    SONG_NAME VARCHAR (50) NOT NULL,
    ALBUM_ID INT NOT NULL,
    PRIMARY KEY (SONG_ID),
    FOREIGN KEY (ALBUM_ID)
    REFERENCES album(ALBUM_ID)
);

CREATE TABLE songs_played(
    SONG_ID INT NOT NULL,
    USER_ID INT NOT NULL,
    PRIMARY KEY (SONG_ID, USER_ID),
    FOREIGN KEY (SONG_ID)
    REFERENCES song(SONG_ID),
    FOREIGN KEY (USER_ID)
    REFERENCES user(USER_ID)
);

CREATE TABLE followed_artist(
    USER_ID INT NOT NULL,
    ARTIST_ID INT NOT NULL,
    PRIMARY KEY (USER_ID, ARTIST_ID),
    FOREIGN KEY (USER_ID)
    REFERENCES user(USER_ID),
    FOREIGN KEY (ARTIST_ID)
    REFERENCES artist(ARTIST_ID)
);

INSERT INTO plan (PLAN_NAME, PLAN_VALUE)
VALUES
  ('gratuito', 0),
  ('universitário', 5.99),
  ('familiar', 7.99);

INSERT INTO user (USER_NAME, AGE, PLAN_ID)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 3),
  ('Bill', 20, 2),
  ('Roger', 45, 1);

INSERT INTO artist (FIRST_NAME, LAST_NAME)
VALUES
  ('Walter',  'Phoenix'),
  ('Peter',  'Strong'),
  ('Lance',  'Day'),
  ('Freedie',  'Shannon');

INSERT INTO album (ALBUM_NAME, ARTIST_ID)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO song (SONG_NAME, ALBUM_ID)
VALUES
  ('Soul For Us', 1),
  ('Reflections Of Magic', 1),
  ('Dance With Her Own', 1),
  ('Troubles Of My Inner Fire', 2),
  ('Time Fireworks', 2),
  ('Magic Circus', 3),
  ('Honey, So Do I', 3),
  ("Sweetie, Let's Go Wild", 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Celebration Of More', 4),
  ('Rock His Everything', 4),
  ('Home Forever', 4),
  ('Diamond Power', 4),
  ("Honey, Let's Be Silly", 4),
  ('Thang Of Thunder', 5),
  ('Words Of Her Life', 5),
  ('Without My Streets', 5);

INSERT INTO songs_played (SONG_ID, USER_ID)
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

INSERT INTO followed_artist (USER_ID, ARTIST_ID)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

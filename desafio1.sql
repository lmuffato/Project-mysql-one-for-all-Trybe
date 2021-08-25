DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;
USE SpotifyClone;
CREATE TABLE SpotifyClone.plan(
  plan_ID INT PRIMARY KEY AUTO_INCREMENT,
  category VARCHAR(30) NOT NULL,
  value_plan DECIMAL(5,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.user(
  user_ID INT PRIMARY KEY AUTO_INCREMENT,
  name_user VARCHAR(60) NOT NULL,
  age_user INT NOT NULL,
  plan_ID INT NOT NULL,
  FOREIGN KEY (plan_ID) REFERENCES SpotifyClone.plan(plan_ID)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.artists(
  artists_ID INT PRIMARY KEY AUTO_INCREMENT,
  name_artists VARCHAR(60) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.follower_artists(
  user_ID INT NOT NULL,
  artists_ID INT NOT NULL,
  FOREIGN KEY (user_ID) REFERENCES SpotifyClone.user(user_ID),
  FOREIGN KEY (artists_ID) REFERENCES SpotifyClone.artists(artists_ID),
  PRIMARY KEY(user_ID, artists_ID)
) ENGINE = InnoDB;

CREATE TABLE  SpotifyClone.album(
  album_ID INT PRIMARY KEY AUTO_INCREMENT,
  name_album VARCHAR(60) NOT NULL,
  artists_ID INT NOT NULL,
  FOREIGN KEY (artists_ID) REFERENCES SpotifyClone.artists(artists_ID)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.musics(
  music_ID INT PRIMARY KEY AUTO_INCREMENT,
  name_music VARCHAR(60) NOT NULL,
  artists_ID INT NOT NULL,
  album_ID INT NOT NULL,
  FOREIGN KEY (artists_ID) REFERENCES SpotifyClone.artists(artists_ID),
  FOREIGN KEY (album_ID) REFERENCES SpotifyClone.album(album_ID)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.history_musics(
  music_ID INT NOT NULL,
  user_ID INT NOT NULL,
  FOREIGN KEY (music_ID) REFERENCES SpotifyClone.musics(music_ID),
  FOREIGN KEY (user_ID) REFERENCES SpotifyClone.user(user_ID),
  PRIMARY KEY (music_ID, user_ID)
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.plan (category, value_plan)
  VALUES
    ("GRATUITO", 0.00),
    ("UNIVERSITÁRIO", 5.99),
    ("FAMÍLIA", 7.99);

INSERT INTO SpotifyClone.user(name_user, age_user, plan_ID)
  VALUES
    ("Thati", 23, 1),
    ("Cintia", 35, 2),
    ("Bill", 20, 3),
    ("Roger", 45, 1);

INSERT INTO SpotifyClone.artists (name_artists)
  VALUES
    ("Walter Phoenix"),
    ("Pete Strong"),
    ("Lance Day"),
    ("Freedie Shannon");

INSERT INTO SpotifyClone.follower_artists (user_ID, artists_ID)
  VALUES
    (1,1),
    (1,3),
    (1,4),
    (2,1),
    (2,3),
    (3,2),
    (3,1),
    (4,4);

INSERT INTO SpotifyClone.album (name_album, artists_ID)
  VALUES
    ("ENVIAIS", 1),
    ("EXUBERANT", 2),
    ("HALLOWED STREAM", 3),
    ("INCANDESCENT", 4),
    ("TEMPARAY CULTURE", 4);

INSERT INTO SpotifyClone.musics (name_music, artists_ID, album_ID)
  VALUES
    ("Soul For Us",1,1),("Reflections Of Magic",1,1),("Dance With Her Own",1,1),
    ("Troubles Of My Inner Fire",1,2),("Time Fireworks",1,2),("Magic Circus",2,3),
    ("Honey, So Do I",2,3),("Sweetie, Let's Go Wild",2,3),("She Knows",2,3),
    ("Fantasy For Me",3,4),("Celebration Of More",3,4),("Rock His Everything",3,4),
    ("Home Forever",3,4),("Diamond Power",3,4),("Honey, Let's Be Silly",3,4),
    ("Thang Of Thunder",4,5),("Words Of Her Life",4,5),("Without My Streets",4,5);

INSERT INTO SpotifyClone.history_musics (user_ID, music_ID)
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

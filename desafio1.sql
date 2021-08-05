DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
  plan_id INT NOT NULL UNIQUE AUTO_INCREMENT,
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

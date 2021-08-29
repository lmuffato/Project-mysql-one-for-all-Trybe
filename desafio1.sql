DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan_name VARCHAR(50) NOT NULL,
  plan_price DOUBLE NOT NULL
) ENGINE=InnoDB;

INSERT INTO plan (plan_name, plan_price) VALUES ('gratuito', 0);
INSERT INTO plan (plan_name, plan_price) VALUES ('familiar', 7.99);
INSERT INTO plan (plan_name, plan_price) VALUES ('universitário', 5.99);

CREATE TABLE users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(50) NOT NULL,
  user_age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;

INSERT INTO users (user_name, user_age, plan_id) VALUES ('Thati', 23, 1);
INSERT INTO users (user_name, user_age, plan_id) VALUES ('Cintia', 35, 2);
INSERT INTO users (user_name, user_age, plan_id) VALUES ('Bill', 20, 3);
INSERT INTO users (user_name, user_age, plan_id) VALUES ('Roger', 35, 1);

CREATE TABLE artist(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

INSERT INTO artist (artist_name) VALUES ("Walter Phoenix");
INSERT INTO artist (artist_name) VALUES ("Peter Strong");
INSERT INTO artist (artist_name) VALUES ("Lance Day");
INSERT INTO artist (artist_name) VALUES ("Freedie Shannon");

CREATE TABLE following( 
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE=InnoDB;

INSERT INTO following (user_id, artist_id) VALUES (1, 1);
INSERT INTO following (user_id, artist_id) VALUES (1, 4);
INSERT INTO following (user_id, artist_id) VALUES (1, 3);
INSERT INTO following (user_id, artist_id) VALUES (2, 1);
INSERT INTO following (user_id, artist_id) VALUES (2, 3);
INSERT INTO following (user_id, artist_id) VALUES (3, 2);
INSERT INTO following (user_id, artist_id) VALUES (3, 1);
INSERT INTO following (user_id, artist_id) VALUES (4, 4);

CREATE TABLE album(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(100) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE=InnoDB;

INSERT INTO album (album_name, artist_id) VALUES ("Envious", 1);
INSERT INTO album (album_name, artist_id) VALUES ("Exuberant", 1);
INSERT INTO album (album_name, artist_id) VALUES ("Hallowed Steam", 2);
INSERT INTO album (album_name, artist_id) VALUES ("Incandescent", 3);
INSERT INTO album (album_name, artist_id) VALUES ("Temporary Culture", 4);

CREATE TABLE songs(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(50) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album (album_id)
) engine = InnoDB;

INSERT INTO songs (song_name, album_id) VALUES ('Reflections Of Magic', 1);
INSERT INTO songs (song_name, album_id) VALUES ('Dance With Her Own', 1);
INSERT INTO songs (song_name, album_id) VALUES ('Soul For Us', 1);
INSERT INTO songs (song_name, album_id) VALUES ('Troubles Of My Inner Fire', 2);
INSERT INTO songs (song_name, album_id) VALUES ('Time Fireworks', 2);
INSERT INTO songs (song_name, album_id) VALUES ('Magic Circus', 3);
INSERT INTO songs (song_name, album_id) VALUES ('Honey, So Do I', 3);
INSERT INTO songs (song_name, album_id) VALUES ("Sweetie, Let's Go Wild", 3);
INSERT INTO songs (song_name, album_id) VALUES ('She Knows', 3);
INSERT INTO songs (song_name, album_id) VALUES ('Fantasy For Me', 4);
INSERT INTO songs (song_name, album_id) VALUES ('Celebration Of More', 4);
INSERT INTO songs (song_name, album_id) VALUES ('Rock His Everything', 4);
INSERT INTO songs (song_name, album_id) VALUES ('Home Forever', 4);
INSERT INTO songs (song_name, album_id) VALUES ('Diamond Power', 4);
INSERT INTO songs (song_name, album_id) VALUES ("Honey, Let's Be Silly", 4);
INSERT INTO songs (song_name, album_id) VALUES ('Thang Of Thunder', 5);
INSERT INTO songs (song_name, album_id) VALUES ('Words Of Her Life', 5);
INSERT INTO songs (song_name, album_id) VALUES ('Without My Streets', 5);

CREATE TABLE played(
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (song_id) REFERENCES songs(song_id)
) ENGINE=InnoDB;

INSERT INTO played (user_id, song_id) VALUES (1, 1);
INSERT INTO played (user_id, song_id) VALUES (1, 6);
INSERT INTO played (user_id, song_id) VALUES (1, 14);
INSERT INTO played (user_id, song_id) VALUES (1, 16);
INSERT INTO played (user_id, song_id) VALUES (2, 13);
INSERT INTO played (user_id, song_id) VALUES (2, 17);
INSERT INTO played (user_id, song_id) VALUES (2, 2);
INSERT INTO played (user_id, song_id) VALUES (2, 15);
INSERT INTO played (user_id, song_id) VALUES (3, 4);
INSERT INTO played (user_id, song_id) VALUES (3, 16);
INSERT INTO played (user_id, song_id) VALUES (3, 6);
INSERT INTO played (user_id, song_id) VALUES (4, 3);
INSERT INTO played (user_id, song_id) VALUES (4, 18);
INSERT INTO played (user_id, song_id) VALUES (4, 11);

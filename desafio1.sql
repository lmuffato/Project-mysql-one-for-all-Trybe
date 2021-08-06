DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;
USE SpotifyClone;
CREATE TABLE SpotifyClone.plan(
    plan_id INT NOT NULL AUTO_INCREMENT,
    plan_name VARCHAR(25) NOT NULL,
    plan_value DECIMAL(5, 2) NOT NULL,
    PRIMARY KEY(plan_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.plan (plan_name, plan_value)
VALUES
  ('gratuíto', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99);

CREATE TABLE SpotifyClone.customer(
    customer_id INT NOT NULL AUTO_INCREMENT,
    customer_name VARCHAR(25) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    PRIMARY KEY(customer_id),
    FOREIGN KEY(plan_id) REFERENCES SpotifyClone.plan(plan_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.customer (customer_name, age, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

CREATE TABLE SpotifyClone.artist(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL
) engine = InnoDB;

  INSERT INTO SpotifyClone.artist (artist_name)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

CREATE TABLE SpotifyClone.album(
    album_id INT AUTO_INCREMENT,
    album_name VARCHAR(25) NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY(album_id),
    FOREIGN KEY(artist_id) REFERENCES SpotifyClone.artist(artist_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.album (album_name, artist_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

CREATE TABLE SpotifyClone.song(
    song_id INT NOT NULL AUTO_INCREMENT,
    song_name VARCHAR(250) NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY(song_id),
    FOREIGN KEY(album_id) REFERENCES SpotifyClone.album(album_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.song (song_name, album_id)
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

CREATE TABLE SpotifyClone.customer_song(
    song_id INT NOT NULL,
    customer_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(customer_id, song_id),
    FOREIGN KEY(song_id) REFERENCES SpotifyClone.song(song_id),
    FOREIGN KEY(customer_id) REFERENCES SpotifyClone.customer(customer_id)
) engine = InnoDB;

  INSERT INTO SpotifyClone.customer_song (customer_id, song_id)
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

CREATE TABLE SpotifyClone.customer_artist(
    artist_id INT NOT NULL,
    customer_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(artist_id, customer_id),
    FOREIGN KEY(artist_id) REFERENCES SpotifyClone.artist(artist_id),
    FOREIGN KEY(customer_id) REFERENCES SpotifyClone.customer(customer_id)
) engine = InnoDB;
  
  INSERT INTO SpotifyClone.customer_artist (customer_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

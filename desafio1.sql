DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans(
  plan_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) UNIQUE NOT NULL,
  price DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE users(
  user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50),
  age INTEGER,
  plan_id INTEGER NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plans(plan_id)
) engine = InnoDB;

CREATE TABLE artists(
  artist_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE albuns(
  album_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  artist_id INTEGER,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE singles(
  single_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  artist_id INTEGER,
  album_id INTEGER,
  listened INTEGER,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
  FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE history(
  user_id INTEGER,
  single_id INTEGER,
  date_time DATETIME,
  CONSTRAINT PRIMARY KEY (user_id, single_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (single_id) REFERENCES singles(single_id)
);

CREATE TABLE follow(
  user_id INTEGER,
  artist_id INTEGER,
  CONSTRAINT PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

INSERT INTO plans (plan_id, name, price)
VALUES
  (1, "gratuito", 0.00),
  (2, "universitário", 5.99),
  (3, "familiar", 7.99);

INSERT INTO users (user_id, username, age, plan_id)
VALUES
  (1, "Thati", 23, 1),
  (2, "Cintia", 35, 3),
  (3, "Bill", 20, 2),
  (4, "Roger", 45, 1);

INSERT INTO artists (artist_id, name)
VALUES
  (1, "Walter Phoenix"),
  (2, "Peter Strong"),
  (3, "Lance Day"),
  (4, "Freedie Shannon");

INSERT INTO albuns (album_id, name, artist_id)
VALUES
  (1, "Envious", 1),
  (2, "Exuberant", 1),
  (3, "Hallowed Steam", 2),
  (4, "Incandescent", 3),
  (5, "Temporary Cult", 4);

INSERT INTO singles (single_id, name, artist_id, album_id, listened)
VALUES
  (1, "Soul For Us", 1, 1, 0),
  (2, "Reflections Of Magic", 1, 1, 0),
  (3, "Dance With Her Own", 1, 1, 0),
  (4, "Troubles Of My Inner Fire", 1, 2, 0),
  (5, "Time Fireworks", 1, 2, 0),
  (6, "Magic Circus", 2, 3, 0),
  (7, "Honey, So Do I", 2, 3, 0),
  (8, "Sweetie, Let's Go Wild", 2, 3, 0),
  (9, "She Knows", 2, 3, 0),
  (10, "Fantasy For Me", 3, 4, 0),
  (11, "Celebration Of More", 3, 4, 0),
  (12, "Rock His Everything", 3, 4, 0),
  (13, "Home Forever", 3, 4, 0),
  (14, "Diamond Power", 3, 4, 0),
  (15, "Honey, Let's Be Silly", 3, 4, 0),
  (16, "Thang Of Thunder", 4, 5, 0),
  (17, "Words Of Her Life", 4, 5, 0),
  (18, "Without My Streets", 4, 5, 0);

INSERT INTO history (user_id, single_id)
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

INSERT INTO follow (user_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

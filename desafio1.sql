DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans( 
plan_id INT NOT NULL PRIMARY KEY,
plan_name VARCHAR(30) NOT NULL,
value_plan DECIMAL(5, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE users( 
user_id INT NOT NULL PRIMARY KEY,
user_name VARCHAR(100) NOT NULL,
age INTEGER NOT NULL,
plan_id INTEGER,
FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;

CREATE TABLE artists( 
artist_id INT NOT NULL PRIMARY KEY,
artist_name VARCHAR(30) NOT NULL
) engine = InnoDB;

CREATE TABLE albums( 
album_id INT NOT NULL PRIMARY KEY,
album_name VARCHAR(30) NOT NULL,
artist_id INTEGER,
FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE songs( 
song_id INT NOT NULL PRIMARY KEY,
song_name VARCHAR(30) NOT NULL,
album_id INTEGER,
artist_id INTEGER,
FOREIGN KEY (album_id) REFERENCES albums(album_id),
FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE reproduction_history( 
user_id INTEGER,
song_id INTEGER,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id),
PRIMARY KEY (user_id, song_id)
) engine = InnoDB;

CREATE TABLE following_artists( 
user_id INTEGER,
artist_id INTEGER,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
PRIMARY KEY (user_id, artist_id)
) engine = InnoDB;

INSERT INTO plans (plan_id, plan_name, value_plan)
VALUES
(1, "gratuito", "0.00"),
(2, "familiar", "7.99"),
(3, "universitário", "5.99");
    
INSERT INTO users (user_id, user_name, age, plan_id)
VALUES
(1, "Thati", "23", 1),
(2, "Cintia", "35", 2),
(3, "Bill", "20", 3),
(4, "Roger", "45", 1);

INSERT INTO artists (artist_id, artist_name)
VALUES
(1, "Walter Phoenix"),
(2, "Peter Strong"),
(3, "Lance Day"),
(4, "Freedie Shannon");
    
INSERT INTO albums (album_id, album_name, artist_id)
VALUES
(1, "Envious", 1),
(2, "Exuberant", 1),
(3, "Hallowed Steam", 2),
(4, "Incandescent", 3),
(5, "Temporary Culture", 4);

INSERT INTO songs (song_id, song_name, album_id, artist_id)
VALUES
(1, "Soul For Us", 1, 1),
(2, "Reflections Of Magic", 1, 1),
(3, "Dance With Her Own", 1, 1),
(4, "Troubles Of My Inner Fire", 2, 1),
(5, "Time Fireworks", 2, 1),
(6, "Magic Circus", 3, 2),
(7, "Honey, So Do I", 3, 2),
(8, "Sweetie, Let's Go Wild", 3, 2),
(9, "She Knows", 3, 2),
(10, "Fantasy For Me", 4, 3),
(11, "Celebration Of More", 4, 3),
(12, "Rock His Everything", 4, 3),
(13, "Home Forever", 4, 3),
(14, "Diamond Power", 4, 3),
(15, "Honey, Let's Be Silly", 4, 3),
(16, "Thang Of Thunder", 5, 4),
(17, "Words Of Her Life", 5, 4),
(18, "Without My Streets", 5, 4);
  
INSERT INTO reproduction_history (user_id, song_id)
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
    
INSERT INTO following_artists (user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

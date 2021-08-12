DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS albums (
    album_id INT(10) AUTO_INCREMENT,
    album VARCHAR(255) NOT NULL,
    PRIMARY KEY (album_id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS artists (
    artist_id INT(10) AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (artist_id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS songs (
    song_id INT(10) AUTO_INCREMENT,
    song VARCHAR(255) NOT NULL,
    PRIMARY KEY (song_id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS plans (
    plan_id INT(10) AUTO_INCREMENT,
    plan VARCHAR(255) NOT NULL,
    plan_value DECIMAL(3,2) NOT NULL,
    PRIMARY KEY (plan_id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS users (
    user_id INT(10) AUTO_INCREMENT,
    user VARCHAR(255) NOT NULL,
    age INT(10),
    PRIMARY KEY (user_id)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS follow_artist(
    user_id INT(10),
    artist_id INT(10),
    PRIMARY KEY (user_id, artist_id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS history_reproductions(
    user_id INT(10),
    song_id INT(10),
    PRIMARY KEY (user_id, song_id)
) ENGINE=INNODB;

ALTER TABLE albums
    ADD COLUMN
        artist_id INT,
    ADD CONSTRAINT
        fk_artist_id
        FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
    ADD COLUMN
        song_id INT,
    ADD CONSTRAINT
        fk_song_id
        FOREIGN KEY (song_id) REFERENCES songs(song_id);

ALTER TABLE artists
    ADD COLUMN
        album_id INT,
    ADD CONSTRAINT
        FOREIGN KEY (album_id) REFERENCES albums(album_id),
    ADD COLUMN
        song_id INT,
    ADD CONSTRAINT
        FOREIGN KEY (song_id) REFERENCES songs(song_id);

ALTER TABLE songs
    ADD COLUMN
        album_id INT,
    ADD CONSTRAINT
        FOREIGN KEY (album_id) REFERENCES albums(album_id);

ALTER TABLE users
    ADD COLUMN
        album_id INT,
    ADD CONSTRAINT
        FOREIGN KEY (album_id) REFERENCES albums(album_id),
    ADD COLUMN
        song_id INT,
    ADD CONSTRAINT
        FOREIGN KEY (song_id) REFERENCES songs(song_id),
    ADD COLUMN
        plan_id INT,
    ADD CONSTRAINT
        FOREIGN KEY (plan_id) REFERENCES plans(plan_id),
    ADD COLUMN
        artist_id INT,
    ADD CONSTRAINT
        FOREIGN KEY (artist_id) REFERENCES artists(artist_id);

ALTER TABLE follow_artist
    ADD CONSTRAINT
        FOREIGN KEY (user_id) REFERENCES users(user_id),
    ADD CONSTRAINT
        FOREIGN KEY (artist_id) REFERENCES artists(artist_id);

ALTER TABLE history_reproductions
    ADD CONSTRAINT
        FOREIGN KEY (user_id) REFERENCES users(user_id),
    ADD CONSTRAINT
        FOREIGN KEY (song_id) REFERENCES songs(song_id);

INSERT INTO 
    plans(plan, plan_value)
VALUES
    ('gratuito', 0.00),
    ('universitário', 5.99),
    ('familiar', 7.99);

INSERT INTO 
    users(user, age, plan_id)
VALUES 
    ('Thati', 23, 1),
    ('Cintia', 35, 3),
    ('Bill', 20, 2),
    ('Roger', 45, 1);

INSERT INTO
    artists(name)
VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');
  
INSERT INTO
    albums(album, artist_id)
VALUES
    ('Envious', 1),
    ('Exuberant', 1),
    ('Hallowed Steam', 2),
    ('Incandescent', 3),
    ('Temporary Culture', 4);

INSERT INTO
    songs(song, album_id)
VALUES
    ('Soul For US', 1),
    ('Reflections Of Magic', 1),
    ('Dance With Her Own', 1),
    ('Troubles Of My Inner Fire', 2),
    ('Time Fireworks', 2),
    ('Magic circus', 3),
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

INSERT INTO follow_artist (user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO history_reproductions (user_id, song_id)
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

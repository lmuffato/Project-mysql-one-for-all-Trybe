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
    users(user, age)
VALUES 
    ('Thati', 23),
    ('Cintia', 35),
    ('Bill', 20),
    ('Roger', 45);

INSERT INTO 
    plans(plan, plan_value)
VALUES
    ('gratuito', 0),
    ('universitário', 5.99),
    ('familiar', 7.99);

INSERT INTO
    songs(song)
VALUES
    ('Soul For US'),
    ('Reflections Of Magic'),
    ('Dance With Her Own'),
    ('Troubles Of My Inner Fire'),
    ('Time Fireworks'),
    ('Magic circus'),
    ('Honey, So Do I'),
    ("Sweetie, Let's Go Wild"),
    ('She Knows'),
    ('Fantasy For Me'),
    ('Celebration Of More'),
    ('Rock His Everything'),
    ('Home Forever'),
    ('Diamond Power'),
    ("Honey, Let's Be Silly"),
    ('Thang Of Thunder'),
    ('Words Of Her Life'),
    ('Without My Streets');

INSERT INTO
    artists(name)
VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');

INSERT INTO
    albums(album)
VALUES
    ('Envious'),
    ('Exuberant'),
    ('Hallowed Steam'),
    ('Incandescent'),
    ('Temporary Culture');

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

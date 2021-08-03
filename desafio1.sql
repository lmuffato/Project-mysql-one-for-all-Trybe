DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plans (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_type VARCHAR(15) NOT NULL,
    plan_value DECIMAL(5 , 2 ) NOT NULL
);

INSERT INTO SpotifyClone.plans(plan_type, plan_value)
VALUES ('gratuito', 0), ('familiar', 7.99), ('universitário', 5.99);

CREATE TABLE SpotifyClone.users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(25) NOT NULL,
    user_age TINYINT UNSIGNED NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id)
        REFERENCES SpotifyClone.plans (plan_id)
);

INSERT INTO SpotifyClone.users(user_name, user_age, plan_id)
VALUES ('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);

CREATE TABLE SpotifyClone.artists (
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(250) NOT NULL
);

INSERT INTO SpotifyClone.artists(artist_name)
VALUES ('Walter Phoenix'), ('Freedie Shannon'), ('Lance Day'), ('Peter Strong');

CREATE TABLE SpotifyClone.followers (
    artist_id INT NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY (artist_id , user_id),
    FOREIGN KEY (artist_id)
        REFERENCES SpotifyClone.artists (artist_id),
    FOREIGN KEY (user_id)
        REFERENCES SpotifyClone.users (user_id)
);

INSERT INTO SpotifyClone.followers (artist_id, user_id)
VALUES (1, 1), (1, 2), (1, 3), (2, 1), (2, 3), (3, 1), (3, 4), (4, 2);

CREATE TABLE SpotifyClone.albums (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(250) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id)
        REFERENCES SpotifyClone.artists (artist_id)
);

INSERT INTO SpotifyClone.albums(album_name, artist_id)
VALUES ('Envious', 1), ('Exuberant', 1), ('Temporary Culture', 2), ('Incandescent', 3), ('Hallowed Steam', 4);

CREATE TABLE SpotifyClone.songs (
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    song_name VARCHAR(250) NOT NULL,
    album_id INT,
    FOREIGN KEY (album_id)
        REFERENCES SpotifyClone.albums (album_id)
);

INSERT INTO SpotifyClone.songs(song_name, album_id)
VALUES ('Soul For Us', 1), ('Reflections Of Magic', 1), ('Dance With Her Own', 1), ('Troubles Of My Inner Fire', 2), ('Time Fireworks', 2), ('Magic Circus', 5), ('Honey, So Do I', 5), ('Sweetie, Let\'s Go Wild', 5), ('She Knows', 5), ('Fantasy For Me', 4), ('Celebration Of More', 4), ('Rock His Everything', 4), ('Home Forever', 4), ('Diamond Power', 4), ('Honey, Let\'s Be Silly', 4), ('Thang Of Thunder', 3), ('Words Of Her Life', 3), ('Without My Streets', 3);

CREATE TABLE SpotifyClone.historic (
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (user_id , song_id),
    FOREIGN KEY (user_id)
        REFERENCES SpotifyClone.users (user_id),
    FOREIGN KEY (song_id)
        REFERENCES SpotifyClone.songs (song_id)
);

INSERT INTO SpotifyClone.historic(user_id, song_id)
VALUES (1, 1), (1, 6), (1, 14), (1, 16), (2, 13), (2, 17), (2, 2), (2, 15), (3, 4), (3, 16), (3, 6), (4, 3), (4, 18), (4, 11);

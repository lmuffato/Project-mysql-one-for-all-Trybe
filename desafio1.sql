DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plans (
    plan_id INT NOT NULL AUTO_INCREMENT,
    plan VARCHAR(100) NOT NULL,
    price VARCHAR(10) NOT NULL,
    PRIMARY KEY (plan_id)
)  ENGINE=INNODB;

CREATE TABLE Users (
    user_id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(40) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (plan_id)
        REFERENCES Plans (plan_id)
)  ENGINE=INNODB;

CREATE TABLE Artists (
    artist_id INT NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (artist_id)
)  ENGINE=INNODB;

CREATE TABLE Albums (
    album_id INT NOT NULL AUTO_INCREMENT,
    album VARCHAR(100) NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artist_id)
        REFERENCES Artists (artist_id)
)  ENGINE=INNODB;

CREATE TABLE Singles (
    single_id INT NOT NULL AUTO_INCREMENT,
    album_id INT NOT NULL,
    single VARCHAR(200) NOT NULL,
    PRIMARY KEY (single_id),
    FOREIGN KEY (album_id)
        REFERENCES Albums (album_id)
)  ENGINE=INNODB;

CREATE TABLE History (
    history_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    single_id INT NOT NULL,
    PRIMARY KEY (history_id , user_id , single_id),
    FOREIGN KEY (user_id)
        REFERENCES Users (user_id),
    FOREIGN KEY (single_id)
        REFERENCES Singles (single_id)
)  ENGINE=INNODB;

CREATE TABLE Following (
    following_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (following_id , user_id , artist_id),
    FOREIGN KEY (user_id)
        REFERENCES Users (user_id),
    FOREIGN KEY (artist_id)
        REFERENCES Artists (artist_id)
)  ENGINE=INNODB;

INSERT INTO Plans (plan_id, plan, price)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitario', 5.99);

INSERT INTO Users (username, age, plan_id)
VALUES ('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);

INSERT INTO Artists (artist_name)
VALUES ('Walter Phoenix'), ('Freedie Shannon'), ('Lance Day'), ('Peter Strong');

INSERT INTO Albums (album, artist_id)
VALUES ('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 4), ('Incandescent', 3), ('Temporary Culture', 2);

INSERT INTO  Singles (album_id, single)
VALUES (1, 'Soul For Us'), (1, 'Reflections Of Magic'), (1, 'Dance With Her Own'), (2, 'Troubles Of My Inner Fire'), (2, 'Time Fireworks'), (3, 'Magic Circus'), (3, 'Honey, So Do I'), (3, "Sweetie, Let's Go Wild"), (3, 'She Knows'), (4, 'Fantasy For Me'), (4, 'Celebration Of More'), (4, 'Rock His Everything'), (4, 'Home Forever'), (4, 'Diamond Power'), (4, "Honey, Let's Be Silly"), (5, 'Thang Of Thunder'), (5, 'Words Of Her Life'), (5, 'Without My Streets');

INSERT INTO History (user_id, single_id)
VALUES (1, 1), (1, 6), (1, 14), (1, 16), (2, 13), (2, 17), (2, 2), (2, 15), (3, 4), (3, 16), (3, 6), (4, 3), (4, 18), (4, 11);

INSERT INTO Following (user_id, artist_id)
VALUES (1, 1), (1, 2), (1, 3), (2, 1), (2, 3), (3, 4), (3, 1), (4, 2);

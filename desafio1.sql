DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;
CREATE TABLE plans(  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,   Name varchar(100) NOT NULL,   Value FLOAT NOT NULL ) engine = InnoDB;
CREATE TABLE artists(  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,   name varchar(100) NOT NULL ) engine = InnoDB;
CREATE TABLE users(  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,   PlanId INTEGER,   Name varchar(100) NOT NULL,   Age INTEGER NOT NULL,   FOREIGN KEY (PlanId) REFERENCES plans (id) ) engine = InnoDB;
CREATE TABLE albuns(  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,   Name varchar(100) NOT NULL,   ArtistId INTEGER,  FOREIGN KEY (ArtistId) REFERENCES artists (id) ) engine = InnoDB;
CREATE TABLE songs(  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,   Name varchar(100) NOT NULL,   ArtistId INTEGER,   AlbumId INTEGER,  FOREIGN KEY (ArtistId) REFERENCES artists (id),   FOREIGN KEY (AlbumId) REFERENCES albuns (id) ) engine = InnoDB;
CREATE TABLE follow_artists(  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,   UserId INTEGER,   ArtistId INTEGER,  FOREIGN KEY (UserId) REFERENCES users (id),   FOREIGN KEY (ArtistId) REFERENCES artists (id) ) engine = InnoDB;
CREATE TABLE user_history(  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,   UserId INTEGER,   SongId INTEGER,  FOREIGN KEY (UserId) REFERENCES users (id),   FOREIGN KEY (SongId) REFERENCES songs (id) ) engine = InnoDB;
INSERT 
INTO
    plans
    (Name, Value) 
VALUES
    ('gratuito', 0),  (
        'familiar', 7.99
    ),  (
        'universitário', 5.99
    );
INSERT 
INTO
    artists
    (Name) 
VALUES
    ('Walter Phoenix'),  (
        'Peter Strong'
    ),  (
        'Lance Day'
    ),   (
        'Freedie Shannon'
    );
INSERT 
INTO
    users
    (Name, Age, PlanId) 
VALUES
    ('Thati', 23, 1),  (
        'Cintia', 35, 2
    ),  (
        'Bill', 20, 3
    ),   (
        'Roger', 45, 1
    );
INSERT 
INTO
    albuns
    (Name, ArtistId) 
VALUES
    ('Envious', 1),  (
        'Exuberant', 1
    ),  (
        'Hallowed Steam', 2
    ),   (
        'Incandescent', 3
    ),   (
        'Temporary Culture', 4
    );
INSERT 
INTO
    songs
    (Name, ArtistId, AlbumId) 
VALUES
    ('Soul for Us', 1, 1),  (
        'Reflections Of Magic', 1, 1
    ),  (
        'Dance With Her Own', 1, 1
    ),   (
        'Troubles Of My Inner Fire', 1, 2
    ),   (
        'Time Fireworks', 1, 2
    ),   (
        'Magic Circus', 2, 3
    ),   (
        'Honey, So Do I', 2, 3
    ),   (
        'Sweetie, Lets Go Wild', 2, 3
    ),   (
        'She Knows', 2, 3
    ),   (
        'Fantasy For Me', 3, 4
    ),   (
        'Celebration Of More', 3, 4
    ),   (
        'Rock His Everything', 3, 4
    ),   (
        'Home Forever', 3, 4
    ),   (
        'Diamond Power', 3, 4
    ),   (
        'Honey, Lets Be Silly', 3, 4
    ),   (
        'Thang Of Thunder', 4, 5
    ),   (
        'Words Of Her Life', 4, 5
    ),   (
        'Without My Streets', 4, 5
    );
INSERT 
INTO
    follow_artists
    (UserId, ArtistId) 
VALUES
    (1, 1),   (
        1, 4
    ),   (
        1, 3
    ),   (
        2, 1
    ),   (
        2, 3
    ),   (
        3, 2
    ),  (
        3, 1
    ),  (
        4, 4
    );
INSERT 
INTO
    user_history
    (UserId, SongId) 
VALUES
    (1, 1),   (
        1, 6
    ),   (
        1, 14
    ),   (
        1, 16
    ),   (
        2, 13
    ),   (
        2, 17
    ),  (
        2, 2
    ),  (
        2, 15
    ),   (
        3, 4
    ),   (
        3, 16
    ),   (
        3, 6
    ),   (
        4, 3
    ),   (
        4, 18
    ),   (
        4, 11
    );

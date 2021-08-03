DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plans(
planID INT PRIMARY KEY AUTO_INCREMENT,
planName VARCHAR(80) NOT NULL,
planValue DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.users(
userID INT PRIMARY KEY AUTO_INCREMENT,
userName VARCHAR(100) NOT NULL,
userAge INT NOT NULL,
planID INT NOT NULL,
FOREIGN KEY (planID) REFERENCES SpotifyClone.plans(planID)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artists(
artistID INT PRIMARY KEY AUTO_INCREMENT,
artistName VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.albums(
albumID INT PRIMARY KEY AUTO_INCREMENT,
albumName VARCHAR(200) NOT NULL,
artistID INT NOT NULL,
FOREIGN KEY (artistID) REFERENCES SpotifyClone.artists(artistID)
) engine = InnoDB;

CREATE TABLE SpotifyClone.songs(
songID INT PRIMARY KEY AUTO_INCREMENT,
songName VARCHAR(200) NOT NULL,
albumID INT NOT NULL,
FOREIGN KEY (albumID) REFERENCES SpotifyClone.albums(albumID)
) engine = InnoDB;

CREATE TABLE SpotifyClone.followingArtist(
artistID INT NOT NULL,
userID INT NOT NULL,
CONSTRAINT PRIMARY KEY(artistID, userID),
FOREIGN KEY (artistID) REFERENCES SpotifyClone.artists(artistID),
FOREIGN KEY (userID) REFERENCES SpotifyClone.users(userID)
) engine = InnoDB;

CREATE TABLE SpotifyClone.listeningHistory(
songID INT NOT NULL,
userID INT NOT NULL,
CONSTRAINT PRIMARY KEY(songID, userID),
FOREIGN KEY (songID) REFERENCES SpotifyClone.songs(songID),
FOREIGN KEY (userID) REFERENCES SpotifyClone.users(userID)
) engine = InnoDB;

INSERT INTO SpotifyClone.plans(planName, planValue)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO SpotifyClone.users(userName, userAge, planID)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO SpotifyClone.artists(artistName)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.albums(albumName, artistID)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO SpotifyClone.songs(songName, albumID)
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

INSERT INTO SpotifyClone.followingArtist(artistID, userID)
VALUES
(1, 1),
(3, 1),
(4, 1),
(1, 2),
(3, 2),
(1, 3),
(2, 3),
(4, 4);

INSERT INTO SpotifyClone.listeningHistory(songID, userID)
VALUES
(1, 1),
(6, 1),
(14, 1),
(16, 1),
(13, 2),
(17,2),
(2, 2),
(15, 2),
(4, 3),
(16, 3),
(6, 3),
(3, 4),
(18, 4),
(11,4);

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plans(
  planID INT PRIMARY KEY AUTO_INCREMENT,
  planName VARCHAR(80) NOT NULL,
  planValue DECIMAL(5,2) NOT NULL
);

CREATE TABLE SpotifyClone.users(
  userID INT PRIMARY KEY AUTO_INCREMENT,
  userName VARCHAR(100) NOT NULL,
  userAge INT NOT NULL,
  planID INT NOT NULL,
  FOREIGN KEY (planID) REFERENCES SpotifyClone.plans(planID)
);

CREATE TABLE SpotifyClone.artists(
  artistID INT PRIMARY KEY AUTO_INCREMENT,
  artistName VARCHAR(100) NOT NULL
);

CREATE TABLE SpotifyClone.albums(
  albumID INT PRIMARY KEY AUTO_INCREMENT,
  albumName VARCHAR(200) NOT NULL,
  artistID INT NOT NULL,
  FOREIGN KEY (artistID) REFERENCES SpotifyClone.artists(artistID)
);

CREATE TABLE SpotifyClone.songs(
  songID INT PRIMARY KEY AUTO_INCREMENT,
  songName VARCHAR(200) NOT NULL,
  albumID INT NOT NULL,
  FOREIGN KEY (albumID) REFERENCES SpotifyClone.albums(albumID)
);

CREATE TABLE SpotifyClone.followingArtist(
  artistID INT NOT NULL,
  userID INT NOT NULL,
  CONSTRAINT PRIMARY KEY(artistID, userID),
  FOREIGN KEY (artistID) REFERENCES SpotifyClone.artists(artistID),
  FOREIGN KEY (userID) REFERENCES SpotifyClone.users(userID)
);

CREATE TABLE SpotifyClone.listeningHistory(
  songID INT NOT NULL,
  userID INT NOT NULL,
  CONSTRAINT PRIMARY KEY(songID, userID),
  FOREIGN KEY (songID) REFERENCES SpotifyClone.songs(songID),
  FOREIGN KEY (userID) REFERENCES SpotifyClone.users(userID)
);

INSERT INTO SpotifyClone.plans(planID, planName, planValue)
VALUES
(1, 'free', 0),
(2, 'family', 7.99),
(3, 'university', 5.99);

INSERT INTO SpotifyClone.users(userID, userName, userAge, planID)
VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3, 'Bill', 20, 3),
(4, 'Roger', 45, 1);

INSERT INTO SpotifyClone.artists(artistID, artistName)
VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon');

INSERT INTO SpotifyClone.albums(albumID, albumName, artistID)
VALUES
(1, 'Envious', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 2),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 4);

INSERT INTO SpotifyClone.songs(songID, songName, albumID)
VALUES
(1, 'Soul For Us', 1),
(2, 'Reflections Of Magic', 1),
(3, 'Dance With Her Own', 1),
(4, 'Troubles Of My Inner Fire', 2),
(5, 'Time Fireworks', 2),
(6, 'Magic Circus', 3),
(7, 'Honey, So Do I', 3),
(8, "Sweetie, Let's Go Wild", 3),
(9, 'She Knows', 3),
(10, 'Fantasy For Me', 4),
(11, 'Celebration Of More', 4),
(12, 'Rock His Everything', 4),
(13, 'Home Forever', 4),
(14, 'Diamond Power', 4),
(15, "Honey, Let's Be Silly", 4),
(16, 'Thang Of Thunder', 5),
(17, 'Words Of Her Life', 5),
(18, 'Without My Streets', 5);

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


DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE Plans (
  PlanID INT NOT NULL AUTO_INCREMENT,
  PlanType VARCHAR(25),
  PlanValue DOUBLE,
  PRIMARY KEY(PlanID)
) ENGINE = InnoDB;

INSERT INTO Plans (PlanType, PlanValue)
VALUES
('Gratuito', 0),
('Familiar', 7.99),
('Universitário', 5.99);

CREATE TABLE Users(
  UserID INT NOT NULL AUTO_INCREMENT,
  UserName VARCHAR(70),
  UserAge INT,
  PlanID INT,
  PRIMARY KEY(UserID),
  FOREIGN KEY(PlanID) REFERENCES Plans(PlanID)
) ENGINE = InnoDB;

INSERT INTO Users (UserName, UserAge, PlanID)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE Artists (
  ArtistID INT NOT NULL AUTO_INCREMENT,
  ArtistName VARCHAR(120),
  PRIMARY KEY (ArtistID)
) ENGINE = InnoDB;

INSERT INTO Artists (ArtistName)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freddie Shannon');

CREATE TABLE Albums (
  AlbumID INT NOT NULL AUTO_INCREMENT,
  ArtistID INT,
  AlbumName VARCHAR(80),
  PRIMARY KEY(AlbumID),
  FOREIGN KEY(ArtistID) REFERENCES Artists(ArtistID)
  ) ENGINE = InnoDB;

INSERT INTO Albums (AlbumName) 
VALUES
(1, 'Envious'),
(1, 'Exuberant'),
(2, 'Hallowed Steam'),
(3, 'Incandescent'),
(4, 'Temporary Culture');

CREATE TABLE Musics (
  MusicID INT NOT NULL AUTO_INCREMENT,
  ArtistID INT,
  AlbumID INT,
  MusicName VARCHAR(50),
  PRIMARY KEY(MusicID),
  FOREIGN KEY(ArtistID) REFERENCES Artists(ArtistID),
  FOREIGN KEY(AlbumID) REFERENCES Albums(AlbumID)
) ENGINE = InnoDB;

INSERT INTO Musics (AlbumID, ArtistID, MusicName)
VALUES
(1, 1, 'Soul For Us'),
(1, 1, 'Reflections Of Magic'),
(1, 1, 'Dance With Her Own'),
(2, 1, 'Troubles Of My Inner Fire'),
(2, 1, 'Time Fireworks'),
(3, 2, 'Magic Circus'),
(3, 2, 'Honey, So Do I'),
(3, 2, "Sweetie, Let's Go Wild"),
(3, 2, 'She Knows'),
(4, 3, 'Fantasy For Me'),
(4, 3, 'Celebration Of More'),
(4, 3, 'Rock His Everything'),
(4, 3, 'Home Forever'),
(4, 3, 'Diamond Power'),
(4, 3, "Honey, Let's Be Silly"),
(5, 4, 'Thang Of Thunder'),
(5, 4, 'Words Of Her Life'),
(5,4, 'Without My Streets');

CREATE TABLE ReproductionHistory (
  UserID INT,
  MusicID INT,
  PRIMARY KEY(UserID, MusicID),
  FOREIGN KEY(UserID) REFERENCES Users(UserID),
  FOREIGN KEY(MusicID) REFERENCES Musics(MusicID)
) ENGINE = InnoDB;

INSERT INTO ReproductionHistory (UserID, MusicID)
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

CREATE TABLE FollowingArtists (
  UserID INT,
  ArtistID INT,
  PRIMARY KEY(UserID, ArtistID),
  FOREIGN KEY(UserID) REFERENCES Users(UserID),
  FOREIGN KEY(ArtistID) REFERENCES Artists(ArtistID)
) ENGINE = InnoDB;

INSERT INTO FollowingArtists (UserID, ArtistID)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

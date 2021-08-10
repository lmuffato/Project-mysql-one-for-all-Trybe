DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE PLANS(
  PlanID INT PRIMARY KEY AUTO_INCREMENT,
  PlanName VARCHAR(100) NOT NULL,
  PlanCost decimal(4,2) DEFAULT NULL
)engine=InnoDB;

INSERT INTO PLANS
(PlanName, PlanCost)
VALUES
('Gratuito',0.00),
('Universitario',5.99),
('Familiar',7.99);

CREATE TABLE USERS(
  UserID INT PRIMARY KEY AUTO_INCREMENT,
  UserName varchar(100) NOT NULL,
  Age int DEFAULT NULL,
  PlanID int DEFAULT NULL,
  KEY PlanID (PlanID),
  CONSTRAINT PlanID FOREIGN KEY (PlanID) REFERENCES PLANS (PlanID)
) ENGINE=InnoDB;

INSERT INTO USERS
(UserName, Age, PlanID)
VALUES
('Thati',23,1),
('Cintia',35,3),
('Bill',20,2),
('Roger',45,1);

CREATE TABLE SINGERS(
  SingerID INT PRIMARY KEY AUTO_INCREMENT,
  SingerName VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

INSERT INTO SINGERS
(SingerName)
VALUES 
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE ALBUNS(
  AlbumID INT PRIMARY KEY AUTO_INCREMENT,
  AlbumName VARCHAR(100) NOT NULL,
  SingerID INT NOT NULL,
  KEY SingerID (SingerID),
  FOREIGN KEY (SingerID) REFERENCES SINGERS (SingerID)
) ENGINE=InnoDB;

INSERT INTO ALBUNS
(AlbumName, SingerID)
VALUES 
('Envious',1),
('Exuberant',1),
('Hallowed Steam',2),
('Incandescent',3),
('Temporary Culture',4);

CREATE TABLE SONGS (
  SongID INT AUTO_INCREMENT,
  SongName varchar(100) NOT NULL,
  AlbumID INT,
  SingerID INT,
  PRIMARY KEY (SongID),
  FOREIGN KEY (AlbumID) REFERENCES ALBUNS (AlbumID),
  FOREIGN KEY (SingerID) REFERENCES SINGERS (SingerID)
) ENGINE=InnoDB;

INSERT INTO SONGS
(SongName, AlbumID, SingerID)
VALUES
('Soul For Us',1,1),
('Reflections Of Magic',1,1),
('Dance With Her Own',1,1),
('Troubles Of My Inner Fire',2,1),
('Time Fireworks',2,1),
('Magic Circus',3,2),
('Honey, So Do I',3,2),
("Sweetie, Let's Go Wild",3,2),
('She Knows',3,2),
('Fantasy For Me',4,3),
('Celebration Of More',4,3),
('Rock His Everything',4,3),
('Home Forever',4,3),
('Diamond Power',4,3),
("Honey, Let's Be Silly",4,3),
('Thang Of Thunder',5,4),
('Words Of Her Life',5,4),
('Without My Streets',5,4);

CREATE TABLE HISTORY_PLAYED_SONGS(
  PlayedID INT AUTO_INCREMENT,
  UserID INT,
  SongID INT,
  PRIMARY KEY (PlayedID, UserID, SongID),
  FOREIGN KEY (UserID) REFERENCES USERS (UserID),
  FOREIGN KEY (SongID) REFERENCES SONGS (SongID)
) ENGINE=InnoDB;

INSERT INTO HISTORY_PLAYED_SONGS VALUES
(1,1,1),
(2,2,2),
(3,4,3),
(4,3,4),
(5,1,6),
(6,3,6),
(7,4,11),
(8,2,13),
(9,1,14),
(10,2,15),
(11,1,16),
(12,3,16),
(13,2,17),
(14,4,18);

CREATE TABLE SINGER_FOLLOWERS (
  SingFollowID INT AUTO_INCREMENT,
  SingerID INT,
  UserID INT,
  PRIMARY KEY (SingFollowID, SingerID, UserID),
  FOREIGN KEY (SingerID) REFERENCES SINGERS (SingerID),
  FOREIGN KEY (UserID) REFERENCES USERS (UserID)
) ENGINE=InnoDB;

INSERT INTO SINGER_FOLLOWERS VALUES
(1,1,1),
(2,4,1),
(3,3,1),
(4,1,2),
(5,3,2),
(6,2,3),
(7,1,3),
(8,4,4);

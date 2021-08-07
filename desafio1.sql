DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plan(
plan_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
plan_name VARCHAR(100) NOT NULL,
plan_value VARCHAR(20) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE User(
  user_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  user_name VARCHAR(100) NOT NULL,
  user_age INT NOT NULL,
  plan_id INT,
  FOREIGN KEY (plan_id) REFERENCES Plan(plan_id)
) ENGINE = InnoDB;

CREATE TABLE Artist(
  Artist_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Artist_name VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE Album(
  Album_id INT PRIMARY KEY AUTO_INCREMENT,
  Album_name VARCHAR(100) NOT NULL,
  Artist_id INT,
  FOREIGN KEY (Artist_id) REFERENCES Artist(Artist_id)
) ENGINE = InnoDB;

CREATE TABLE Songs(
  Song_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Song_name VARCHAR(100) NOT NULL,
  Album_id INT,
  FOREIGN KEY (Album_id) REFERENCES Album(Album_id)
) ENGINE = InnoDB;

CREATE TABLE History(
  History_id INT AUTO_INCREMENT,
  user_id INT,
  Song_id INT,
  PRIMARY KEY (History_id, user_id, Song_id),
  FOREIGN KEY (Song_id) REFERENCES Songs(Song_id),
  FOREIGN KEY (User_id) REFERENCES User(User_id)
) ENGINE = InnoDB;

CREATE TABLE User_plan(
  plan_id INT,
  user_id INT,
  User_plan_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES User(user_id),
  FOREIGN KEY (plan_id) REFERENCES Plan(plan_id)
) ENGINE = InnoDB;

CREATE TABLE Artist_followers (
  Artist_followers_id INT AUTO_INCREMENT  NOT NULL,
  user_id INT,
  Artist_id INT,
  PRIMARY KEY (Artist_followers_id, user_id, Artist_id),
  FOREIGN KEY (user_id) REFERENCES User(user_id),
  FOREIGN KEY (Artist_id) REFERENCES Artist(Artist_id)
) ENGINE = InnoDB;

INSERT INTO User (user_name, user_age)
VALUES 
('Thati', 23),
('Cintia', 35),
('Bill', 20),
('Roger', 45);

INSERT INTO Plan (Plan_name, plan_value)
VALUES
('Gratuito', 0),
('Universitário', 5.99),
('Familiar', 7.99);

INSERT INTO Artist (Artist_name)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO Album (Album_name, Artist_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO Songs (Song_name, ALbum_id)
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
('Diamond Power',4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO History(User_id, Song_id, History_id)
VALUES
(1,1,1),
(1,6,2),
(1,14,3),
(1,16,4),
(2,13,5),
(2,17,6),
(2,2,7),
(2,15,8),
(3,4,9),
(3,16,10),
(3,6,11),
(4,3,12),
(4,18,13),
(4,11,14);

INSERT INTO User_plan (user_id, plan_id)
VALUES
(1,1),
(2,2),
(3,3),
(4,1);

INSERT INTO Artist_followers (Artist_followers_id, user_id, Artist_id)
VALUES
(1,1,1),
(2,1,2),
(3,1,3),
(4,2,1),
(5,2,3),
(6,3,4),
(7,3,1),
(8,4,2);

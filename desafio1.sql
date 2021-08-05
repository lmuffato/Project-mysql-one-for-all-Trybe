DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE User(
  user_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  user_name VARCHAR(100) NOT NULL,
  user_age INT NOT NULL
) ENGINE = InnoDB;

CREATE TABLE Plan(
plan_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
plan_name VARCHAR(100) NOT NULL,
plan_value DECIMAL(3,2) NOT NULL
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
  History_id INT PRIMARY KEY AUTO_INCREMENT,
  User_id INT,
  Song_id INT,
  Artist_id INT,
  FOREIGN KEY (Song_id) REFERENCES Songs(Song_id),
  FOREIGN KEY (Artist_id) REFERENCES Artist(Artist_id),
  FOREIGN KEY (User_id) REFERENCES User(User_id)
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

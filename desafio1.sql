DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
  id_plan INT PRIMARY KEY AUTO_INCREMENT,
  name_plan VARCHAR(80) NOT NULL,
  price DECIMAL(5,2)
);

CREATE TABLE user(
  id_user INT PRIMARY KEY AUTO_INCREMENT,
  name_user VARCHAR(80) NOT NULL,
  birthdate DATE,
  id_plan INT,
  FOREIGN KEY (id_plan) REFERENCES plan(id_plan)
  );
    
CREATE TABLE artist(
  id_artist INT PRIMARY KEY AUTO_INCREMENT,
  name_artist VARCHAR(80) NOT NULL
  );
    
CREATE TABLE following(
  id_user INT,
  id_artist INT,
  PRIMARY KEY (id_user, id_artist),
  FOREIGN KEY (id_user) REFERENCES user(id_user),
  FOREIGN KEY (id_artist) REFERENCES artist(id_artist)
  );

CREATE TABLE album(
  id_album INT PRIMARY KEY AUTO_INCREMENT,
  name_album VARCHAR(80) NOT NULL,
  id_artist INT,
  FOREIGN KEY (id_artist) REFERENCES artist(id_artist)
  );

CREATE TABLE music(
  id_music INT PRIMARY KEY AUTO_INCREMENT,
  name_music VARCHAR(80) NOT NULL,
  id_album INT,
  FOREIGN KEY (id_album) REFERENCES album(id_album)
  );

CREATE TABLE history(
  id_user INT,
  id_music INT,
  PRIMARY KEY (id_user, id_music),
  FOREIGN KEY (id_user) REFERENCES user(id_user),
  FOREIGN KEY (id_music) REFERENCES music(id_music)
  );

INSERT INTO plan(name_plan, price) VALUES ('gratuito', 0);
INSERT INTO plan(name_plan, price) VALUES ('familiar', 7.99);
INSERT INTO plan(name_plan, price) VALUES ('universitário', 5.99);

INSERT INTO user(name_user, birthdate, id_plan ) VALUES ('Thati', '1998-02-01' , 1);
INSERT INTO user(name_user, birthdate, id_plan) VALUES ('Cintia', '1986-08-30' , 2);
INSERT INTO user(name_user, birthdate, id_plan) VALUES ('Bill', '2001-12-04' , 3);
INSERT INTO user(name_user, birthdate, id_plan) VALUES ('Roger', '1976-10-25' , 1);


INSERT INTO artist(name_artist) VALUES ('Walter Phoenix');
INSERT INTO artist(name_artist) VALUES ('Peter Strong');
INSERT INTO artist(name_artist) VALUES ('Lance Day');
INSERT INTO artist(name_artist) VALUES ('Freedie Shannon');

INSERT INTO following(id_user, id_artist) VALUES (1, 1);
INSERT INTO following(id_user, id_artist) VALUES (1, 4);
INSERT INTO following(id_user, id_artist) VALUES (1, 3);
INSERT INTO following(id_user, id_artist) VALUES (2, 1);
INSERT INTO following(id_user, id_artist) VALUES (2, 3);
INSERT INTO following(id_user, id_artist) VALUES (3, 2);
INSERT INTO following(id_user, id_artist) VALUES (3, 1);
INSERT INTO following(id_user, id_artist) VALUES (4, 4);

INSERT INTO album(name_album, id_artist) VALUES ('Envious', 1);
INSERT INTO album(name_album, id_artist) VALUES ('Exuberant', 1);
INSERT INTO album(name_album, id_artist) VALUES ('Hallowed Steam', 2);
INSERT INTO album(name_album, id_artist) VALUES ('Incandescent', 3);
INSERT INTO album(name_album, id_artist) VALUES ('Temporary Culture', 4);

INSERT INTO music(name_music, id_album) VALUES ('Soul For Us', 1);
INSERT INTO music(name_music, id_album) VALUES ('Reflections Of Magic', 1);
INSERT INTO music(name_music, id_album) VALUES ('Dance With Her Own', 1);

INSERT INTO music(name_music, id_album) VALUES ('Troubles Of My Inner Fire', 2);
INSERT INTO music(name_music, id_album) VALUES ('Time Fireworks', 2);

INSERT INTO music(name_music, id_album) VALUES ('Magic Circus', 3);
INSERT INTO music(name_music, id_album) VALUES ('Honey, So Do I', 3);
INSERT INTO music(name_music, id_album) VALUES ("Sweetie, Let's Go Wild", 3);
INSERT INTO music(name_music, id_album) VALUES ('She Knows', 3);

INSERT INTO music(name_music, id_album) VALUES ('Fantasy For Me', 4);
INSERT INTO music(name_music, id_album) VALUES ('Celebration Of More', 4);
INSERT INTO music(name_music, id_album) VALUES ('Rock His Everything', 4);
INSERT INTO music(name_music, id_album) VALUES ('Home Forever', 4);
INSERT INTO music(name_music, id_album) VALUES ('Diamond Power', 4);
INSERT INTO music(name_music, id_album) VALUES ("Honey, Let's Be Silly", 4);

INSERT INTO music(name_music, id_album) VALUES ('Thang Of Thunder', 5);
INSERT INTO music(name_music, id_album) VALUES ('Words Of Her Life', 5);
INSERT INTO music(name_music, id_album) VALUES ('Without My Streets', 5);

INSERT INTO history(id_user, id_music) VALUES (1,1);
INSERT INTO history(id_user, id_music) VALUES (1,6);
INSERT INTO history(id_user, id_music) VALUES (1,14);
INSERT INTO history(id_user, id_music) VALUES (1,16);

INSERT INTO history(id_user, id_music) VALUES (2,13);
INSERT INTO history(id_user, id_music) VALUES (2,17);
INSERT INTO history(id_user, id_music) VALUES (2,2);
INSERT INTO history(id_user, id_music) VALUES (2,15);

INSERT INTO history(id_user, id_music) VALUES (3,4);
INSERT INTO history(id_user, id_music) VALUES (3,16);
INSERT INTO history(id_user, id_music) VALUES (3,6);

INSERT INTO history(id_user, id_music) VALUES (4,3);
INSERT INTO history(id_user, id_music) VALUES (4,18);
INSERT INTO history(id_user, id_music) VALUES (4,11);

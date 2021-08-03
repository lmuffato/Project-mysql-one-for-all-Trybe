DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE subscriptions(
  subscription_id INT PRIMARY KEY NOT NULL,
  subscription VARCHAR(50) NOT NULL,
  price DOUBLE(4,2) NOT NULL)ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
INSERT INTO subscriptions VALUES 
(1,'gratuito',0),
(2,'familiar',7.99),
(3, 'universitário', 5.99);


CREATE TABLE `user`(
  user_id INT PRIMARY KEY NOT NULL,
  `user` VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  subscription INT NOT NULL,
  FOREIGN KEY(subscription) REFERENCES subscriptions(subscription_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` VALUES
(1, 'Thati', 23, 1),
(2,'Cintia',35,2),
(3, 'Bill', 20,	3),
(4,	'Roger', 45, 1);

CREATE TABLE artists(
  artist_id INT PRIMARY KEY NOT NULL,
  artist VARCHAR(50) NOT NULL)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO artists VALUES 
(1, 'Walter Phoenix'),
(2,	'Peter Strong'),
(3,	'Lance Day'),
(4,	'Freedie Shannon');

CREATE TABLE albums(
  album_id INT PRIMARY KEY NOT NULL,
  album VARCHAR(50) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY(artist_id) REFERENCES artists(artist_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO albums VALUES 
(1,	'Envious',	1),
(2, 'Exuberant',	1),
(3, 'Hallowed Steam', 2),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 4);

CREATE TABLE songs(
  song_id INT PRIMARY KEY NOT NULL,
  song VARCHAR(50),
  album_id INT NOT NULL,
  FOREIGN KEY(album_id) REFERENCES albums(album_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO songs VALUES
(1,	"Soul For Us", 1),
(2,	"Reflections Of Magic",	1),
(3,	"Dance With Her Own", 1),
(4,	"Troubles Of My Inner Fire", 2),
(5,	"Time Fireworks", 2),
(6,	"Magic Circus",	3),
(7,	"Sweetie, Let's Go Wild", 3),
(8,	"She Knows", 3),
(9,	"Fantasy For Me", 4),
(10, "Celebration Of More", 4),
(11, "Rock His Everything",	4),
(12, "Home Forever", 4),
(13, "Diamond Power", 4),
(14, "Honey, Let's Be Silly", 4),
(15, "Thang Of Thunder", 5),
(16, "Words Of Her Life", 5),
(17, "Without My Streets", 5),
(18, "Honey, So Do I", 2);

CREATE TABLE historic_musics(
  historic_id INT NOT NULL,
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY(historic_id),
  FOREIGN KEY(user_id) REFERENCES `user`(user_id),
  FOREIGN KEY(song_id) REFERENCES songs(song_id)
)ENGINE=InnoDB;

INSERT INTO historic_musics VALUES 
(1, 1, 1),
(2, 1, 6),
(3, 1, 13),
(4, 1, 15),
(5, 2, 12),
(6, 2, 16),
(7, 2, 2),
(8, 2, 14),
(9, 3, 4),
(10, 3,	15),
(11, 3,	6),
(12, 4,	3),
(13, 4,	17),
(14, 4,	10);

CREATE TABLE followed_artists(
  following_id INT NOT NULL,
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY(following_id),
  FOREIGN KEY(user_id) REFERENCES `user`(user_id),
  FOREIGN KEY(artist_id) REFERENCES artists(artist_id)
)ENGINE=InnoDB;

INSERT INTO followed_artists VALUES 
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 2, 1),
(5, 2, 3),
(6, 3, 1),
(7, 3, 2),
(8, 4, 4);

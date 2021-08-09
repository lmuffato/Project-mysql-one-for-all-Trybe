DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos (
    plano_id INT NOT NULL AUTO_INCREMENT,
    planos_disponiveis VARCHAR(50) NOT NULL,
    valor_plano NUMERIC(36,2) NOT NULL,
    PRIMARY KEY (`plano_id`)
)engine = InnoDB;


CREATE TABLE user (
    user_id INT NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(50) NOT NULL,
    user_age INT NOT NULL,
    plano_id INT NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_plano`
  FOREIGN KEY (`plano_id`)
  REFERENCES `SpotifyClone`.`planos` (`plano_id`)
)engine = InnoDB;

CREATE TABLE artista (
    artista_id INT NOT NULL AUTO_INCREMENT,
    artista VARCHAR(100) NOT NULL,
    PRIMARY KEY (`artista_id`)
)engine = InnoDB;
CREATE TABLE album (
    album_id INT NOT NULL AUTO_INCREMENT,
    album_name VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (`album_id`),
  CONSTRAINT `fk_Album_artista`
  FOREIGN KEY (`artista_id`)
  REFERENCES `SpotifyClone`.`artista` (`artista_id`)
)engine = InnoDB;


CREATE TABLE songs (
    song_id INT NOT NULL AUTO_INCREMENT,
    song VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (`song_id`),
  CONSTRAINT `fk_songs_album`
  FOREIGN KEY (`album_id`)
  REFERENCES `SpotifyClone`.`album` (`album_id`)
)engine = InnoDB;

CREATE TABLE historico (
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY(`user_id`,`song_id`),
  CONSTRAINT `fk_historico_songs`
  FOREIGN KEY (`song_id`)
  REFERENCES `SpotifyClone`.`songs` (`song_id`),
  CONSTRAINT `fk_historico_user`
  FOREIGN KEY (`user_id`)
  REFERENCES `SpotifyClone`.`user` (`user_id`)
)engine = InnoDB;


CREATE TABLE Follow (
    user_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY(`user_id`,`artista_id`),
  CONSTRAINT `fk_Follow_artista`
  FOREIGN KEY (`artista_id`)
  REFERENCES `SpotifyClone`.`artista` (`artista_id`),
  CONSTRAINT `fk_Follow_user`
  FOREIGN KEY (`user_id`)
  REFERENCES `SpotifyClone`.`user` (`user_id`)
)engine = InnoDB;

    INSERT INTO planos (planos_disponiveis,valor_plano)
VALUES
  ('gratuito',0),
  ('familiar',7.99),
  ('universitário',5.99);

    INSERT INTO user (user_name,user_age,plano_id)
VALUES
  ('Thati', 23,1),
  ('Cintia', 35,2),
  ('Bill',20,3),
  ('Roger',45,1);
  
  INSERT INTO artista (artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
  
  INSERT INTO album (album_name,artista_id)
VALUES
  ('Envious',1),
  ('Exuberant',1),
  ('Hallowed Steam',2),
  ('Incandescent',3),
  ('Temporary Culture',4);
  
  
  INSERT INTO `songs` (song,album_id,artista_id)
VALUES
  ('Soul For Us',1,1),
  ('Reflections Of Magic',1,1),
  ('Dance With Her Own',1,1),
  ('Troubles Of My Inner Fire',2,1),
  ('Time Fireworks',2,1),
  ('Magic Circus',3,2),
  ('Honey So Do I',3,2),
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
  
  

  
  
    INSERT INTO `historico` (user_id,song_id)
VALUES
  (1,1),
  (1,6),
  (1,14),
  (1,16),
  (2,13),
  (2,17),
  (2,2),
  (2,15),
  (3,4),
  (3,16),
  (3,6),
  (4,3),
  (4,18),
  (4,11);

    INSERT INTO `Follow` (user_id,artista_id)
VALUES
  (1,1),
  (1,4),
  (1,3),
  (2,1),
  (2,3),
  (3,2),
  (3,1),
  (4,4);

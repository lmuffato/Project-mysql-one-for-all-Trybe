DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plano (
    `plano_id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `plano_name` VARCHAR(255) NOT NULL,
    `valor_plano` DECIMAL(4,2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.artista (
    `artista_id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `artista_name` VARCHAR(255) DEFAULT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.album (
    `album_id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `album_name` VARCHAR(255) DEFAULT NULL,
    `artista_id` INT(11) NOT NULL,
    FOREIGN KEY (`artista_id`)
      REFERENCES SpotifyClone.artista (`artista_id`)
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuario (
    `usuario_id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `usuario_name` VARCHAR(255) NOT NULL,
    `idade` INT(11) NOT NULL,
    `plano_id` INT(11) NOT NULL,
    FOREIGN KEY (`plano_id`)
      REFERENCES SpotifyClone.plano (`plano_id`)
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguindo (
    `usuario_id` INT(11) NOT NULL,
    `artista_id` INT(11) NOT NULL,
    FOREIGN KEY (`usuario_id`)
      REFERENCES SpotifyClone.usuario (`usuario_id`),
    FOREIGN KEY (`artista_id`)
      REFERENCES SpotifyClone.artista (`artista_id`),
    CONSTRAINT PRIMARY KEY (`usuario_id` , `artista_id`)
) engine = InnoDB;

CREATE TABLE SpotifyClone.cancao (
    `cancao_id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cancao_title` VARCHAR(255) DEFAULT NULL,
    `album_id` INT(11) NOT NULL,
    FOREIGN KEY (`album_id`)
      REFERENCES SpotifyClone.album (`album_id`)
) engine = InnoDB;

CREATE TABLE SpotifyClone.listaReproducao (
    `cancao_id` INT(11) NOT NULL,
    `usuario_id` INT(11) NOT NULL,
    FOREIGN KEY (`cancao_id`)
      REFERENCES SpotifyClone.cancao (`cancao_id`),
    FOREIGN KEY (`usuario_id`)
      REFERENCES SpotifyClone.usuario (`usuario_id`),
    CONSTRAINT PRIMARY KEY (`cancao_id` , `usuario_id`)
) engine = InnoDB;

INSERT INTO SpotifyClone.plano (`plano_name`, `valor_plano`)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO SpotifyClone.usuario (`usuario_name`, `idade`, `plano_id`)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO SpotifyClone.artista (`artista_name`)
VALUES
  ('Walter Phoenix'),
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong');

INSERT INTO SpotifyClone.album (`album_name`, `artista_id`)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 4),
  ('Incandescent', 3),
  ('Temporary Culture', 2);

INSERT INTO SpotifyClone.cancao (`cancao_title`, `album_id`)
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

INSERT INTO SpotifyClone.seguindo (`usuario_id`, `artista_id`)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 4),
  (3, 1),
  (4, 2);

INSERT INTO SpotifyClone.listaReproducao (`cancao_id`, `usuario_id`)
VALUES
  (1, 1),
  (6, 1),
  (14, 1),
  (16, 1),
  (13, 2),
  (17, 2),
  (2, 2),
  (15, 2),
  (4, 3),
  (16, 3),
  (6, 3),
  (3, 4),
  (18, 4),
  (11, 4);

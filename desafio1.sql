DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE `usuario` (
    `usuario_id` INT(11) NOT NULL,
    `usuario_name` VARCHAR(255) DEFAULT NULL,
    `idade` INT(11) NOT NULL,
    `plano_id` INT(11) NOT NULL
) engine = InnoDB;

INSERT INTO `usuario` (`usuario_id`, `usuario_name`, `idade`, `plano_id`)
VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);

ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

ALTER TABLE `usuario`
  ADD FOREIGN KEY (`plano_id`) REFERENCES `plano` (`plano_id`);

CREATE TABLE `plano` (
    `plano_id` INT(11) NOT NULL,
    `plano_name` VARCHAR(255) DEFAULT NULL,
    `valor_plano` DECIMAL(4,2) NOT NULL
) engine = InnoDB;

INSERT INTO `plano` (`plano_id`, `plano_name`, `valor_plano`)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);

ALTER TABLE `plano`
  ADD PRIMARY KEY (`plano_id`);

CREATE TABLE `seguindo` (
    `seguindo_id` INT(11) NOT NULL,
    `usuario_id` INT(11) NOT NULL,
    `artista_id` INT(11) NOT NULL
) engine = InnoDB;

INSERT INTO `seguindo` (`seguindo_id`, `usuario_id`, `artista_id`)
VALUES
  (1, 1, 1),
  (2, 1, 2),
  (3, 1, 3),
  (4, 2, 1),
  (5, 2, 3),
  (6, 3, 4),
  (7, 3, 1),
  (8, 4, 2);

ALTER TABLE `seguindo`
  ADD PRIMARY KEY (`seguindo_id`);

ALTER TABLE `seguindo`
  ADD FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`),
  ADD FOREIGN KEY (`artista_id`) REFERENCES `artista` (`artista_id`);

CREATE TABLE `artista` (
    `artista_id` INT(11) NOT NULL,
    `artista_name` VARCHAR(255) DEFAULT NULL
) engine = InnoDB;

INSERT INTO `artista` (`artista_id`, `artista_name`)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Freedie Shannon'),
  (3, 'Lance Day'),
  (4, 'Peter Strong');

ALTER TABLE `artista`
  ADD PRIMARY KEY (`artista_id`);

CREATE TABLE `album` (
    `album_id` INT(11) NOT NULL,
    `album_name` VARCHAR(255) DEFAULT NULL,
    `artista_id` INT(11) NOT NULL
) engine = InnoDB;

INSERT INTO `album` (`album_id`, `album_name`, `artista_id`)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 4),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 2);

ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

ALTER TABLE `album`
  ADD FOREIGN KEY (`artista_id`) REFERENCES `artista` (`artista_id`);

CREATE TABLE `listaReproducao` (
    `reproducao_id` INT(11) NOT NULL,
    `cancao_id` INT(11) NOT NULL,
    `usuario_id` INT(11) NOT NULL
) engine = InnoDB;

INSERT INTO `listaReproducao` (`reproducao_id`, `cancao_id`, `usuario_id`)
VALUES
  (1, 1, 1),
  (2, 6, 1),
  (3, 14, 4),
  (4, 16, 3),
  (5, 13, 2),
  (6, 17, 3),
  (7, 2, 3),
  (8, 15, 3),
  (9, 4, 3),
  (10, 16, 3),
  (11, 6, 3),
  (12, 3, 3),
  (13, 18, 3),
  (14, 11, 3);

ALTER TABLE `listaReproducao`
  ADD PRIMARY KEY (`reproducao_id`);

ALTER TABLE `listaReproducao`
  ADD FOREIGN KEY (`cancao_id`) REFERENCES `cancao` (`cancao_id`),
  ADD FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`);

CREATE TABLE `cancao` (
    `cancao_id` INT(11) NOT NULL,
    `cancao_title` VARCHAR(255) DEFAULT NULL,
    `artista_id` INT(11) NOT NULL
) engine = InnoDB;

INSERT INTO `cancao` (`cancao_id`, `cancao_title`, `artista_id`)
VALUES
  (1, 'Soul For Us', 1),
  (2, 'Reflections Of Magic', 1),
  (3, 'Dance With Her Own', 1),
  (4, 'Troubles Of My Inner Fire', 1),
  (5, 'Time Fireworks', 1),
  (6, 'Magic Circus', 4),
  (7, 'Honey, So Do I', 4),
  (8, "Sweetie, Let's Go Wild", 4),
  (9, 'She Knows', 4),
  (10, 'Fantasy For Me', 3),
  (11, 'Celebration Of More', 3),
  (12, 'Rock His Everything', 3),
  (13, 'Home Forever', 3),
  (14, 'Diamond Power', 3),
  (15, "Honey, Let's Be Silly", 3),
  (16, 'Thang Of Thunder', 2),
  (17, 'Words Of Her Life', 2),
  (18, 'Without My Streets', 2);

ALTER TABLE `cancao`
  ADD PRIMARY KEY (`cancao_id`);

ALTER TABLE `cancao`
  ADD FOREIGN KEY (`artista_id`) REFERENCES `artista` (`artista_id`);

DROP DATABASE if exists SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE Table `PLANO` (
  `plano_id` INT AUTO_INCREMENT PRIMARY KEY,
  `plano` VARCHAR(30),
  `valor_plano` DOUBLE
) engine = InnoDB;

CREATE Table `USUARIO` (
  `usuario_id` INT AUTO_INCREMENT PRIMARY KEY,
  `usuario` VARCHAR(40),
  `idade` INT,
  `plano_id` INT,
  FOREIGN KEY (`plano_id`) REFERENCES `PLANO` (`plano_id`)
) engine = InnoDB;

CREATE Table `ARTISTA` (
  `artista_id` INT AUTO_INCREMENT PRIMARY KEY,
  `artista` VARCHAR(30)
) engine = InnoDB;

CREATE Table `ALBUM` (
  `album_id` INT AUTO_INCREMENT PRIMARY KEY,
  `album_nome` VARCHAR(30),
  `artista_id` int,
  FOREIGN KEY (`artista_id`) REFERENCES `ARTISTA` (`artista_id`)
) engine = InnoDB;

CREATE Table `CANCAO` (
  `cancao_id` INT AUTO_INCREMENT PRIMARY KEY,
  `cancao_nome` VARCHAR(50),
  `album_id` INT,
  FOREIGN KEY (`album_id`) REFERENCES `ALBUM` (`album_id`)
) engine = InnoDB;

CREATE Table `REPRODUCAO` (
  `cancao_id` INT,
  `usuario_id` INT,
  CONSTRAINT PRIMARY KEY (`cancao_id`, `usuario_id`),
  FOREIGN KEY (`cancao_id`) REFERENCES `CANCAO` (`cancao_id`),
  FOREIGN KEY (`usuario_id`) REFERENCES `USUARIO` (`usuario_id`)
) engine = InnoDB;

CREATE Table `SEGUIDORES` (
  `usuario_id` INT,
  `artista_id` INT,
  CONSTRAINT PRIMARY KEY (`usuario_id`, `artista_id`),
  FOREIGN KEY (`usuario_id`) REFERENCES `USUARIO` (`usuario_id`),
  FOREIGN KEY (`artista_id`) REFERENCES `ARTISTA` (`artista_id`)
) engine = InnoDB;

INSERT INTO `PLANO` (`plano`, `valor_plano`)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO `USUARIO` (`usuario`, `idade`, `plano_id`)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 40, 1);

INSERT INTO `ARTISTA` (`artista`)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO `ALBUM` (`album_nome`, `artista_id`)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO `CANCAO` (`cancao_nome`, `album_id`)
VALUES
('Reflections Of Magic', 1),
('Soul For Us', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let`s Go Wild', 3),
('Celebration Of More', 4),
('She Knows', 3),
('Fantasy For Me', 4),
('Rock His Everything', 4),
('Honey, Let`s Be Silly', 4),
('Without My Streets', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5);

INSERT IGNORE INTO `REPRODUCAO` (`cancao_id`, `usuario_id`)
VALUES
(2, 1),
(6, 1),
(16, 1),
(17, 1),
(15, 2),
(18, 2),
(1, 2),
(13, 2),
(4, 3),
(17, 3),
(6, 3),
(3, 4),
(14, 4),
(9, 4);

INSERT INTO `SEGUIDORES` (`usuario_id`, `artista_id`)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

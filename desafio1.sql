DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE `artista` (
  `artista_ID` int NOT NULL AUTO_INCREMENT,
  `artista` varchar(300) NOT NULL,
  PRIMARY KEY (`artista_ID`)
);

CREATE TABLE `album` (
  `album_ID` int NOT NULL AUTO_INCREMENT,
  `album` varchar(300) NOT NULL,
  `artista_ID` int NOT NULL,
  PRIMARY KEY (`album_ID`),
  KEY `artista_ID` (`artista_ID`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artista_ID`) REFERENCES `artista` (`artista_ID`)
);

CREATE TABLE `planos` (
  `plano_ID` int NOT NULL AUTO_INCREMENT,
  `plano` varchar(300) NOT NULL,
  `valor_plano` double NOT NULL,
  PRIMARY KEY (`plano_ID`)
);

CREATE TABLE `usuarios` (
  `usuario_ID` int NOT NULL AUTO_INCREMENT,
  `usuario_name` varchar(300) NOT NULL,
  `idade` int NOT NULL,
  `plano_ID` int NOT NULL,
  PRIMARY KEY (`usuario_ID`),
  KEY `plano_ID` (`plano_ID`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`plano_ID`) REFERENCES `planos` (`plano_ID`)
);

CREATE TABLE `cancoes` (
  `cancoes_ID` int NOT NULL AUTO_INCREMENT,
  `cancao` varchar(300) NOT NULL,
  `album_ID` int NOT NULL,
  PRIMARY KEY (`cancoes_ID`),
  KEY `album_ID` (`album_ID`),
  CONSTRAINT `cancoes_ibfk_1` FOREIGN KEY (`album_ID`) REFERENCES `album` (`album_ID`)
);

CREATE TABLE `historico_de_reproducoes` (
  `usuario_ID` int NOT NULL,
  `cancoes_ID` int NOT NULL,
  PRIMARY KEY (`usuario_ID`,`cancoes_ID`),
  KEY `cancoes_ID` (`cancoes_ID`),
  CONSTRAINT `historico_de_reproducoes_ibfk_1` FOREIGN KEY (`usuario_ID`) REFERENCES `usuarios` (`usuario_ID`),
  CONSTRAINT `historico_de_reproducoes_ibfk_2` FOREIGN KEY (`cancoes_ID`) REFERENCES `cancoes` (`cancoes_ID`)
);

CREATE TABLE `seguindo` (
  `usuario_ID` int NOT NULL,
  `artista_ID` int NOT NULL,
  PRIMARY KEY (`usuario_ID`,`artista_ID`),
  KEY `artista_ID` (`artista_ID`),
  CONSTRAINT `seguindo_ibfk_1` FOREIGN KEY (`usuario_ID`) REFERENCES `usuarios` (`usuario_ID`),
  CONSTRAINT `seguindo_ibfk_2` FOREIGN KEY (`artista_ID`) REFERENCES `artista` (`artista_ID`)
);

INSERT INTO planos(plano, valor_plano)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO artista(artista)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO album(album, artista_ID) 
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO usuarios(usuario_name, idade, plano_ID)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO seguindo(usuario_ID, artista_ID)
VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);

INSERT INTO cancoes(cancao, album_ID)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let`s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let`s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO historico_de_reproducoes(usuario_ID, cancoes_ID)
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

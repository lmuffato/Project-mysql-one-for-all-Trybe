DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
id_plano INT AUTO_INCREMENT PRIMARY KEY,
plano VARCHAR(60) NOT NULL,
valor DECIMAL(3, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE
historico_reproducoes (
id_usuario INT NOT NULL,
id_cancao INT NOT NULL,
CONSTRAINT PRIMARY KEY (id_usuario, id_cancao),
FOREIGN KEY (id_usuario)
REFERENCES usuarios (id_usuario),
FOREIGN KEY (id_cancao)
REFERENCES cancoes(id_cancao)
) engine = InnoDB;

CREATE TABLE artista(
id_artista INT AUTO_INCREMENT PRIMARY KEY,
artista VARCHAR(60) NOT NULL
) engine = InnoDB;

CREATE TABLE cancoes (
id_cancao INT AUTO_INCREMENT PRIMARY KEY,
cancao VARCHAR(110) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (id_album)
REFERENCES album (id_album)
) engine = InnoDB;

CREATE TABLE album(
id_album INT AUTO_INCREMENT PRIMARY KEY,
id_artista INT NOT NULL,
FOREIGN KEY (id_artista)
REFERENCES artista(id_artista)
) engine = InnoDB;

CREATE TABLE usuario(
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
usuario VARCHAR(60) NOT NULL,
idade TINYINT NOT NULL,
id_plano INT NOT NULL,
FOREIGN KEY (id_plano)
REFERENCES plano
) engine = InnoDB;

CREATE TABLE seguidor(
id_usuario INT NOT NULL,
id_artista INT NOT NULL,
CONSTRAINT PRIMARY KEY (id_usuario, id_artista),
FOREIGN KEY (id_usuario)
REFERENCES usuarios (id_usuario),
FOREIGN KEY (id_artista)
REFERENCES artista(id_artista)
) engine = InnoDB;


INSERT INTO planos (id_plano, tipo, valor)
VALUES
('gratuito', 0),
('familiar', 7,99),
('universitario', 5,99);


INSERT INTO historico_reproducoes (id_usuario, id_cancao)
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

INSERT INTO artista (artista)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');
  
  INSERT INTO cancoes (cancoes, id_album)
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
  
INSERT INTO album (album, id_artista)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);
  
INSERT INTO usuario (usuario, idade, id_plano)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 35, 1);
  
INSERT INTO seguidor (id_usuario, id_artista)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
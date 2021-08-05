DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos (
plano_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
plano VARCHAR(45) NOT NULL,
plano_preco DECIMAL(3,2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE usuario(
usuario_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
idade TINYINT NOT NULL,
plano_id INT NOT NULL,
CONSTRAINT FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) ENGINE=InnoDB;

CREATE TABLE artista(
artista_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
artista_name VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE album(
album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
album_name VARCHAR(100) NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) ENGINE=InnoDB;

CREATE TABLE cancoes(
musicas_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
musicas VARCHAR(100) NOT NULL,
album_id INT NOT NULL,
CONSTRAINT FOREIGN KEY (album_id) REFERENCES album(album_id)
) ENGINE=InnoDB;

CREATE TABLE seguindo_artistas(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
CONSTRAINT FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
CONSTRAINT FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) ENGINE = InnoDB;

CREATE TABLE historico_reproducao(
usuario_id INT NOT NULL,
musicas_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, musicas_id),
CONSTRAINT FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
CONSTRAINT FOREIGN KEY (musicas_id) REFERENCES cancoes(musicas_id)
) ENGINE = InnoDB;

INSERT INTO planos(plano, plano_preco)
VALUES ('gratuito', 0), 
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO artista(artista_name)
VALUES ('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO historico_reproducao(usuario_id, musicas_id)
VALUES (1, 1),
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

INSERT INTO seguindo_artistas(usuario_id, artista_id)
VALUES (1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO usuario(nome, idade, plano_id)
VALUES ('Thatti', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO cancoes(musicas, album_id)
VALUES ('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetle, Let's Go Wild", 3),
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

INSERT INTO album(album_name, artista_id)
VALUES ('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4); 

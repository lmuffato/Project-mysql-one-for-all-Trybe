DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plano(
    id_plano SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(4,2) NOT NULL,
    PRIMARY KEY (id_plano)
) engine = InnoDB;

CREATE TABLE Usuario(
    usuario_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    id_plano SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (usuario_id),
    FOREIGN KEY (id_plano) REFERENCES Plano (id_plano)
) engine = InnoDB;

CREATE TABLE Artista(
    id_artista SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_artista)
) engine = InnoDB;

CREATE TABLE Album(
    id_album SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    id_artista SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (id_album),
    FOREIGN KEY (id_artista) REFERENCES Artista (id_artista)
) engine = InnoDB;

CREATE TABLE Cancao(
    id_cancao SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    id_album SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (id_cancao),
    FOREIGN KEY (id_album) REFERENCES Album (id_album)
) engine = InnoDB;

CREATE TABLE Usuario_Artista(
    usuario_id SMALLINT UNSIGNED NOT NULL,
    id_artista SMALLINT UNSIGNED NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
    FOREIGN KEY (id_artista) REFERENCES Artista (id_artista)
) engine = InnoDB;

CREATE TABLE Usuario_Cancao(
    usuario_id SMALLINT UNSIGNED NOT NULL,
    id_cancao SMALLINT UNSIGNED NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
    FOREIGN KEY (id_cancao) REFERENCES Cancao (id_cancao)
) engine = InnoDB;

INSERT INTO Plano(id_plano, nome, valor)
VALUES
  (1, 'Gratuito', '0.00'),
  (2, 'Familiar', '7.99'),
  (3, 'Universitario', '5.99');

INSERT INTO Usuario(usuario_id, usuario, idade, id_plano)
VALUES
  (1, 'Thati', '23', 1),
  (2, 'Cintia', '35', 2),
  (3, 'Bill', '20', 3),
  (4, 'Roger', '45', 1);

INSERT INTO Artista(id_artista, nome)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');

INSERT INTO Album(id_album, id_artista, nome)
VALUES
    (1, 1, 'Envious'),
    (2, 1, 'Exuberant'),
    (3, 2, 'Hallowed Steam'),
    (4, 3, 'Incandescent'),
    (5, 4, 'Temporary Culture');

INSERT INTO Cancao(id_cancao, nome, id_album)
VALUES
    (1, 'Soul For Us', 1),
    (2, 'Reflections Of Magic', 1),
    (3, 'Dance With Her Own', 1),
    (4, 'Troubles Of My Inner Fire', 2),
    (5, 'Time Fireworks', 2),
    (6, 'Magic Circus', 3),
    (7, 'Honey, So Do I', 3),
    (8, 'Sweetie Lets Go Wild', 3),
    (9, 'She Knows', 3),
    (10, 'Fantasy For Me', 4),
    (11, 'Celebration Of More', 4),
    (12, 'Rock His Everything', 4),
    (13, 'Home Forever', 4),
    (14, 'Diamond Power', 4),
    (15, 'Honey, Lets Be Silly', 4),
    (16, 'Thang Of Thnuder', 5),
    (17, 'Words Of Her Life', 5),
    (18, 'Without My Streets', 5);

INSERT INTO Usuario_Artista(usuario_id, id_artista)
VALUES
    (1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);

INSERT INTO Usuario_Cancao(usuario_id, id_cancao)
VALUES
    (1, 1),
    (1, 11),
    (1, 19),
    (1, 21),
    (2, 18),
    (2, 22),
    (2, 2),
    (2, 20),
    (3, 4),
    (3, 21),
    (3, 11),
    (4, 3),
    (4, 23),
    (4, 16);

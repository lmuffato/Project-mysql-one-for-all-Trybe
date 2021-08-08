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
    PRIMARY KEY(usuario_id, id_artista),
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
    FOREIGN KEY (id_artista) REFERENCES Artista (id_artista)
) engine = InnoDB;

CREATE TABLE Usuario_Cancao(
    usuario_id SMALLINT UNSIGNED NOT NULL,
    id_cancao SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY(usuario_id, id_cancao),
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
    FOREIGN KEY (id_cancao) REFERENCES Cancao (id_cancao)
) engine = InnoDB;

INSERT INTO Plano(nome, valor)
VALUES
  ('Gratuito', '0.00'),
  ('Familiar', '7.99'),
  ('Universitario', '5.99');

INSERT INTO Usuario(usuario, idade, id_plano)
VALUES
  ('Thati', '23', 1),
  ('Cintia', '35', 2),
  ('Bill', '20', 3),
  ('Roger', '45', 1);

INSERT INTO Artista(nome)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO Album(id_artista, nome)
VALUES
    (1, 'Envious'),
    (1, 'Exuberant'),
    (2, 'Hallowed Steam'),
    (3, 'Incandescent'),
    (4, 'Temporary Culture');

INSERT INTO Cancao(nome, id_album)
VALUES
    ('Soul For Us', 1),
    ('Reflections Of Magic', 1),
    ('Dance With Her Own', 1),
    ('Troubles Of My Inner Fire', 2),
    ('Time Fireworks', 2),
    ('Magic Circus', 3),
    ('Honey, So Do I', 3),
    ('Sweetie Lets Go Wild', 3),
    ('She Knows', 3),
    ('Fantasy For Me', 4),
    ('Celebration Of More', 4),
    ('Rock His Everything', 4),
    ('Home Forever', 4),
    ('Diamond Power', 4),
    ('Honey, Let''s Be Silly', 4),
    ('Thang Of Thunder', 5),
    ('Words Of Her Life', 5),
    ('Without My Streets', 5);

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

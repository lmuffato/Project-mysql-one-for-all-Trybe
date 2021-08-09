DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
    plano_id INT NOT NULL PRIMARY KEY,
    plano VARCHAR(100) NOT NULL,
    valor_plano DECIMAL (4,2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios(
    usuario_id INT NOT NULL PRIMARY KEY,
    usuario VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
) engine = InnoDB;

CREATE TABLE artistas(
    artista_id INT NOT NULL PRIMARY KEY,
    artista VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE seguindo(
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;


CREATE TABLE albuns(
    album_id INT NOT NULL PRIMARY KEY,
    album VARCHAR(100) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

CREATE TABLE musicas(
    musica_id INT NOT NULL PRIMARY KEY,
    musica VARCHAR(100) NOT NULL,
    artista_id INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
    FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) engine = InnoDB;

CREATE TABLE historico(
    usuario_id INT NOT NULL,
    musica_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, musica_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
    FOREIGN KEY (musica_id) REFERENCES musicas (musica_id)
) engine = InnoDB;

INSERT INTO planos (plano_id, plano, valor_plano)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);

INSERT INTO usuarios (usuario_id, usuario, idade, plano_id)
VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);

INSERT INTO artistas (artista_id, artista)
VALUES
  (1,	'Walter Phoenix'),
  (2,	'Peter Strong'),
  (3,	'Lance Day'),
  (4,	'Freedie Shannon');

INSERT INTO seguindo (usuario_id, artista_id)
VALUES
  (1,	1),
  (1,	3),
  (1,	4),
  (2,	1),
  (2,	3),
  (3,	1),
  (3,	2),
  (4, 4);

INSERT INTO albuns (album_id, album, artista_id)
VALUES
  (1,	'Envious',	1),
  (2,	'Exuberant',	1),
  (3,	'Hallowed Steam',	2),
  (4,	'Incandescent',	3),
  (5,	'Temporary Culture',	4);

INSERT INTO musicas (musica_id, musica, artista_id, album_id)
VALUES
  (1,	"Soul For Us",	1,	1),
  (2,	"Reflections Of Magic",	1,	1),
  (3,	"Dance With Her Own",	1,	1),
  (4,	"Troubles Of My Inner Fire",	1,	2),
  (5,	"Time Fireworks",	1,	2),
  (6,	"Magic Circus",	2,	3),
  (7,	 "Honey, So Do I",	2,	3),
  (8,	"Sweetie, Let's Go Wild",	2,	3),
  (9,	"She Knows",2,	3),
  (10,	"Fantasy For Me",	3,	4),
  (11,	"Celebration Of More",	3,	4),
  (12,	"Rock His Everything",	3,	4),
  (13,	"Home Forever",	3,	4),
  (14,	"Diamond Power",	3,	4),
  (15,	"Honey, Let's Be Silly",	3,	4),
  (16,	"Thang Of Thunder",	4,	5),
  (17,	"Words Of Her Life",	4,	5),
  (18,	"Without My Streets",	4,	5);

INSERT INTO historico (usuario_id, musica_id)
VALUES
  (1,	1),
  (1,	6),
  (1,	14),
  (1,	16),
  (2,	13),
  (2,	17),
  (2,	2),
  (2,	15),
  (3,	4),
  (3,	16),
  (3,	6),
  (4,	3),
  (4,	18),
  (4,	11);

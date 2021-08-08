DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plano(
  plano_id INT NOT NULL AUTO_INCREMENT,
  plano VARCHAR(40) NOT NULL,
  valor_plano VARCHAR(20) NOT NULL,
  PRIMARY KEY (plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuario(
  usuario_id INT NOT NULL AUTO_INCREMENT,
  usuario VARCHAR(40) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  PRIMARY KEY (usuario_id),
  FOREIGN KEY (plano_id) REFERENCES SpotifyClone.plano (plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artista(
  artista_id INT NOT NULL AUTO_INCREMENT,
  artista VARCHAR(150) NOT NULL,
  PRIMARY KEY (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
  album_id INT NOT NULL AUTO_INCREMENT,
  album VARCHAR(150) NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.cancao(
  cancao_id INT NOT NULL AUTO_INCREMENT,
  album_id INT NOT NULL,
  cancao VARCHAR(150) NOT NULL,
  PRIMARY KEY (cancao_id),
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.album (album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.historico(
  reproducao_id INT NOT NULL AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  PRIMARY KEY (reproducao_id, usuario_id, cancao_id),
  FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario (usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.cancao (cancao_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguindo(
  seguindo_id INT NOT NULL AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (seguindo_id, usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario (usuario_id),
  FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista (artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.plano (plano_id, plano, valor_plano)
VALUES
(1, 'gratuito', 0),
(2, 'familiar', 7.99),
(3, 'universitário', 5.99);

INSERT INTO SpotifyClone.usuario (usuario_id, usuario, idade, plano_id)
VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3, 'Bill', 20, 3),
(4, 'Roger', 45, 1);

INSERT INTO SpotifyClone.artista (artista_id, artista)
VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freddie Shannon');

INSERT INTO SpotifyClone.album (album_id, album, artista_id)
VALUES
(1, 1, 'Soul For Us'),
(2, 1, 'Reflections Of Magic'),
(3, 1, 'Dance With Her Own'),
(4, 2, 'Troubles Of My Inner Fire'),
(5, 2, 'Time Fireworks'),
(5, 3, 'Magic Circus'),
(7, 3, 'Honey, So Do I'),
(8, 3, "Sweetie, Let's Go Wild"),
(9, 3, 'She Knows'),
(10, 4, 'Fantasy For Me'),
(11, 4, 'Celebration Of More'),
(12, 4, 'Rock His Everything'),
(13, 4, 'Home Forever'),
(14, 4, 'Diamond Power'),
(15, 4, "Honey, Let's Be Silly"),
(16, 5, 'Thang Of Thunder'),
(17, 5, 'Words Of Her Life'),
(18, 5, 'Without My Streets');

INSERT INTO SpotifyClone.historico(reproducao_id, usuario_id, cancao_id)
VALUES
(1,1,1),
(2,1,6),
(3,1,14),
(4,1,16),
(5,2,13),
(6,2,17),
(7,2,2),
(8,2,15),
(9,3,4),
(10,3,16),
(11,3,6),
(12,4,3),
(13,4,18),
(14,4,11);

INSERT INTO SpotifyClone.seguindo(seguindo_id, usuario_id, artista_id)
VALUES
(1,1,1),
(2,1,4),
(3,1,3),
(4,2,1),
(5,2,3),
(6,3,2),
(7,3,1),
(8,4,4);

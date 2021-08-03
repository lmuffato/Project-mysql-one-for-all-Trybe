DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plano(
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_plano VARCHAR(50) NOT NULL,
  valor_plano DECIMAL(5, 2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.usuario(
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_usuario VARCHAR(70) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES SpotifyClone.plano(plano_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.artista(
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_artista VARCHAR(70) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.album(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_album VARCHAR(70) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista(artista_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.cancoes(
  cancao_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_cancao VARCHAR(70) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.album(album_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.historico_reproducoes(
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
  FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario(usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.cancoes(cancao_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.seguindo_artistas(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista(artista_id)
) ENGINE InnoDB;

INSERT INTO SpotifyClone.plano (nome_plano, valor_plano) VALUES
('gratuito', 0),
('universitario', 5.99),
('familiar', 7.99);

INSERT INTO SpotifyClone.usuario (nome_usuario, idade, plano_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO SpotifyClone.artista (nome_artista) VALUES
('Freedie Shannon'),
('Lance Day'),
('Peter Strong'),
('Walter Phoenix');

INSERT INTO SpotifyClone.album (nome_album, artista_id) VALUES
('Envious', 4),
('Exuberant', 4),
('Hallowed Steam', 3),
('Incandescent', 2),
('Temporary Culture', 1);

INSERT INTO SpotifyClone.cancoes (nome_cancao, album_id) VALUES
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

INSERT INTO SpotifyClone.historico_reproducoes (usuario_id, cancao_id) VALUES
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

INSERT INTO SpotifyClone.seguindo_artistas (usuario_id, artista_id) VALUES
(1, 4),
(1, 1),
(1, 2),
(2, 4),
(2, 2),
(3, 3),
(3, 4),
(4, 1);

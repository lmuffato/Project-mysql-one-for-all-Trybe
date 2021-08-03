DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.planos (
  plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  plano VARCHAR(20) NOT NULL,
  plano_valor FLOAT NOT NULL
);

INSERT INTO SpotifyClone.planos (plano, plano_valor)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

CREATE TABLE SpotifyClone.usuarios (
  usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  usuario_nome VARCHAR(30) NOT NULL,
  usuario_idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES SpotifyClone.planos (plano_id)
);

INSERT INTO SpotifyClone.usuarios (usuario_nome, usuario_idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);


CREATE TABLE SpotifyClone.artistas (
  artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artista_nome VARCHAR(50) NOT NULL
);

INSERT INTO SpotifyClone.artistas (artista_nome)
VALUES
  ('Walter Phoenix'),
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong');

CREATE TABLE SpotifyClone.albuns (
  album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  album VARCHAR(50) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas (artista_id)
);

INSERT INTO SpotifyClone.albuns (album, artista_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 4),
  ('Incandescent', 3),
  ('Temporary Culture', 2);

CREATE TABLE SpotifyClone.cancoes (
  cancao_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cancao VARCHAR(50) NOT NULL,
  album_id INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.albuns (album_id),
  FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas (artista_id)
);

INSERT INTO SpotifyClone.cancoes (cancao, album_id, artista_id)
VALUES
  ('Soul For Us', 1, 1),
  ('Reflections Of Magic', 1, 1),
  ('Dance With Her Own', 1, 1),
  ('Troubles Of My Inner Fire', 2, 1),
  ('Time Fireworks', 2, 1),
  ('Magic Circus', 3, 4),
  ('Honey, So Do I', 3, 4),
  ("Sweetie, Let's Go Wild", 3, 4),
  ('She Knows', 3, 4),
  ('Fantasy For Me', 4, 3),
  ('Celebration Of More', 4, 3),
  ('Rock His Everything', 4, 3),
  ('Home Forever', 4, 3),
  ('Diamond Power', 4, 3),
  ("Honey, Let's Be Sill", 4, 3),
  ('Thang Of Thunder', 5, 2),
  ('Words Of Her Life', 5, 2),
  ('Without My Streets', 5, 2);

CREATE TABLE SpotifyClone.seguindo_artistas (
  seguindo_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios (usuario_id),
  FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas (artista_id)
);

INSERT INTO SpotifyClone.seguindo_artistas (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 4),
  (3, 1),
  (4, 2);

CREATE TABLE SpotifyClone.historico_reproducoes (
  reproducao_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  PRIMARY KEY (usuario_id, cancao_id),
  FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios (usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.cancoes (cancao_id)
);

INSERT INTO SpotifyClone.historico_reproducoes (usuario_id, cancao_id)
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

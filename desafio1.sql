DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
CREATE TABLE SpotifyClone.artistas (
  artista_id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL
);
CREATE TABLE SpotifyClone.albuns (
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_title VARCHAR(255) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);
CREATE TABLE SpotifyClone.cancoes (
  cancao_id INT AUTO_INCREMENT PRIMARY KEY,
  cancao_title VARCHAR(255) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albuns (album_id)
);
CREATE TABLE SpotifyClone.planos (
  plano_id INT AUTO_INCREMENT PRIMARY KEY,
  plano VARCHAR(50) NOT NULL,
  valor_plano DECIMAL(5, 2) NOT NULL
);
CREATE TABLE SpotifyClone.usuarios (
  usuario_id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_name VARCHAR(255) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
);
CREATE TABLE SpotifyClone.artistas_favoritos (
  artista_id INT NOT NULL,
  usuario_id INT NOT NULL,
  PRIMARY KEY (artista_id, usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id)
);
CREATE TABLE SpotifyClone.historico_de_reproducoes (
  cancao_id INT NOT NULL,
  usuario_id INT NOT NULL,
  PRIMARY KEY (cancao_id, usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id)
);
INSERT INTO
  SpotifyClone.planos (plano, valor_plano)
VALUES
  ('gratuito', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99);
INSERT INTO
  SpotifyClone.usuarios (usuario_name, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 40, 1);
INSERT INTO
  SpotifyClone.artistas (nome)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
INSERT INTO
  SpotifyClone.albuns (album_title, artista_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);
INSERT INTO
  SpotifyClone.cancoes (cancao_title, album_id)
VALUES
  ('Soul For Us', 1),
  ('Reflections Of Magic', 1),
  ('Dance With Her Own', 1),
  ('Troubles Of My Inner Fire', 2),
  ('Time Fireworks', 2),
  ('Magic Circus', 3),
  ('Honey  So Do I', 3),
  ('Sweetie  Let''s Go Wild', 3),
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
INSERT INTO
  SpotifyClone.artistas_favoritos (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
INSERT INTO
  SpotifyClone.historico_de_reproducoes (cancao_id, usuario_id)
VALUES
  (1, 1),
  (6, 1),
  (14, 1),
  (16, 1),
  (13, 2),
  (17, 2),
  (2, 2),
  (15, 2),
  (4, 3),
  (16, 3),
  (6, 3),
  (3, 4),
  (18, 4),
  (11, 4);

DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
  plano_id INT AUTO_INCREMENT PRIMARY KEY,
  plano VARCHAR(60) NOT NULL,
  valor_plano DECIMAL(3, 2) NOT NULL
) engine = InnoDB;
INSERT INTO planos (plano, valor_plano)
VALUES
  ('gratuito', 0),
  ('universitário', 5.99),
  ('familiar', 7.99);

CREATE TABLE usuarios(
  usuario_id INT AUTO_INCREMENT PRIMARY KEY,
  nome_do_usuario VARCHAR(60) NOT NULL,
  idade TINYINT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
) engine = InnoDB;
INSERT INTO usuarios (nome_do_usuario, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 3),
  ('Bill', 20, 2),
  ('Roger', 35, 1);

CREATE TABLE artistas(
  artista_id INT AUTO_INCREMENT PRIMARY KEY,
  artista VARCHAR(60) NOT NULL
) engine = InnoDB;
INSERT INTO artistas (artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

CREATE TABLE albuns(
  album_id INT AUTO_INCREMENT PRIMARY KEY,
  album VARCHAR(120) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;
INSERT INTO albuns (album, artista_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandercent', 3),
  ('Temporary Culture', 4);

CREATE TABLE cancoes(
  cancao_id INT AUTO_INCREMENT PRIMARY KEY,
  cancao VARCHAR(120) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) engine = InnoDB;
INSERT INTO cancoes (cancao, album_id)
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

CREATE TABLE artistas_seguidos(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;
INSERT INTO artistas_seguidos (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (4, 4);

CREATE TABLE historico_reproducoes(
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
) engine = InnoDB;
INSERT INTO historico_reproducoes(usuario_id, cancao_id)
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
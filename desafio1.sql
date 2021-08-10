/*
  * Consultei o repositorio do LeonarDev para resolver essa parte.
  * Link: https://github.com/tryber/sd-09-mysql-one-for-all/tree/leonardev-one-4-all
*/
DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
CREATE TABLE IF NOT EXISTS SpotifyClone.PLANOS (
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  plano VARCHAR(20),
  valor_plano DECIMAL(3, 2)
) ENGINE = INNODB;
CREATE TABLE IF NOT EXISTS SpotifyClone.USUARIOS (
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  usuario VARCHAR(20) NOT NULL,
  idade INT,
  plano_id INT,
  FOREIGN KEY (plano_id) REFERENCES SpotifyClone.PLANOS (plano_id)
) ENGINE = INNODB;
CREATE TABLE IF NOT EXISTS SpotifyClone.ARTISTAS (
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  artista VARCHAR(50)
) ENGINE = INNODB;
CREATE TABLE IF NOT EXISTS SpotifyClone.ALBUMS (
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(50),
  artista_id INT,
  FOREIGN KEY (artista_id) REFERENCES SpotifyClone.ARTISTAS (artista_id)
) ENGINE = INNODB;
CREATE TABLE IF NOT EXISTS SpotifyClone.CANCOES (
  cancao_id INT PRIMARY KEY AUTO_INCREMENT,
  cancao VARCHAR(50),
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.ALBUMS (album_id)
) ENGINE = INNODB;
CREATE TABLE IF NOT EXISTS SpotifyClone.USUARIOS_REPRODUCOES (
  usuario_id INT,
  FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.USUARIOS (usuario_id),
  cancao_id INT,
  FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.CANCOES (cancao_id),
  CONSTRAINT PRIMARY KEY (usuario_id, cancao_id)
) ENGINE = INNODB;
CREATE TABLE IF NOT EXISTS SpotifyClone.USUARIOS_SEGUIDAS (
  usuario_id INT,
  FOREIGN KEY (usuario_id) REFERENCES USUARIOS (usuario_id),
  artista_id INT,
  FOREIGN KEY (artista_id) REFERENCES ARTISTAS (artista_id),
  CONSTRAINT PRIMARY KEY (usuario_id, artista_id)
) ENGINE = INNODB;
INSERT INTO
  SpotifyClone.PLANOS (plano, valor_plano)
VALUES
  ("gratuito", 0.00),
  ("familiar", 7.99),
  ("universitário", 5.99);
INSERT INTO
  SpotifyClone.USUARIOS (usuario, idade, plano_id)
VALUES
  ("Thati", 23, 1),
  ("Cintia", 35, 2),
  ("Bill", 20, 3),
  ("Roger", 45, 1);
INSERT INTO
  SpotifyClone.ARTISTAS (artista)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");
INSERT INTO
  SpotifyClone.ALBUMS (album, artista_id)
VALUES
  ("Envious", 1),
  ("Exuberant", 1),
  ("Hallowed Steam", 2),
  ("Incandescent", 3),
  ("Temporary Culture", 4);
INSERT INTO
  SpotifyClone.CANCOES (cancao, album_id)
VALUES
  ("Soul For Us", 1),
  ("Reflections Of Magic", 1),
  ("Dance With Her Own", 1),
  ("Troubles Of My Inner Fire", 2),
  ("Time Fireworks", 2),
  ("Magic Circus", 3),
  ("Honey, So Do I", 3),
  ("Sweetie, Let's Go Wild", 3),
  ("She Knows", 3),
  ("Fantasy For Me", 4),
  ("Celebration Of More", 4),
  ("Rock His Everything", 4),
  ("Home Forever", 4),
  ("Diamond Power", 4),
  ("Honey, Let's Be Silly", 4),
  ("Thang Of Thunder", 5),
  ("Words Of Her Life", 5),
  ("Without My Streets", 5);
INSERT INTO
  SpotifyClone.USUARIOS_REPRODUCOES (usuario_id, cancao_id)
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
INSERT INTO
  SpotifyClone.USUARIOS_SEGUIDAS (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;
CREATE TABLE PLANOS (
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  plano VARCHAR(20) NOT NULL,
  valor DECIMAL(3, 2)
) engine = InnoDB;
INSERT INTO
  PLANOS (plano, valor)
VALUES
  ('gratuito', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99);
CREATE TABLE USUARIOS (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(20) NOT NULL,
    idade INT,
    plano_id INT,
    FOREIGN KEY (plano_id) REFERENCES PLANOS (plano_id)
  ) engine = InnoDB;
INSERT INTO
  USUARIOS (usuario, idade, plano_id)
VALUES
  ("Thati", 23, 1),
  ("Cintia", 35, 2),
  ("Bill", 20, 3),
  ("Roger", 45, 1);
CREATE TABLE ARTISTAS (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(50)
  ) engine = InnoDB;
INSERT INTO
  ARTISTAS (artista)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");
CREATE TABLE ALBUMS (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(50),
    artista_id INT,
    FOREIGN KEY (artista_id) REFERENCES ARTISTAS (artista_id)
  ) engine = InnoDB;
INSERT INTO
  ALBUMS (album, artista_id)
VALUES
  ("Envious", 1),
  ("Exuberant", 1),
  ("Hallowed Steam", 2),
  ("Incandescent", 3),
  ("Temporary Culture", 4);
CREATE TABLE SONGS (
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    song VARCHAR(50),
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES ALBUMS (album_id)
  ) engine = InnoDB;
INSERT INTO
  SONGS (song, album_id)
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
CREATE TABLE ARTISTAS_FOLLOW (
    follow_id INT AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (follow_id, usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES USUARIOS (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES ARTISTAS (artista_id)
  ) engine = InnoDB;
INSERT INTO
  ARTISTAS_FOLLOW (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
CREATE TABLE HISTORICOS (
    historico_id INT AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (historico_id, usuario_id, song_id),
    FOREIGN KEY (usuario_id) REFERENCES USUARIOS (usuario_id),
    FOREIGN KEY (song_id) REFERENCES SONGS (song_id)
  ) engine = InnoDB;
INSERT INTO
  HISTORICOS (usuario_id, song_id)
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

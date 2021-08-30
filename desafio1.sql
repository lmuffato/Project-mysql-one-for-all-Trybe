DROP DATABASE IF EXISTS SpotifyClone;

CREATE SCHEMA SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
  plano_id INT AUTO_INCREMENT PRIMARY KEY,
  plano_nome VARCHAR(255) NOT NULL,
  plano_valor DECIMAL(5,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE usuarios(
  usuario_id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_nome VARCHAR(255) NOT NULL,
  usuario_idade INT NOT NULL,
  plano_id INT,
  FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) ENGINE = InnoDB;

CREATE TABLE artistas(
  artista_id INT AUTO_INCREMENT PRIMARY KEY,
  artista_nome VARCHAR(255) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE albuns(
  album_id INT AUTO_INCREMENT PRIMARY KEY,
  album_nome VARCHAR(255) NOT NULL,
  artista_id INT,
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) ENGINE = InnoDB;

CREATE TABLE cancoes(
  cancao_id INT AUTO_INCREMENT PRIMARY KEY,
  cancao_nome VARCHAR(255) NOT NULL,
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) ENGINE = InnoDB;

CREATE TABLE HistoricoReproducoes(
  usuario_id INT,
  cancao_id INT,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id),
  PRIMARY KEY (usuario_id, cancao_id)
) ENGINE = InnoDB;

CREATE TABLE FaArtistas(
  usuario_id INT,
  artista_id INT,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
  PRIMARY KEY (usuario_id, artista_id)
) ENGINE = InnoDB;

INSERT INTO artistas (artista_nome)
VALUES
  ("Walter Phoenix"),
  ("Freedie Shannon"),
  ("Lance Day"),
  ("Peter Strong");

INSERT INTO planos (plano_nome, plano_valor)
VALUES
  ("gratuito", 0.00),
  ("familiar", 7.99),
  ("universitário", 5.99);

INSERT INTO usuarios (usuario_nome, usuario_idade, plano_id)
VALUES
  ("Thati", 23, 1),
  ("Cintia", 35, 2),
  ("Bill", 20, 3),
  ("Roger", 45, 1);

INSERT INTO albuns (album_nome, artista_id)
VALUES
  ("Envious", 1),
  ("Exuberant", 1),
  ("Hallowed Steam", 4),
  ("Incandescent", 3),
  ("Temporary Culture", 2);

INSERT INTO cancoes (cancao_nome)
VALUES
  ("Soul For Us"),
  ("Reflections Of Magic"),
  ("Magic Circus"),
  ("Diamond Power"),
  ("Thang Of Thunder"),
  ("Home Forever"),
  ("Dance With Her Own"),
  ("Troubles Of My Inner Fire"),
  ("Time Fireworks"),
  ("Honey, So Do I"),
  ("Sweetie, Let's Go Wild"),
  ("She Knows"),
  ("Fantasy For Me"),
  ("Celebration Of More"),
  ("Rock His Everything"),
  ("Honey, Let's Be Silly"),
  ("Words Of Her Life"),
  ("Without My Streets");

INSERT INTO HistoricoReproducoes (usuario_id, cancao_id)
VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (1, 5),
  (2, 6),
  (2, 17),
  (2, 2),
  (2, 16),
  (3, 8),
  (3, 5),
  (3, 3),
  (4, 7),
  (4, 18),
  (4, 14);

INSERT INTO FaArtistas (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 4),
  (3, 1),
  (4, 2);

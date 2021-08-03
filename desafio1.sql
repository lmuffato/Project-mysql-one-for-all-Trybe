DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.usuarios(
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  usuario VARCHAR(255) NOT NULL,
  idade INT NOT NULL,
  plano_id INT,
  FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.planos(
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  plano VARCHAR(255) NOT NULL,
  valor_plano INT NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.cancoes(
  cancao_id INT PRIMARY KEY AUTO_INCREMENT,
  cancao VARCHAR(255) NOT NULL,
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artistas(
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  artista VARCHAR(255) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.albuns(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(255) NOT NULL,
  artista_id INT,
  FOREIGN KEY(artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguindo_artistas(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.historico_de_reproducoes(
	usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id)
) engine = InnoDB;

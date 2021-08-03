DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Planos(
    plano_id INT NOT NULL AUTO_INCREMENT,
    plano VARCHAR(40) NOT NULL,
    valor VARCHAR(20) NOT NULL,
    PRIMARY KEY (plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Usuarios(
    usuario_id INT NOT NULL AUTO_INCREMENT,
    usuario VARCHAR(40) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    PRIMARY KEY (usuario_id),
    FOREIGN KEY (plano_id) REFERENCES SpotifyClone.Planos (plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Artistas(
    artista_id INT NOT NULL AUTO_INCREMENT,
    nome_artista VARCHAR(150) NOT NULL,
    PRIMARY KEY (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Albuns(
    album_id INT NOT NULL AUTO_INCREMENT,
    album VARCHAR(100) NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artista_id) REFERENCES SpotifyClone.Artistas (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Cancoes(
    cancao_id INT NOT NULL AUTO_INCREMENT,
    album_id INT NOT NULL,
    cancao VARCHAR(150) NOT NULL,
    PRIMARY KEY (cancao_id),
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.Albuns (album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Historico(
    historico_id INT NOT NULL AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    PRIMARY KEY (historico_id),
    FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.Usuarios (usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.Cancoes (cancao_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Seguindo(
    seguindo_id INT NOT NULL AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (seguindo_id),
    FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.Usuarios (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES SpotifyClone.Artistas (artista_id)
) engine = InnoDB;


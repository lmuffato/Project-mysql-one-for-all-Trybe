DROP DATABASE IF EXISTS `SpotifyClone`;
CREATE DATABASE `SpotifyClone`;

USE `SpotifyClone`;
CREATE TABLE `artistas` (
  `artista_id` INT AUTO_INCREMENT PRIMARY KEY,
  `nome` VARCHAR(255) NOT NULL
);

CREATE TABLE `albuns` (
  `album_id` INT PRIMARY KEY AUTO_INCREMENT,
  `album_title` VARCHAR(255) NOT NULL,
  `artista_id` INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);

CREATE TABLE `cancoes` (
  `cancao_id` INT AUTO_INCREMENT PRIMARY KEY,
  `cancao_title` VARCHAR(255) NOT NULL,
  `album_id` INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albuns (album_id)
);

CREATE TABLE `planos` (
  `plano_id` INT AUTO_INCREMENT PRIMARY KEY,
  `plano` VARCHAR(50) NOT NULL,
  `valor_plano` DOUBLE NOT NULL,
)

CREATE TABLE `usuarios` (
  `usuario_id` INT AUTO_INCREMENT PRIMARY KEY,
  `usuario_name` VARCHAR(255) NOT NULL,
  `idade` INT NOT NULL,
  `plano_id` INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
);

CREATE TABLE `artista_favorito` (
  `artista_id` INT NOT NULL,
  `usuario_id` INT NOT NULL,
  PRIMARY KEY (artista_id, usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id)
);

CREATE TABLE `historico_de_reproducoes` (
  cancao_id INT NOT NULL,
  usuario_id INT NOT NULL,
  PRIMARY KEY (cancao_id, usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id)
);

DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano_nome VARCHAR(50) NOT NULL,
valor DECIMAL(5,2) NOT NULL
)engine=InnoDB;

CREATE TABLE usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario_nome VARCHAR(50) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY(plano_id) REFERENCES planos(plano_id)
)engine=InnoDB;

CREATE TABLE artista(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista_nome VARCHAR(50) NOT NULL
)engine=InnoDB;

CREATE TABLE album(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_nome VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY(artista_id) REFERENCES artista(artista_id)
)engine=InnoDB;

CREATE TABLE cancao(
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
cancao_nome VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY(album_id) REFERENCES album(album_id)
)engine=InnoDB;

CREATE TABLE seguindo_artistas(
usuario_id INT NOT NULL, 
artista_id INT NOT NULL,
FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY(artista_id) REFERENCES artista(artista_id)
)engine=InnoDB;

CREATE TABLE historico_reproducoes(
cancao_id INT NOT NULL,
usuario_id INT NOT NULL,
FOREIGN KEY(cancao_id) REFERENCES cancao(cancao_id),
FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id)
)engine=InnoDB;

INSERT INTO plano(plano_nome, valor) 
VALUES
  ('gratuito',0),
  ('familiar',7.99),
  ('universitário',5.99);

INSERT INTO usuario(usuario_nome, idade, plano_id) 
VALUES
  ('Thati',23,1),
  ('Cintia',35,2),
  ('Bill',20,3),
  ('Roger',45,1);

INSERT INTO artista(artista_nome) 
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO album(album_nome, artista_id) 
VALUES
  ('Envious',1),
  ('Exuberant',1),
  ('Hallowed Steam',2),
  ('Incadescent',3),
  ('Temporary Culture',4);

INSERT INTO cancao(cancao_nome, album_id) 
VALUES
  ('Soul For Us',1),
  ('Reflections Of Magic',1),
  ('Dance With Her Own',1),
  ('Troubles Of My Inner Fire',2),
  ('Time Fireworks',2),
  ('Magic Circus',3),
  ('Honey, So Do I',3),
  ("Sweetie, Let's Go Wild",3),
  ('She Knows',3),
  ('Fantasy For Me',4),
  ('Celebration Of More',4),
  ('Rock His Everything',4),
  ('Home Forever',4),
  ('Diamond Power',4),
  ("Honey, Let's Be Silly",4),
  ('Thang Of Thunder',5),
  ('Words Of Her Life',5),
  ('Without My Streets',5);

INSERT INTO seguindo_artistas (usuario_id,artista_id) 
VALUES
  (1,1),
  (1,4),
  (1,3),
  (2,1),
  (2,3),
  (3,2),
  (3,1),
  (4,4);

INSERT INTO historico_reproducoes(cancao_id, usuario_id) 
VALUES
  (1,1),
  (2,1),
  (15,1),
  (17,1),
  (14,2),
  (18,2),
  (2,2),
  (16,2),
  (4,3),
  (17,3),
  (6,3),
  (3,4),
  (19,4),
  (12,4);

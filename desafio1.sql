DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
id INT PRIMARY KEY AUTO_INCREMENT,
nome_plano VARCHAR(100),
valor_plano DOUBLE
);

CREATE TABLE artistas (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100)
);

CREATE TABLE usuarios (
id INT PRIMARY KEY AUTO_INCREMENT,
id_plano INT NOT NULL,
nome VARCHAR(100),
idade INT,
FOREIGN KEY (id_plano) REFERENCES planos(id)
);

CREATE TABLE albuns (
id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(100),
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(id)
);

CREATE TABLE musicas (
id INT PRIMARY KEY AUTO_INCREMENT,
nome_musica VARCHAR(100),
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(id)
);

CREATE TABLE seguidores (
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
FOREIGN KEY (artista_id) REFERENCES artistas(id)
);

CREATE TABLE historico_de_musicas (
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
PRIMARY KEY (usuario_id, musica_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
FOREIGN KEY (musica_id) REFERENCES musicas(id)
);

INSERT INTO planos(nome_plano, valor_plano)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO artistas(nome)
VALUES 
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO usuarios(id_plano, nome, idade)
VALUES
(1, 'Thati', 23),
(2, 'Cintia', 35),
(3, 'Bill', 20),
(1, 'Roger', 45);

INSERT INTO albuns(nome_album,artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO musicas(nome_musica, album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Lets Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Lets Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO seguidores(usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO historico_de_musicas(usuario_id,musica_id)
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

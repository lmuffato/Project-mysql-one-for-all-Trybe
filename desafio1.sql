DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Plano(
Plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Plano VARCHAR(20) NOT NULL,
Valor DECIMAL(5,2) NOT NULL
) engine = InnoDB;

INSERT INTO SpotifyClone.Plano (Plano_id, Plano, Valor)
VALUES
(default, 'Gratuito', 0.00),
(default, 'Familiar', 7.99),
(default, 'Universitario', 5.99);

CREATE TABLE SpotifyClone.Usuario(
Usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Usuario VARCHAR(50) NOT NULL,
Idade INT NOT NULL,
Plano_id INT NOT NULL,
FOREIGN KEY(Plano_id) REFERENCES SpotifyClone.Plano(Plano_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Usuario(Usuario_id, Usuario, Idade, Plano_id)
VALUES
(default, 'Thati', 23, 1),
(default, 'Cintia', 35, 2),
(default, 'Bill', 20, 3),
(default, 'Roger', 45, 1);

CREATE TABLE SpotifyClone.Artista(
Artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Artista VARCHAR(20) NOT NULL
) engine = InnoDB;

INSERT INTO SpotifyClone.Artista(Artista_id, Artista)
VALUES
(default, 'Walter Phoenix'),
(default, 'Peter Strong'),
(default, 'Lance Day'),
(default, 'Freedie Shannon');

CREATE TABLE SpotifyClone.Album(
Album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Album VARCHAR(50) NOT NULL,
Artista_id INT NOT NULL,
FOREIGN KEY(Artista_id) REFERENCES SpotifyClone.Artista(Artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Album(Album_id, Album, Artista_id)
VALUES
(default, 'Envious', 1),
(default, 'Exuberant', 1),
(default, 'Hallowed Steam', 2),
(default, 'Incandescent', 3),
(default, 'Temporary Culture', 2);

CREATE TABLE SpotifyClone.Cancao(
Cancao_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Cancao VARCHAR(50) NOT NULL,
Album_id INT NOT NULL,
FOREIGN KEY(Album_id) REFERENCES SpotifyClone.Album(Album_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Cancao(Cancao_id, Cancao, Album_id)
VALUES
(default, 'Soul For Us', 1),
(default, 'Reflections Of Magic', 1),
(default, 'Dance With Her Own', 1),
(default, 'Troubles Of My Inner Fire', 2),
(default, 'Time Fireworks', 2),
(default, 'Magic Circus', 3),
(default, 'Honey, So Do I', 3),
(default, "Sweetie, Let's Go Wild", 3),
(default, 'She Knows', 3),
(default, 'Fantasy For Me', 4),
(default, 'Celebration Of More', 4),
(default, 'Rock His Everything', 4),
(default, 'Home Forever', 4),
(default, 'Diamond Power', 4),
(default, "Honey, Let's Be Silly", 4),
(default, "Thang Of Thunder", 5),
(default, 'Words Of Her Life', 5),
(default, 'Without My Streets', 5);


CREATE TABLE SpotifyClone.Historico(
Usuario_id INT NOT NULL,
Cancao_id INT NOT NULL,
PRIMARY KEY(Usuario_id, Cancao_id),
FOREIGN KEY(Cancao_id) REFERENCES SpotifyClone.Cancao(Cancao_id),
FOREIGN KEY(Usuario_id) REFERENCES SpotifyClone.Usuario(Usuario_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Historico(Usuario_id, Cancao_id)
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

CREATE TABLE SpotifyClone.Seguindo(
Usuario_id INT NOT NULL,
Artista_id INT NOT NULL,
PRIMARY KEY(Usuario_id, Artista_id),
FOREIGN KEY(Usuario_id) REFERENCES SpotifyClone.Usuario(Usuario_id),
FOREIGN KEY(Artista_id) REFERENCES SpotifyClone.Artista(Artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Seguindo(Usuario_id, Artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(45)NOT NULL,
valor_plano DECIMAL(4,2) NOT NULL
);

CREATE TABLE usuarios(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(50) NOT NULL,
idade INT,
plano_id INT NOT NULL,
FOREIGN KEY (`plano_id`) REFERENCES `planos` (`plano_id`)
);

CREATE TABLE artistas(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(50)
);

CREATE TABLE albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
);

CREATE TABLE cancoes(
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
cancao VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
);

CREATE TABLE seguidores(
usuario_id INT,
artista_id INT,
PRIMARY KEY( usuario_id, artista_id),
CONSTRAINT fk_usuarios_seguidores FOREIGN KEY (usuario_id ) REFERENCES usuarios( usuario_id ),
CONSTRAINT fk_artistas_seguidores FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);

CREATE TABLE historico_reproducao (
usuario_id INT,
cancao_id INT,
PRIMARY KEY(usuario_id, cancao_id),
CONSTRAINT fk_usuarios_historico_reproducao FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
CONSTRAINT fk_cancoes_historico_reproducao FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
);

INSERT INTO planos (plano, valor_plano)
      VALUES('gratuito', 0),
            ('familiar', 7.99),
            ('universitário', 5.99);
            

INSERT INTO usuarios( usuario, idade, plano_id)
    VALUES('Thati', 23, 1),
          ('Cintia', 35, 2),
          ('Bill', 20, 3),
          ('Roger', 45, 1);
          
INSERT INTO artistas(artista)
VALUES('Walter Phoenix'),
      ('Peter Strong'),
      ('Lance Day'),
      ('Freedie Shannon');

INSERT INTO albuns(album, artista_id)
    VALUES('Envious', 1),
          ('Exuberant', 1),
          ('Hallowed Steam', 2),
          ('Incandescent', 3),
          ('Temporary Culture', 4);

INSERT INTO cancoes(cancao, album_id)
    VALUES('Soul For Us', 1),
    ('Reflections Of Magic', 1),
    ('Dance With Her Own', 1),
    ('Troubles Of My Inner Fire', 2),
    ('Time Fireworks', 2),
    ('Magic Circus', 3),
    ('Honey, So Do I', 3),
    ('Sweetie, Let`s Go Wild', 3), 
    ('She Knows', 3),
    ('Fantasy For Me', 4),
    ('Celebration Of More', 4),
    ('Rock His Everything',  4),
    ('Home Forever',  4),
    ('Diamond Power', 4), 
    ('Honey, Lets Be Silly', 4),
    ('Thang Of Thunder', 5),
    ('Words Of Her Life', 5),
    ('Without My Streets', 5);

INSERT INTO seguidores (usuario_id, artista_id)
    VALUES(1, 1),
          (1, 4),
          (1, 3),
          (2, 1),
          (2, 3),
          (3, 2),
          (3, 1),
          (4, 4);
          
INSERT INTO historico_reproducao(usuario_id, cancao_id)
      VALUES(1, 1),
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
            
DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;


CREATE TABLE planos (
    plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plano VARCHAR(100),
    plano_valor DECIMAL(6 , 2 )
)  ENGINE=INNODB;


CREATE TABLE usuarios (
    usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(100),
    idade INT,
    plano_id INT,
    FOREIGN KEY (plano_id)
        REFERENCES planos (plano_id)
)  ENGINE=INNODB;


CREATE TABLE artistas (
    artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artista VARCHAR(100)
)  ENGINE=INNODB;


CREATE TABLE seguindo_artistas (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (usuario_id , artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES artistas (artista_id)
)  ENGINE=INNODB;


CREATE TABLE albuns (
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR(100),
    artista_id INT,
    FOREIGN KEY (artista_id)
        REFERENCES artistas (artista_id)
)  ENGINE=INNODB;


CREATE TABLE cancoes (
    cancao_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cancao VARCHAR(100),
    album_id INT,
    FOREIGN KEY (album_id)
        REFERENCES albuns (album_id)
)  ENGINE=INNODB;


CREATE TABLE historico_de_reproducoes (
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    PRIMARY KEY (usuario_id , cancao_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios (usuario_id),
    FOREIGN KEY (cancao_id)
        REFERENCES cancoes (cancao_id)
)  ENGINE=INNODB;


INSERT INTO
    planos(plano, plano_valor)
VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('universitário', 5.99);
    
    
INSERT INTO
    usuarios(usuario, idade, plano_id)
VALUES
    ('Thati', 23, 1),
    ('Cintia', 35, 2),
    ('Bill', 20, 3),
    ('Roger', 45, 1);
    
    
INSERT INTO
    artistas(artista)
VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');


INSERT INTO
    seguindo_artistas(usuario_id, artista_id)
VALUES
    (1, 1),
    (1, 3),
    (1, 4),
    (2, 1),
    (2, 3),
    (3, 1),
    (3, 2),
    (4, 4);
    
    
INSERT INTO
    albuns(album, artista_id)
VALUES
    ('Envious', 1),
    ('Exuberant', 1),
    ('Hallowed Steam', 2),
    ('Incandescent', 3),
    ('Temporary Culture', 4);


INSERT INTO
    cancoes(cancao, album_id)
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
    historico_de_reproducoes(usuario_id, cancao_id)
VALUES
    (1, 1),
    (1, 6),
    (1, 14),
    (1, 16),
    (2, 2),
    (2, 13),
    (2, 15),
    (2, 17),
    (3, 4),
    (3, 6),
    (3, 16),
    (4, 3),
    (4, 11),
    (4, 18);
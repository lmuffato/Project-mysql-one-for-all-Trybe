DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE usuarios(
usuario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(100) NOT NULL,
idade VARCHAR(100) NOT NULL,
plano_id INT NOT NULL
) ENGINE = InnoDB;

    INSERT INTO usuarios(usuario, idade, plano_id)
    VALUES('Thati', 23, 1),
          ('Cintia', 35, 2),
          ('Bill', 20, 3),
          ('Roger', 45, 1);
          
CREATE TABLE planos(
        plano_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        plano VARCHAR(100) NOT NULL,
        valor_plano DECIMAL(5,2) NOT NULL
    ) ENGINE = InnoDB;

    INSERT INTO planos(plano, valor_plano)
    VALUES('gratuito', 0),
          ('familiar', 7.99),
          ('universitário', 5.99);
          
CREATE TABLE albuns(
        album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        album VARCHAR(100) NOT NULL, 
        artista_id INT NOT NULL
    ) ENGINE = InnoDB;

    INSERT INTO albuns(album, artista_id)
    VALUES('Envious', 1),
          ('Exuberant', 1),
          ('Hallowed Steam', 2),
          ('Incandescent', 3),
          ('Temporary Culture', 4);
          
CREATE TABLE artistas(
        artista_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        artista VARCHAR(100) NOT NULL
    ) ENGINE = InnoDB;

    INSERT INTO artistas(artista)
    VALUES('Walter Phoenix'),
          ('Peter Strong'),
          ('Lance Day'),
          ('Freedie Shannon');
          
CREATE TABLE cancoes(
        cancao_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        cancao VARCHAR(100) NOT NULL,
        album_id INT NOT NULL
    ) ENGINE = InnoDB;

    INSERT INTO cancoes(cancao, album_id)
    VALUES('Soul For Us', 1),
          ('Reflections Of Magic', 1),
          ('Dance With Her Own', 1),
          ('Troubles Of My Inner Fire', 2),
          ('Time Fireworks', 2),
          ('Magic Circus', 3),
          ('Honey, So Do I', 3),
          ("Sweetie, Let's Go Wild", 3),
          ('She Knows', 3),
          ('Fantasy For Me', 4),
          ('Celebration Of More', 4),
          ('Rock His Everything', 4),
          ('Home Forever', 4),
          ('Diamond Power', 4),
          ("Honey, Let's Be Silly", 4),
          ('Thang Of Thunder', 5),
          ('Words Of Her Life', 5),
          ('Without My Streets', 5);
          
CREATE TABLE historico_reproducoes(
cancao_id INT NOT NULL,
usuario_id INT NOT NULL,
PRIMARY KEY(cancao_id, usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id)
)ENGINE = InnoDB;
    
INSERT INTO historico_reproducoes(cancao_id, usuario_id)
VALUES(1, 1), (6, 1), (14, 1), (16, 1), (13, 2), (17, 2),
(2, 2), (15, 2), (4, 3), (16, 3), (6, 3), (3, 4), (18, 4), (11, 4);
          
CREATE TABLE seguindo_artistas(
        artista_id INT NOT NULL,
        usuario_id INT NOT NULL,
        PRIMARY KEY(artista_id, usuario_id),
        FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
        FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id)
    )ENGINE = InnoDB;
    
    INSERT INTO seguindo_artistas(artista_id, usuario_id)
    VALUES(1, 1),
          (4, 1),
          (3, 1),
          (1, 2),
          (3, 2),
          (2, 3),
          (1, 3),
          (4, 4);
          
ALTER TABLE usuarios ADD FOREIGN KEY (plano_id) REFERENCES planos(plano_id);
ALTER TABLE albuns ADD FOREIGN KEY (artista_id) REFERENCES artistas(artista_id);
ALTER TABLE cancoes ADD FOREIGN KEY (album_id) REFERENCES albuns(album_id);

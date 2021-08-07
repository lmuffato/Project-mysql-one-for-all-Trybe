DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Plano(
    plano_ID INT PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(20) NOT NULL,
    valor DECIMAL(5,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.Usuario(
    usuario_ID INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_ID INT NOT NULL,
    FOREIGN KEY (plano_ID) REFERENCES SpotifyClone.Plano(plano_ID)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.Artista(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_artista VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.Seguidores_Artista(
    usuario_ID INT NOT NULL,
    artista_ID INT NOT NULL,
    FOREIGN KEY (usuario_ID) REFERENCES SpotifyClone.Usuario(usuario_ID),
    FOREIGN KEY (artista_ID) REFERENCES SpotifyClone.Artista(artista_ID),
    PRIMARY KEY(usuario_ID, artista_ID)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.Album(
    album_ID INT PRIMARY KEY AUTO_INCREMENT,
    nome_album VARCHAR(100) NOT NULL,
    artista_ID INT NOT NULL,
    FOREIGN KEY (artista_ID) REFERENCES SpotifyClone.Artista(artista_ID)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.Cançoes(
    canção_ID INT PRIMARY KEY AUTO_INCREMENT,
    nome_cançao VARCHAR(100) NOT NULL,
    artista_ID INT NOT NULL,
    album_ID INT NOT NULL,
    FOREIGN KEY (artista_ID) REFERENCES SpotifyClone.Artista(artista_ID),
    FOREIGN KEY (album_ID) REFERENCES SpotifyClone.Album(album_ID)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.Historico_reproduçoes(
    canção_ID INT NOT NULL,
    usuario_ID INT NOT NULL,
    FOREIGN KEY (canção_ID) REFERENCES SpotifyClone.Cançoes(canção_ID),
    FOREIGN KEY (usuario_ID) REFERENCES SpotifyClone.Usuario(usuario_ID),
    PRIMARY KEY(canção_ID, usuario_ID)
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.Plano (categoria,valor)
VALUES ("GRATUITO", 0.00),("UNIVERSITÁRIO", 5.99),("FAMÍLIA",7.99);

INSERT INTO SpotifyClone.Usuario(nome_usuario,idade,plano_ID)
VALUES ('THATI',23,1),('CINTIA',35,2),('BILL',20,3),('ROGER',45,1);

INSERT INTO SpotifyClone.Artista (nome_artista)
VALUES ('WALTER PLOENIX'),('PETE STRONG'),('LANCE DAY'),('FREEDIE SHANNON');

INSERT INTO SpotifyClone.Seguidores_Artista (usuario_ID,artista_ID)
VALUES (1,1),(1,3),(1,4),(2,1),(2,3),(3,2),(3,1),(4,4);

INSERT INTO SpotifyClone.Album (nome_album,artista_ID)
VALUES 
    ('ENVIAIS',1),('EXUBERANT',1),('HALLOWED STREAM',2),('INCANDESCENT',3),
    ('TEMPARAY CULTURE',4);

INSERT INTO SpotifyClone.Cançoes (nome_cançao,artista_ID,album_ID)
VALUES
    ("Soul For Us",1,1),("Reflections Of Magic",1,1),("Dance With Her Own",1,1),
    ("Troubles Of My Inner Fire",1,2),("Time Fireworks",1,2),("Magic Circus",2,3),
    ("Honey, So Do I",2,3),("Sweetie, Let's Go Wild",2,3),("She Knows",2,3),
    ("Fantasy For Me",3,4),("Celebration Of More",3,4),("Rock His Everything",3,4),
    ("Home Forever",3,4),("Diamond Power",3,4),("Honey, Let's Be Silly",3,4),
    ("Thang Of Thunder",4,5),("Words Of Her Life",4,5),("Without My Streets",4,5);

INSERT INTO SpotifyClone.Historico_reproduçoes (usuario_ID,canção_ID)
VALUES (1, 1),(1, 6),(1, 14),(1, 16),(2, 13),(2, 17),(2, 2),(2, 15),
       (3, 4),(3, 16),(3, 6),(4, 3),(4, 18),(4, 11);

CREATE DATABASE SpotifyClone;

Use SpotifyClone;

CREATE TABLE Planos (
    Plano_ID INT PRIMARY KEY AUTO_INCREMENT,
    Plano VARCHAR(40) NOT NULL,
    Preço DECIMAL(3 , 2 ) NOT NULL
);

INSERT INTO Planos (Plano, Preço)
VALUES ('gratuito', 0), ('familiar', 7.99),
('universitário', 5.99);

CREATE TABLE Usuarios (
    Usuario_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(40) NOT NULL,
    Idade INT NOT NULL,
    Plano_ID INT NOT NULL,
    CONSTRAINT FOREIGN KEY (Plano_ID)
        REFERENCES Planos (Plano_ID)
);

INSERT INTO Usuarios (Nome, Idade, Plano_ID) 
VALUES ('Thati', 23, 1), ('Cintia', 35, 2),
('Bill', 20, 3), ('Roger', 45, 1);

CREATE TABLE Artistas (
    Artista_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(40) NOT NULL
);

INSERT INTO Artistas(Nome)
VALUES('Walter Phoenix'),('Peter Strong'), 
('Lance Day'), ('Freedie Shannon');

CREATE TABLE Albuns (
    Album_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Artista_ID INT NOT NULL,
    CONSTRAINT FOREIGN KEY (Artista_ID)
        REFERENCES Artistas (Artista_ID)
);

INSERT INTO Albuns (Nome, Artista_ID)
VALUES ('Envious', 1), ('Exuberant', 1),
('Hallowed Steam', 2), ('Incandescent', 3),
('Temporary Culture', 4);


CREATE TABLE Musicas (
    Musica_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Album_ID INT NOT NULL,
    CONSTRAINT FOREIGN KEY (Album_ID)
        REFERENCES Albuns (Album_ID)
);

INSERT INTO Musicas (Nome, Album_ID)
VALUES ('Soul For Us', 1), ('Reflections Of Magic', 1),
('Dance With Her Own', 1), ('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2), ('Magic Circus', 3), ('Honey, So Do I', 3),
('Sweetie, Let"s Go Wild', 3), ('She Knows', 3), ('Fantasy For Me', 4),
('Celebration Of More', 4),  ('Rock His Everything', 4), ('Home Forever', 4),
('Diamond Power', 4),  ('Honey, Let"s Be Silly', 4), ('Thang Of Thunder', 5),
('Words Of Her Life', 5), ('Without My Streets', 5);

CREATE TABLE Artistas_seguidos (
Usuario_ID INT NOT NULL,
Artista_ID INT NOT NULL,
CONSTRAINT PRIMARY KEY(Usuario_ID, Artista_ID),
CONSTRAINT FOREIGN KEY(Usuario_ID) REFERENCES Usuarios(Usuario_ID),
CONSTRAINT FOREIGN KEY (Artista_ID) REFERENCES Artistas(Artista_ID) 
);

INSERT INTO Artistas_seguidos (Usuario_ID, Artista_ID)
VALUES(1, 1), (1, 4), (1, 3), (2, 1), (2, 3), (3, 2), (3, 1), (4,4);

CREATE TABLE historico_reproducao (
Musica_ID INT NOT NULL,
Usuario_ID INT NOT NULL,
CONSTRAINT PRIMARY KEY(Musica_ID, Usuario_ID),
CONSTRAINT FOREIGN KEY(Usuario_ID) REFERENCES Usuarios(Usuario_ID),
CONSTRAINT FOREIGN KEY(Musica_ID) REFERENCES Musicas(Musica_ID)
);

INSERT INTO historico_reproducao (Usuario_ID, Musica_ID)
VALUES(1, 1), (1, 6), (1,14), (1, 16), (2, 13), (2, 17), 
(2, 2),(2, 15), (3, 4), (3, 16), (3, 6), (4, 3), (4, 18),
(4, 11);

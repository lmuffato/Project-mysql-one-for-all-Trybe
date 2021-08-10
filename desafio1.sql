DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Accounts(
    plano_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plano VARCHAR(255) NOT NULL,
    valor_plano DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE Users(
    usuario_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(255) NOT NULL,
    idade INTEGER NOT NULL,
    plano_id INTEGER NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES Accounts (plano_id)
) engine = InnoDB;

CREATE TABLE Artist(
    artista_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artista VARCHAR(255) NOT NULL
) engine = InnoDB;

CREATE TABLE Album(
    album_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR(255) NOT NULL,
artista_id INTEGER NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES Artist (artista_id)
) engine = InnoDB;

CREATE TABLE Songs(
    cancoes_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cancoes VARCHAR(255) NOT NULL,
album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Album (album_id)
) engine = InnoDB;

CREATE TABLE Followers(
usuario_id INTEGER NOT NULL,
artista_id INTEGER NOT NULL,
    PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES Users (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES Artist (artista_id)
) engine = InnoDB;

CREATE TABLE Songs_Played(
usuario_id INTEGER NOT NULL,
cancoes_id INTEGER NOT NULL,
    PRIMARY KEY (usuario_id, cancoes_id),
    FOREIGN KEY (usuario_id) REFERENCES Users (usuario_id),
    FOREIGN KEY (cancoes_id) REFERENCES Songs (cancoes_id)
) engine = InnoDB;
  
INSERT INTO Accounts (plano, valor_plano)
VALUES
  ('gratuito', 0),
  ('universitário', 5.99),
  ('familiar', 7.99);
  
INSERT INTO Users (usuario, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 3),
  ('Bill', 20, 2),
  ('Roger', 45, 1);
  
INSERT INTO Artist (artista)
VALUES
  ('Walter Phoenix'),
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong');
  
INSERT INTO Album (album, artista_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 4),
  ('Incandescent', 3),
  ('Temporary Culture', 2);
  
INSERT INTO Songs (cancoes, album_id)
VALUES
  ('Soul For Us', 1),
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
  
INSERT INTO Followers (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 4),
  (4, 2);

INSERT INTO Songs_Played (usuario_id, cancoes_id)
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
  








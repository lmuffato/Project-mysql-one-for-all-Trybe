CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE tipos_de_Planos (
    planos_id INT PRIMARY KEY AUTO_INCREMENT,
    planos_nome VARCHAR(50),
    valores DECIMAL(5 , 2 ) NOT NULL
)  ENGINE=INNODB;

INSERT INTO tipos_de_Planos(planos_nome, valores)
VALUES("gratuito", 0),
("familiar", 7.99),
("universitário", 5.99);

CREATE TABLE usuario (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    idade TINYINT(3),
    planos_id INT,
    FOREIGN KEY (planos_id)
        REFERENCES tipos_de_Planos (planos_id)
)  ENGINE=INNODB;

INSERT INTO usuario(nome, idade, planos_id)
VALUES("Thati", 23, 1),
("Cintia", 35, 2),
("Bill", 20, 3),
("Roger",45, 1);

CREATE TABLE todos_os_artistas (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_artista VARCHAR(50)
)  ENGINE=INNODB;

INSERT INTO todos_os_artistas(nome_do_artista)
VALUES("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");

CREATE TABLE albuns (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_album VARCHAR(50),
    artista_id INT,
    FOREIGN KEY (artista_id)
        REFERENCES todos_os_artistas (artista_id)
)  ENGINE=INNODB;

INSERT INTO albuns(nome_do_album, artista_id)
VALUES("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

CREATE TABLE cancoes(
cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
nome_das_cancoes VARCHAR (100),
album_id INT,
FOREIGN KEY (album_id)
        REFERENCES albuns (album_id)
) ENGINE=InnoDB;

INSERT INTO cancoes(nome_das_cancoes, album_id)
VALUES("Soul For Us", 1),
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

CREATE TABLE artistas_seguindo (
    seguir_id INT AUTO_INCREMENT,
    usuario_id INT,
    artista_id INT,
    CONSTRAINT PRIMARY KEY (seguir_id, usuario_id, artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuario (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES todos_os_artistas (artista_id)
)  ENGINE=INNODB;

INSERT INTO artistas_seguindo(usuario_id, artista_id)
VALUES (1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

CREATE TABLE historico_reproducoes (
    historico_id INT AUTO_INCREMENT,
    usuario_id INT,
    cancoes_id INT,
    CONSTRAINT PRIMARY KEY (historico_id, usuario_id, cancoes_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuario (usuario_id),
    FOREIGN KEY (cancoes_id)
        REFERENCES cancoes (cancoes_id)
)  ENGINE=INNODB;

INSERT INTO historico_reproducoes (usuario_id, cancoes_id)
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

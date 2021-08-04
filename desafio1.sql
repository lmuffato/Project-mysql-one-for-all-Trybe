DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

-- estrutura tabela planos

CREATE TABLE SpotifyClone.planos(
    `plano_id` INT NOT NULL AUTO_INCREMENT,
    `plano_nome` VARCHAR(50) NOT NULL,
    `plano_valor` DOUBLE NOT NULL,
    PRIMARY KEY(`plano_id`)
) engine = InnoDB;

-- dados tabela planos

INSERT INTO SpotifyClone.planos (`plano_id`, `plano_nome`, `plano_valor`)
VALUES
(1, 'gratuito', 0),
(2, 'familiar', 7.99),
(3, 'universitário', 5.99);

-- estrutura tabela usuarios

CREATE TABLE SpotifyClone.usuarios(
    `usuario_id` INT NOT NULL AUTO_INCREMENT,
    `usuario_nome` VARCHAR(50) NOT NULL,
    `usuario_idade` INT NOT NULL,
    `plano_id` INT NOT NULL,
    PRIMARY KEY(`usuario_id` ),
    FOREIGN KEY(`plano_id`) REFERENCES SpotifyClone.planos(`plano_id`)
) engine = InnoDB;

-- dados tabela usuarios

INSERT INTO SpotifyClone.usuarios(`usuario_id`, `usuario_nome`, `usuario_idade`, `plano_id`)
VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3, 'Bill', 20, 3),
(4, 'Roger', 45, 1);

-- estrutura tabela artistas

CREATE TABLE SpotifyClone.artistas(
    `artista_id` INT NOT NULL AUTO_INCREMENT,
    `artista_nome` VARCHAR(50) NOT NULL,
    PRIMARY KEY(`artista_id`)
) engine = InnoDB;

-- dados tabela artistas

INSERT INTO SpotifyClone.artistas(`artista_id`, `artista_nome`)
VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon');

-- estrutura tabela albuns

CREATE TABLE SpotifyClone.albuns(
    `album_id` INT NOT NULL AUTO_INCREMENT,
    `album_nome` VARCHAR(50) NOT NULL,
    `artista_id` INT NOT NULL,
    PRIMARY KEY(`album_id`),
    FOREIGN KEY(`artista_id`) REFERENCES SpotifyClone.artistas(`artista_id`)
) engine = InnoDB;

-- dados tabela albuns

INSERT INTO SpotifyClone.albuns(`album_id`, `album_nome`, `artista_id`)
VALUES
(1, 'Envious', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 2),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 4);

-- estrutura tabela cancoes

CREATE TABLE SpotifyClone.cancoes(
    `cancao_id` INT NOT NULL AUTO_INCREMENT,
    `cancao_nome` VARCHAR(100) NOT NULL,
    `album_id` INT NOT NULL,
    `artista_id` INT NOT NULL,
    PRIMARY KEY(`cancao_id`),
    FOREIGN KEY(`album_id`) REFERENCES SpotifyClone.albuns(`album_id`),
    FOREIGN KEY(`artista_id`) REFERENCES SpotifyClone.albuns(`artista_id`)
) engine = InnoDB;

-- dados tabela cancoes

INSERT INTO SpotifyClone.cancoes(`cancao_id`, `cancao_nome`, `album_id`, `artista_id`)
VALUES
(1, 'Soul For Us', 1, 1),
(2, 'Reflections Of Magic', 1, 1),
(3, 'Dance With Her Own', 1, 1),
(4, 'Troubles Of My Inner Fire', 2, 1),
(5, 'Time Fireworks', 2, 1),
(6, 'Magic Circus', 3, 2),
(7, 'Honey, So Do I', 3, 2),
(8, 'Sweetie, Let''s Go Wild', 3, 2),
(9, 'She Knows', 3, 2),
(10, 'Fantasy For Me', 4, 3),
(11, 'Celebration Of More', 4, 3),
(12, 'Rock His Everything', 4, 3),
(13, 'Home Forever', 4, 3),
(14, 'Diamond Power', 4, 3),
(15, 'Honey, Let''s Be Silly', 4, 3),
(16, 'Thang Of Thunder', 5, 4),
(17, 'Words Of Her Life', 5, 4),
(18, 'Without My Streets', 5, 4);

-- estrutura tabela historico_de_reproducoes

CREATE TABLE SpotifyClone.historico_de_reproducoes(
    `usuario_id` INT NOT NULL,
    `cancao_id` INT NOT NULL,
    PRIMARY KEY(`usuario_id`,`cancao_id`),
    FOREIGN KEY(`usuario_id`) REFERENCES SpotifyClone.usuarios(`usuario_id`),
    FOREIGN KEY(`cancao_id`) REFERENCES SpotifyClone.cancoes(`cancao_id`)
) engine = InnoDB;

-- dados tabela historico_de_reproducoes

INSERT INTO SpotifyClone.historico_de_reproducoes(`usuario_id`, `cancao_id`)
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

-- estrutura tabela seguindo_artistas

CREATE TABLE SpotifyClone.seguindo_artistas(
    `usuario_id` INT NOT NULL,
    `artista_id` INT NOT NULL,
    PRIMARY KEY(`usuario_id`, `artista_id`),
    FOREIGN KEY(`usuario_id`) REFERENCES SpotifyClone.usuarios(`usuario_id`),
    FOREIGN KEY(`artista_id`) REFERENCES SpotifyClone.artistas(`artista_id`)
) engine = InnoDB;

-- dados tabela seguindo_artistas

INSERT INTO SpotifyClone.seguindo_artistas(`usuario_id`, `artista_id`)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

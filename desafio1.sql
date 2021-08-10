DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
plano_id INT AUTO_INCREMENT PRIMARY KEY,
plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(6, 2)
);

INSERT INTO planos (plano, valor_plano) VALUES ('gratuito', 0);
INSERT INTO planos (plano, valor_plano) VALUES ('familiar', 7.99);
INSERT INTO planos (plano, valor_plano) VALUES ('universitário', 5.99);

CREATE TABLE usuario(
usuario_id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
idade TINYINT,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
);

INSERT INTO usuario (nome, idade, plano_id) VALUES ('Thati', 23, 1);
INSERT INTO usuario (nome, idade, plano_id) VALUES ('Cintia', 35, 2);
INSERT INTO usuario (nome, idade, plano_id) VALUES ('Bill', 20, 3);
INSERT INTO usuario (nome, idade, plano_id) VALUES ('Roger', 35, 1);

CREATE TABLE artista(
artista_id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50)
);

INSERT INTO artista (nome) VALUES ('Walter Phoenix');
INSERT INTO artista (nome) VALUES ('Peter Strong');
INSERT INTO artista (nome) VALUES ('Lance Day');
INSERT INTO artista (nome) VALUES ('Freedie Shannon');

CREATE TABLE seguindo_artista(
artista_id INT NOT NULL,
usuario_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(artista_id, usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista (artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
);

INSERT INTO seguindo_artista (artista_id, usuario_id) VALUES (1, 1);
INSERT INTO seguindo_artista (artista_id, usuario_id) VALUES (4, 1);
INSERT INTO seguindo_artista (artista_id, usuario_id) VALUES (3, 1);
INSERT INTO seguindo_artista (artista_id, usuario_id) VALUES (1, 2);
INSERT INTO seguindo_artista (artista_id, usuario_id) VALUES (3, 2);
INSERT INTO seguindo_artista (artista_id, usuario_id) VALUES (1, 3);
INSERT INTO seguindo_artista (artista_id, usuario_id) VALUES (2, 3);
INSERT INTO seguindo_artista (artista_id, usuario_id) VALUES (4, 4);

CREATE TABLE album(
album_id INT AUTO_INCREMENT PRIMARY KEY,
album VARCHAR(100) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
);

INSERT INTO album (album, artista_id) VALUES ('Envious', 1);
INSERT INTO album (album, artista_id) VALUES ('Exuberant', 1);
INSERT INTO album (album, artista_id) VALUES ('Hallowed Steam', 2);
INSERT INTO album (album, artista_id) VALUES ('Incandescent', 3);
INSERT INTO album (album, artista_id) VALUES ('Temporary Culture', 4);

CREATE TABLE cancoes(
cancao_id INT AUTO_INCREMENT PRIMARY KEY,
cancao VARCHAR(100),
artista_id INT NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista (artista_id),
FOREIGN KEY (album_id) REFERENCES album (album_id)
);

INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Soul For Us', 1, 1);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Reflections Of Magic', 1, 1);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Dance With Her Own', 1, 1);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Troubles Of My Inner Fire', 1, 2);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Time Fireworks', 1, 2);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Magic Circus', 2, 3);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Honey, So Do I', 2, 3);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ("Sweetie, Let's Go Wild", 2, 3);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('She Knows', 2, 3);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Fantasy For Me', 3, 4);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Celebration Of More', 3, 4);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Rock His Everything', 3, 4);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Home Forever', 3, 4);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Diamond Power', 3, 4);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ("Honey, Let's Be Silly", 3, 4);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Thang Of Thunder', 4, 5);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Words Of Her Life', 4, 5);
INSERT INTO cancoes (cancao, artista_id, album_id) VALUES ('Without My Streets', 4, 5);

CREATE TABLE historico_reproducoes(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
);

INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (1, 1);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (1, 6);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (1, 14);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (1, 16);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (2, 13);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (2, 17);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (2, 2);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (2, 15);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (3, 4);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (3, 16);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (3, 6);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (4, 3);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (4, 18);
INSERT INTO historico_reproducoes (usuario_id, cancao_id) VALUES (4, 11);

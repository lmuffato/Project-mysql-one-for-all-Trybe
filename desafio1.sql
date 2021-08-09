CREATE DATABASE IF NOT EXISTS SpotifyClone; 

CREATE TABLE SpotifyClone.artista(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.artista(artista) VALUES ('Walter Phoenix');
INSERT INTO SpotifyClone.artista(artista) VALUES ('Peter Strong');
INSERT INTO SpotifyClone.artista(artista) VALUES ('Lance Day');
INSERT INTO SpotifyClone.artista(artista) VALUES ('Freedie Shannon');

CREATE TABLE SpotifyClone.album(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(100) NOT NULL,
  artista_id INT NOT NUll,
  FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista(artista_id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.album(album, artista_id) VALUES ('Envious', 1);
INSERT INTO SpotifyClone.album(album, artista_id) VALUES ('Exuberant', 1);
INSERT INTO SpotifyClone.album(album, artista_id) VALUES ('Hallowed Steam', 2);
INSERT INTO SpotifyClone.album(album, artista_id) VALUES ('Incandescent', 3);
INSERT INTO SpotifyClone.album(album, artista_id) VALUES ('Temporary Culture', 4);

CREATE TABLE SpotifyClone.cancao(
  cancao_id INT PRIMARY KEY AUTO_INCREMENT,
  cancao VARCHAR(100) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES SpotifyClone.album(album_id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Soul For Us", 1);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Reflections Of Magic", 1);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Dance With Her Own", 1);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Troubles Of My Inner Fire", 2);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Time Fireworks", 2);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Magic Circus", 3);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Honey, So Do I", 3);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Sweetie, Let's Go Wild", 3);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("She Knows", 3);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Fantasy For Me", 4);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Celebration Of More", 4);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Rock His Everything", 4);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Home Forever", 4);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Diamond Power", 4);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Honey, Let's Be Silly", 4);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Thang Of Thunder", 5);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Words Of Her Life", 5);
INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Without My Streets", 5);

CREATE TABLE SpotifyClone.plano(
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  plano VARCHAR(100) NOT NULL,
  valor_plano DOUBLE NOT NULL
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.plano(plano, valor_plano) VALUES ("gratuito", 0);
INSERT INTO SpotifyClone.plano(plano, valor_plano) VALUES ("familiar", 7.99);
INSERT INTO SpotifyClone.plano(plano, valor_plano) VALUES ("universitÃ¡rio", 5.99);

CREATE TABLE SpotifyClone.usuario(
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  usuario VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES SpotifyClone.plano(plano_id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Thati", 23, 1);
INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Cintia", 35, 2);
INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Bill", 20, 3);
INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Roger", 45, 1);

CREATE TABLE SpotifyClone.seguindo(
  seguindo_id INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista(artista_id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.seguindo(usuario_id, artista_id) VALUES (1, 1);
INSERT INTO SpotifyClone.seguindo(usuario_id, artista_id) VALUES (1, 4);
INSERT INTO SpotifyClone.seguindo(usuario_id, artista_id) VALUES (1, 3);
INSERT INTO SpotifyClone.seguindo(usuario_id, artista_id) VALUES (2, 1);
INSERT INTO SpotifyClone.seguindo(usuario_id, artista_id) VALUES (2, 3);
INSERT INTO SpotifyClone.seguindo(usuario_id, artista_id) VALUES (3, 2);
INSERT INTO SpotifyClone.seguindo(usuario_id, artista_id) VALUES (3, 1);
INSERT INTO SpotifyClone.seguindo(usuario_id, artista_id) VALUES (4, 4);

CREATE TABLE SpotifyClone.historico_reproducao(
  reproducao_id INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario(usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.cancao(cancao_id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (1, 1);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (1, 6);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (1, 14);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (1, 16);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (2, 13);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (2, 17);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (2, 2);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (2, 15);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (3, 4);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (3, 16);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (3, 6);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (4, 3);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (4, 18);
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id) VALUES (4, 11);

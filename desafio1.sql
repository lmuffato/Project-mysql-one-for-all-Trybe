DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE user(
    user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name_user VARCHAR(50) NOT NULL,
    user_age INT NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY plan_id REFERENCES plans(plan_id)
) engine = InnoDB;

CREATE TABLE plans(
    plan_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plan_type VARCHAR(30) NOT NULL,
    plan_price DECIMAL(5,2)
) engine = InnoDB;

CREATE TABLE songs(
    songs_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    songs_name VARCHAR(50) NOT NULL,
    albuns_id INT NOT NULL
    FOREIGN KEY albuns_id REFERENCES albuns(albuns_id)
) engine = InnoDB;

CREATE TABLE albuns(
    albuns_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    albuns_name VARCHAR(50) NOT NULL,
    artist_id INT NOT NULL
    FOREIGN KEY artist_id REFERENCES artists(artists_id)
) engine = InnoDB;

CREATE TABLE artists(
    artist_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE history(
    user_id INT NOT NULL,
    songs_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id, songs_id),
    FOREIGN KEY user_id REFERENCES user(user_id)
    FOREIGN KEY songs_id REFERENCES songs(songs_id)
) engine = InnoDB;

CREATE TABLE artists_follows(
    user_id INT NOT NULL,
    artist_id INT NOT NULL
    CONSTRAINT PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY user_id REFERENCES user(user_id)
    FOREIGN KEY artist_id REFERENCES artists(artist_id)
) engine = InnoDB;

INSERT INTO user (user_id, name_user, user_age)
VALUES
  (1, 'Thati', 23),
  (2, 'Cintia', 35),
  (3, 'Bill', 20),
  (4, 'Roger', 45);

INSERT INTO plans (plan_id, plan_type, plan_price)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);
  
INSERT INTO albuns (albuns_id, albuns_name, artist_id)
VALUES
(1, 'Envious', 1), 
(2, 'Exuberant', 1), 
(3, 'Hallowed Steam', 2), 
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 4);

INSERT INTO artists(artist_id, artist_name)
VALUES 
(1, 'Walter Phoenix'), 
(2, 'Peter Strong'), 
(3, 'Lance Day'), 
(4, 'Freedie Shannon');

INSERT INTO songs (songs_id, songs_name, albuns_id)
VALUES
(1, 'Soul For Us', 1),
(2, 'Reflections Of Magic', 1),
(3, 'Dance With Her Own', 1),
(4, 'Troubles Of My Inner Fire', 2),
(5, 'Time Fireworks', 2),
(6, 'Magic Circus', 3),
(7, 'Honey, So Do I', 3),
(8, "Sweetie, Let's Go Wild", 3),
(9, "She Knows", 3),
(10, 'Fantasy For Me', 4),
(11, 'Celebration Of More', 4),
(12, 'Rock His Everything', 4),
(13, 'Home Forever', 4),
(14, 'Diamond Power', 4artists_follows),
(15, "Honey, Let's Be Silly", 4),
(16, "Thang Of Thunder", 5),
(17, "Words Of Her Life", 5),
(18, "Without My Streets", 5);

INSERT INTO artists_follows(user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO history(user_id, songs_id)
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

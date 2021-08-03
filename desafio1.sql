DROP SCHEMA IF EXISTS SpotifyClone;
CREATE SCHEMA SpotifyClone;

     CREATE TABLE SpotifyClone.plans(
        plan_id INT PRIMARY KEY AUTO_INCREMENT,
        plan_name VARCHAR(50) NOT NULL,
        price DEC NOT NULL
    );
 
 CREATE TABLE SpotifyClone.users(
        user_id INT PRIMARY KEY AUTO_INCREMENT,
        user_name VARCHAR(50) NOT NULL,
        age INT NOT NULL,
        plan_id INT NOT NULL,
        FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plans (plan_id)
    );
    
         CREATE TABLE SpotifyClone.artists(
        artist_id INT PRIMARY KEY AUTO_INCREMENT,
        artist_name VARCHAR(50) NOT NULL
    );
    
             CREATE TABLE SpotifyClone.albums(
        album_id INT PRIMARY KEY AUTO_INCREMENT,
        album_name VARCHAR(50) NOT NULL,
        artist_id INT NOT NULL,
        FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists (artist_id)
    );
    
     CREATE TABLE SpotifyClone.songs(
        song_id INT PRIMARY KEY AUTO_INCREMENT,
        song_name VARCHAR(50) NOT NULL,
        album_id INT NOT NULL,
        FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums (album_id)
    );
    
    
CREATE TABLE SpotifyClone.listened_songs(
    song_id INT NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY (song_id, user_id),
    FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs(song_id),
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id)
);

CREATE TABLE SpotifyClone.followed_artists(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
    FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists(artist_id)
);

INSERT INTO SpotifyClone.plans(plan_name, price) VALUES('gratuito', 0);
INSERT INTO SpotifyClone.plans(plan_name, price) VALUES('familiar', 7.99);
INSERT INTO SpotifyClone.plans(plan_name, price) VALUES('universitário', 5.99);

INSERT INTO SpotifyClone.users(user_name, age, plan_id) VALUES('Thati', 23, 1);
INSERT INTO SpotifyClone.users(user_name, age, plan_id) VALUES('Cintia', 35, 2);
INSERT INTO SpotifyClone.users(user_name, age, plan_id) VALUES('Bill', 20, 3);
INSERT INTO SpotifyClone.users(user_name, age, plan_id) VALUES('Roger', 45, 1);

INSERT INTO SpotifyClone.artists(artist_name) VALUES('Walter Phoenix');
INSERT INTO SpotifyClone.artists(artist_name) VALUES('Peter Strong');
INSERT INTO SpotifyClone.artists(artist_name) VALUES('Lance Day');
INSERT INTO SpotifyClone.artists(artist_name) VALUES('Freedie Shannon');

INSERT INTO SpotifyClone.albums(album_name, artist_id) VALUES('Envious', 1);
INSERT INTO SpotifyClone.albums(album_name, artist_id) VALUES('Exuberant', 1);
INSERT INTO SpotifyClone.albums(album_name, artist_id) VALUES('Hallowed Steam', 2);
INSERT INTO SpotifyClone.albums(album_name, artist_id) VALUES('Incandescent', 3);
INSERT INTO SpotifyClone.albums(album_name, artist_id) VALUES('Temporary Culture', 4);

INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Soul For Us', 1);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Magic Circus', 3);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Diamond Power', 4);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Thang Of Thunder', 5);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Thang Of Thunder', 4);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Words Of Her Life', 5);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Reflections Of Magic', 1);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES("Honey, Let's Be Silly", 4);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Troubles Of My Inner Fire', 2);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Dance With Her Own', 1);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Without My Streets', 5);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Celebration Of More', 3);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Time Fireworks', 2);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Honey, So Do I', 3);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES("Sweetie, Let's Go Wild", 3);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('She Knows', 3);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Fantasy For Me', 3);
INSERT INTO SpotifyClone.songs(song_name, album_id) VALUES('Rock His Everything', 4);

INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(1, 1);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(2, 1);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(3, 1);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(4, 1);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(5, 2);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(6, 2);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(7, 2);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(8, 2);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(9, 3);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(4, 3);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(2, 3);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(10, 4);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(11, 4);
INSERT INTO SpotifyClone.listened_songs(song_id, user_id) VALUES(12, 4);

INSERT INTO SpotifyClone.followed_artists(user_id, artist_id) VALUES(1, 1);
INSERT INTO SpotifyClone.followed_artists(user_id, artist_id) VALUES(1, 4);
INSERT INTO SpotifyClone.followed_artists(user_id, artist_id) VALUES(1, 3);
INSERT INTO SpotifyClone.followed_artists(user_id, artist_id) VALUES(2, 1);
INSERT INTO SpotifyClone.followed_artists(user_id, artist_id) VALUES(2, 3);
INSERT INTO SpotifyClone.followed_artists(user_id, artist_id) VALUES(3, 2);
INSERT INTO SpotifyClone.followed_artists(user_id, artist_id) VALUES(3, 1);
INSERT INTO SpotifyClone.followed_artists(user_id, artist_id) VALUES(4, 4);

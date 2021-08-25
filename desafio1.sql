drop database if exists SpotifyClone;
create database SpotifyClone;
use SpotifyClone;
/* tabela encorporada pelo colega Guilherme de Prais T10-A
 diferença dada por minha tabela album receber música, isso faria aumentar a quantidade de linhas.*/

create table paymeds (
  paymed_id int primary key auto_increment,
  paymed varchar(20) not null,
  price decimal(3,2)
) engine = InnoDB;
insert into paymeds(paymed, price)
values ('gratuito', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99);

create table users (
  user_id int primary key auto_increment,
  user varchar(20) not null,
  age int,
  paymed_id int,
  foreign key (paymed_id) references paymeds (paymed_id)
) engine  InnoDB;
insert into users (user, age, paymed_id)
values ("Thati", 23, 1),
  ("Cintia", 35, 2),
  ("Bill", 20, 3),
  ("Roger", 45, 1);

create table artists (
  artist_id int primary key auto_increment,
  artist varchar(50)
) engine  InnoDB;
insert into artists (artist)
values ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");

create table albuns (
  album_id int primary key auto_increment,
  album varchar(50),
  artist_id int,
  foreign key(artist_id) references artists(artist_id)
) engine = InnoDB;
insert into albuns (album, artist_id)
values ("Envious", 1),
  ("Exuberant", 1),
  ("Hallowed Steam", 2),
  ("Incandescent", 3),
  ("Temporary Culture", 4);

create table songs (
  song_id int primary key auto_increment,
  song varchar(50),
  album_id int,
  foreign key(album_id) references albuns(album_id)
) engine = InnoDB;
insert into songs (song, album_id)
values ("Soul For Us", 1),
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

create table following_artists (
  user_id int not null,
  artist_id int not null,
  constraint primary key (user_id, artist_id),
  foreign key (user_id) references users(user_id),
  foreign key (artist_id) references artists(artist_id)
) engine = InnoDB;
insert into following_artists (user_id, artist_id)
values (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

create table history (
  user_id int not null,
  song_id int not null,
  constraint primary key (user_id, song_id),
  foreign key (user_id) references users(user_id),
  foreign key (song_id) references songs(song_id)
) engine = InnoDB;
insert into history (user_id, song_id)
values (1, 1),
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

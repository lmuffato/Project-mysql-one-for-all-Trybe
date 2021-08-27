create view perfil_artistas as
select a.artist artista,
al.album album,
count(f.user_id) seguidores
from following_artists f
join artists a on f.artist_id = a.artist_id
join albuns al on f.artist_id = al.artist_id
group by album, artista order by seguidores desc, artista, album;

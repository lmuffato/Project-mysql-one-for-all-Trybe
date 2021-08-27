create view perfil_artistas as
select a.artist artista,
al.album album,
count(u.user_id) seguidores
from following_artists f
join artists a on f.artist_id = a.artist_id
join albuns al on f.artist_id = al.artist_id
join users u on f.user_id = u.user_id
group by album order by seguidores desc, artista;

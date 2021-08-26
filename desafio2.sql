create view estatisticas_musicais as
select count(distinct s.song_id) cancoes,
	count(distinct a.artist_id) artistas,
    count(distinct al.album_id) albuns
from SpotifyClone.songs s, SpotifyClone.artists a, SpotifyClone.albuns al;

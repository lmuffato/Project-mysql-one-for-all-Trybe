USE SpotifyClone;
CREATE View estatisticas_musicais as (
select
(select count(songs_id) from SpotifyClone.songs) as 'cancoes',
(select count(artist_id) from SpotifyClone.artists) as 'artistas',
(select count(albuns_id) from SpotifyClone.albuns) as 'albuns'); 

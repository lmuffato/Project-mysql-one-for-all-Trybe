CREATE VIEW estatisticas_musicais AS 
SELECT
(SELECT COUNT(music_name) FROM SpotifyClone.musics) AS 'cancoes',
(SELECT COUNT(artist_name) FROM SpotifyClone.artists) AS 'artistas',
(SELECT COUNT(album_name) FROM SpotifyClone.albuns) AS 'albuns';

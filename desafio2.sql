CREATE VIEW estatisticas_musicais AS
SELECT COUNT(song_name) AS cancoes,
(SELECT COUNT(artist_name) FROM artists) AS artistas,
(SELECT COUNT(album_name) FROM albums) AS albuns
FROM songs;

CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT songs.song_id) AS cancoes, COUNT(DISTINCT artist.name) AS artistas, COUNT(DISTINCT album.album_id) AS albuns
FROM SpotifyClone.song AS songs
INNER JOIN SpotifyClone.artist AS artist
ON songs.artist_id = artist.artist_id
INNER JOIN SpotifyClone.album AS album
ON artist.artist_id = album.artist_id;

CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(song_id) AS cancoes,
COUNT(DISTINCT a.artist_id) AS artistas,
COUNT(DISTINCT a.album_id) AS albuns
FROM SpotifyClone.ALBUMS AS a
INNER JOIN SpotifyClone.SONGS AS s
ON a.album_id = s.album_id;

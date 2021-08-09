CREATE VIEW estatisticas_musicais AS
SELECT COUNT(single_id) AS cancoes,
(SELECT COUNT(artist_id) FROM SpotifyClone.artists) AS artistas,
(SELECT COUNT(album_id) FROM SpotifyClone.albuns) AS albuns
FROM SpotifyClone.singles;

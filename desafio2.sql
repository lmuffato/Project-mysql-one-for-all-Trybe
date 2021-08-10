-- CREATE VIEW estatisticas_musicais AS
SELECT DISTINCT(COUNT(s.`name`)) AS cancoes, COUNT(a.artist_id) AS artistas FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.artist AS a;

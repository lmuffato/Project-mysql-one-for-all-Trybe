CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(*)
FROM SpotifyClone.cancao) AS `cancoes`,
(SELECT COUNT(*)
FROM SpotifyClone.artista) AS `artistas`,
COUNT(*) AS `albuns`
FROM SpotifyClone.album;

SELECT * FROM estatisticas_musicais;

CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(*) FROM SpotifyClone.Cancoes) AS `cancoes`,
(SELECT COUNT(*) FROM SpotifyClone.Artistas) AS `artistas`,
COUNT(*) AS `albuns`
FROM SpotifyClone.Albuns;

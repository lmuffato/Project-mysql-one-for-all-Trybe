CREATE VIEW estatisticas_musicais AS 
SELECT
(SELECT COUNT(*) FROM SpotifyClone.songs) AS `cancoes`,
(SELECT COUNT(*) FROM SpotifyClone.artists) AS `artists`,
(SELECT COUNT(*) FROM SpotifyClone.albums) AS `albuns`;
CREATE VIEW SpotifyClone.estatisticas_musicais AS
SELECT COUNT(1) AS `cancoes`, 
(SELECT COUNT(1)
FROM SpotifyClone.Artista)  AS `artistas`,
(SELECT COUNT(1)
FROM SpotifyClone.Album)  AS `albuns`
FROM SpotifyClone.Cancao;

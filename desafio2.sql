CREATE VIEW estatisticas_musicais AS (
SELECT
(SELECT COUNT(*)FROM SpotifyClone.Cancao) AS 'cancoes',
(SELECT COUNT(*)FROM SpotifyClone.Artista) AS 'artistas',
(SELECT COUNT(*)FROM SpotifyClone.Album) AS 'albuns'
);

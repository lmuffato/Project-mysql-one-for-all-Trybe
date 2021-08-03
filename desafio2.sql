CREATE VIEW estatisticas_musicais AS
SELECT COUNT(*) AS 'cancoes',
(SELECT COUNT(*) FROM SpotifyClone.artists) AS 'artistas',
(SELECT COUNT(*) FROM SpotifyClone.albums) AS 'albums'
FROM SpotifyClone.songs;

CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT COUNT(*) FROM SpotifyClone.cancao) AS 'cancoes',
(SELECT COUNT(*) FROM SpotifyClone.artista) AS 'artistas',
(SELECT COUNT(*) FROM SpotifyClone.album) AS 'albuns';

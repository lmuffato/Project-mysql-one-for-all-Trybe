CREATE VIEW estatisticas_musicais AS
SELECT 
(
SELECT COUNT(*) 
FROM SpotifyClone.Musics) AS 'cancoes',
(
SELECT COUNT(*) 
FROM SpotifyClone.Artists) AS 'artistas',
(
SELECT COUNT(*) 
FROM SpotifyClone.Albums) AS 'albuns';

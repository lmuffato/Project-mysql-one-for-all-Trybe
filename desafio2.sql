CREATE VIEW SpotifyClone.estatisticas_musicais AS
SELECT
(SELECT  COUNT(*) FROM MUSIC) AS 'cancoes',
(SELECT  COUNT(*) FROM ARTIST) AS 'artistas',
(SELECT  COUNT(*) FROM ALBUM) AS 'albuns';

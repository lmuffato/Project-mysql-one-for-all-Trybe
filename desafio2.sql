CREATE VIEW estatisticas_musicais AS 
SELECT
(SELECT  COUNT(SongID) FROM SONGS) AS 'cancoes',
(SELECT  COUNT(SingerID) FROM SINGERS) AS 'artistas',
(SELECT  COUNT(AlbumID) FROM ALBUNS) AS 'albuns';

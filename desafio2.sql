CREATE VIEW estatisticas_musicais AS
SELECT 
  (SELECT  COUNT(Song_id) FROM Songs) AS 'cancoes',
  (SELECT  COUNT(Artist_id) FROM Artist) AS 'artistas',
  (SELECT   COUNT(Album_id) FROM Album) AS 'albuns';

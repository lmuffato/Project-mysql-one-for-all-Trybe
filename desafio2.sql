CREATE OR REPLACE VIEW estatisticas_musicais AS 
  SELECT COUNT(id) AS cancoes,
    (SELECT COUNT(id) FROM artist) AS artistas,
    (SELECT COUNT(id) FROM album) AS albuns
  FROM song;

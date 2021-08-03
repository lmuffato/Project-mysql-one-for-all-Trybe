CREATE VIEW estatisticas_musicais AS 
  SELECT (
    SELECT COUNT(*) 
    FROM music
    ) as 'cancoes',
    (
    SELECT COUNT(*)
    FROM artist
    ) AS 'artistas',
    (
    SELECT COUNT(*)
    FROM album
    ) as 'albuns';

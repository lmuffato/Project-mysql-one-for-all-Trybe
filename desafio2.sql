CREATE VIEW estatisticas_musicais AS
SELECT 
  COUNT(*) AS cancoes,
  (SELECT COUNT(*)  FROM SpotifyClone.Artists) AS artistas,
  (SELECT COUNT(*) FROM SpotifyClone.Albums)  AS albuns
FROM SpotifyClone.Songs;

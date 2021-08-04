DROP VIEW IF EXISTS estatisticas_musicais;
CREATE VIEW estatisticas_musicais AS(
SELECT 
  (SELECT COUNT(*) FROM SpotifyClone.Songs) as cancoes,
  (SELECT COUNT(*) FROM SpotifyClone.Artists) as artistas,
  (SELECT COUNT(*) FROM SpotifyClone.Albums) as albuns
);

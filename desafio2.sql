DROP VIEW IF EXISTS estatisticas_musicais ;
USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT
  (SELECT COUNT(*) FROM songs) AS `cancoes`,
  (SELECT COUNT(*) FROM artists) AS `artistas`,
  (SELECT COUNT(*) FROM albums) AS `albuns`;

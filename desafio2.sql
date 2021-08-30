CREATE VIEW estatisticas_musicais AS
SELECT
  (SELECT COUNT(cancao_id) FROM cancoes c) AS `cancoes`,
  (SELECT COUNT(artista_id) FROM artistas a) AS `artistas`,
  (SELECT COUNT(album_id) FROM albuns a2) AS `albuns`;

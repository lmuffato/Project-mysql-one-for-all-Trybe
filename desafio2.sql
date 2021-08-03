CREATE VIEW estatisticas_musicais AS
SELECT
  COUNT(DISTINCT c.cancao) cancoes,
  COUNT(DISTINCT ar.artista) artistas,
  COUNT(DISTINCT al.album) albuns
FROM
  spotifyclone.cancoes c
  INNER JOIN spotifyclone.albums al ON c.album_id = al.album_id
  INNER JOIN spotifyclone.artistas ar ON al.artista_id - ar.artista_id;

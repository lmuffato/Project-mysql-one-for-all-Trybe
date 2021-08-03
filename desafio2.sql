CREATE VIEW SpotifyClone.estatisticas_musicais AS
SELECT
  COUNT(DISTINCT c.cancao) cancoes,
  COUNT(DISTINCT ar.artista) artistas,
  COUNT(DISTINCT al.album) albuns
FROM
  SpotifyClone.ARTISTAS ar
  INNER JOIN SpotifyClone.ALBUMS al ON ar.artista_id = al.artista_id
  INNER JOIN SpotifyClone.CANCOES c ON c.album_id = al.album_id;

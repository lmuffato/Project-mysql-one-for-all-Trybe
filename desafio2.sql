CREATE VIEW estatisticas_musicais AS
  SELECT COUNT(cancao_id) AS cancoes,
(
  SELECT COUNT(artista_id) AS artistas
  FROM SpotifyClone.artistas
) AS artistas,
(
  SELECT COUNT(album_id) AS albuns
  FROM SpotifyClone.albuns
) AS albuns
FROM SpotifyClone.cancoes;

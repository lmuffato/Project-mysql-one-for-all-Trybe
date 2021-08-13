-- challenge 7;

CREATE VIEW perfil_artistas AS
  SELECT
  artista,
  album,
  COUNT(usuario_id) AS seguidores
  FROM SpotifyClone.artistas AS artistas
  INNER JOIN SpotifyClone.albuns AS albuns
  ON albuns.artista_id=artistas.artista_id
  INNER JOIN SpotifyClone.artistas_seguidos AS seguidos
  ON artistas.artista_id=seguidos.artista_id
  GROUP BY artista, album
  ORDER BY seguidores DESC, artista, album;

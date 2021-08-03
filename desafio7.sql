CREATE VIEW perfil_artistas AS
  SELECT
    art.nome_artista AS artista,
    alb.nome_album AS album,
    COUNT(alb.artista_id) AS seguidores
  FROM SpotifyClone.artista AS art
  INNER JOIN SpotifyClone.album AS alb ON art.artista_id = alb.artista_id
  INNER JOIN SpotifyClone.seguindo_artistas AS sa ON art.artista_id = sa.artista_id
  GROUP BY art.nome_artista, alb.nome_album
  ORDER BY seguidores DESC, artista ASC, album ASC;

CREATE VIEW perfil_artistas AS
  SELECT
    AR.artista artista,
    AL.album album,
    COUNT(US.usuario_id) seguidores
  FROM
    SpotifyClone.ARTISTAS AR
      INNER JOIN
    SpotifyClone.USUARIOS_SEGUIDAS US ON US.artista_id = AR.artista_id
      INNER JOIN
    SpotifyClone.ALBUMS AL ON AR.artista_id = AL.artista_id
  GROUP BY 
    AR.artista,
    AL.album
  ORDER BY 
    seguidores DESC,
    artista,
    album;

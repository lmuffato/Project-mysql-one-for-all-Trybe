CREATE VIEW perfil_artistas AS
  SELECT
    AR.artista_nome AS `artista`,
    AL.nome_album AS `album`,
    COUNT(SA.usuario_id) AS `seguidores`
  FROM
    SpotifyClone.ARTISTA AS AR
      INNER JOIN
    SpotifyClone.SEGUINDO_ARTISTA AS SA ON SA.artista_id = AR.artista_id
      INNER JOIN
    SpotifyClone.ALBUM AS AL ON AR.artista_id = AL.artista_id
  GROUP BY 
    AR.artista_nome,
    AL.nome_album
  ORDER BY 
    `seguidores` DESC, `artista`, `album`;

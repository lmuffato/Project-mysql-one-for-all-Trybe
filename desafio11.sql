CREATE VIEW cancoes_premium AS
  SELECT
    c.cancao_title AS 'nome',
    COUNT(lr.cancao_id) AS 'reproducoes'
  FROM
    SpotifyClone.cancao c
  INNER JOIN
    SpotifyClone.listaReproducao lr ON c.cancao_id = lr.cancao_id
  INNER JOIN
    SpotifyClone.usuario u ON u.usuario_id = lr.usuario_id
  INNER JOIN
    SpotifyClone.plano p ON p.plano_id = u.plano_id
  WHERE p.plano_id IN (2, 3)
  GROUP BY 1
  ORDER BY 1;

CREATE VIEW top_2_hits_do_momento AS
  SELECT
    c.cancao_title AS 'cancao',
    COUNT(lr.usuario_id) AS 'reproducoes'
  FROM
    SpotifyClone.cancao c
  INNER JOIN
    SpotifyClone.listaReproducao lr ON c.cancao_id = lr.cancao_id
  GROUP BY 1
  ORDER BY 2 DESC, 1
  LIMIT 2;

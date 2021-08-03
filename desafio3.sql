CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    u.usuario_name AS 'usuario',
    c.cancao_title AS 'nome'
  FROM
    SpotifyClone.usuario u
  INNER JOIN
    SpotifyClone.listaReproducao lr ON lr.usuario_id = u.usuario_id
  INNER JOIN
    SpotifyClone.cancao c ON lr.cancao_id = c.cancao_id
  ORDER BY 1, 2;

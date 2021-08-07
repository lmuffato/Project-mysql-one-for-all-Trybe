CREATE VIEW cancoes_premium AS
SELECT
  c.cancao AS `nome`,
  COUNT(h.cancao_id) AS `reproducoes`
  FROM SpotifyClone.cancoes AS c
  INNER JOIN SpotifyClone.usuarios AS u
  INNER JOIN SpotifyClone.historico_reproducoes AS h ON h.cancao_id = c.cancao_id AND u.plano_id IN(2, 3) AND h.usuario_id = u.usuario_id
  GROUP BY `nome`
  ORDER BY `nome`;

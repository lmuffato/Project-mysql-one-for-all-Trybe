CREATE VIEW cancoes_premium AS
  SELECT c.nome_cancao AS nome, COUNT(*) AS reproducoes
  FROM SpotifyClone.cancoes AS c
  INNER JOIN SpotifyClone.historico_reproducoes AS hr ON hr.cancao_id = c.cancao_id
  INNER JOIN SpotifyClone.usuario AS u ON u.usuario_id = hr.usuario_id
  INNER JOIN SpotifyClone.plano AS p ON p.plano_id = u.plano_id
  WHERE p.plano_id IN (2 , 3)
  GROUP BY c.nome_cancao
  ORDER BY c.nome_cancao;

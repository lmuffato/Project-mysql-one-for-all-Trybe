CREATE VIEW cancoes_premium AS (
  SELECT c.cancao_nome AS nome,
  COUNT(hr.usuario_id) AS reproducoes
  FROM SpotifyClone.cancao AS c
  INNER JOIN 
  SpotifyClone.usuario AS u
  INNER JOIN 
  SpotifyClone.historico_reproducao AS hr
  ON hr.usuario_id = u.usuario_id AND hr.cancao_id = c.cancao_id AND u.plano_id IN(2,3)
  GROUP BY c.cancao_nome
  ORDER BY `nome` ASC
);
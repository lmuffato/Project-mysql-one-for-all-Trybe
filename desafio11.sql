CREATE VIEW cancoes_premium AS
SELECT
  c.nome AS nome,
  COUNT(u.usuario_id) AS reproducoes
FROM
  SpotifyClone.historico AS h
  INNER JOIN SpotifyClone.usuarios AS u ON h.usuario_id = u.usuario_id
  AND u.plano_id IN (2, 3)
  INNER JOIN SpotifyClone.cancoes AS c ON h.cancao_id = c.cancao_id
GROUP BY
  c.nome
ORDER BY
  nome;

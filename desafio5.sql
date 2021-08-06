CREATE VIEW top_2_hits_do_momento AS
SELECT
  c.nome AS cancao,
  COUNT(h.usuario_id) AS reproducoes
FROM
  SpotifyClone.historico AS h
  INNER JOIN SpotifyClone.cancoes AS c ON h.cancao_id = c.cancao_id
GROUP BY
  c.nome
ORDER BY
  reproducoes DESC,
  cancao
LIMIT
  2;

CREATE VIEW top_2_hits_do_momento AS
SELECT
  c.cancao_title AS cancao,
  COUNT(*) AS reproducoes
FROM
  SpotifyClone.historico_de_reproducoes h
  INNER JOIN SpotifyClone.cancoes c ON c.cancao_id = h.cancao_id
GROUP BY
  c.cancao_id
ORDER BY
  reproducoes DESC, cancao ASC
LIMIT
  2;

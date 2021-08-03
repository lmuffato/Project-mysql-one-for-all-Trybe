CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT
  c.cancao cancao,
  COUNT(ur.cancao_id) reproducoes
FROM
  SpotifyClone.CANCOES c
  INNER JOIN SpotifyClone.USUARIOS_REPRODUCOES ur ON c.cancao_id = ur.cancao_id
  INNER JOIN SpotifyClone.USUARIOS u ON u.usuario_id = ur.usuario_id
GROUP BY
  ur.cancao_id
ORDER BY
  reproducoes DESC,
  cancao
LIMIT
  2;

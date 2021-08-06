CREATE VIEW SpotifyClone.cancoes_premium AS
SELECT
  c.cancao nome,
  COUNT(*) reproducoes
FROM
  SpotifyClone.CANCOES c
  INNER JOIN SpotifyClone.USUARIOS_REPRODUCOES ur ON c.cancao_id = ur.cancao_id
  INNER JOIN SpotifyClone.USUARIOS u ON u.usuario_id = ur.usuario_id
  INNER JOIN SpotifyClone.PLANOS p ON p.plano_id = u.plano_id
WHERE
  p.plano IN ('familiar', 'universitário')
GROUP BY
  nome
ORDER BY
  nome;

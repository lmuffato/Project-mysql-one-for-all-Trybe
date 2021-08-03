CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT
  u.usuario usuario,
  c.cancao nome
FROM
  SpotifyClone.USUARIOS u
  INNER JOIN SpotifyClone.USUARIOS_REPRODUCOES ur ON u.usuario_id = ur.usuario_id
  INNER JOIN SpotifyClone.CANCOES c ON c.cancao_id = ur.cancao_id
ORDER BY
  usuario,
  nome;

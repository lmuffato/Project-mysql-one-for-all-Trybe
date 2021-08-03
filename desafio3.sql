CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT
  u.usuario usuario,
  c.cancao nome
FROM
  spotifyclone.usuarios u
  INNER JOIN spotifyclone.usuarios_reproducoes ur ON u.usuario_id = ur.usuario_id
  INNER JOIN spotifyclone.cancoes c ON ur.cancao_id = c.cancao_id
ORDER BY
  usuario,
  nome;

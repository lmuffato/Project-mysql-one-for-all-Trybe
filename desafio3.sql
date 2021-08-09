CREATE VIEW historico_reproducao_usuarios AS
SELECT
  u.usuario_name AS usuario,
  c.cancao_title AS nome
FROM
  SpotifyClone.historico_de_reproducoes h
  INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = h.usuario_id
  INNER JOIN SpotifyClone.cancoes c ON c.cancao_id = h.cancao_id
  ORDER BY usuario, nome;

-- SELECT * FROM SpotifyClone.Historico_reproduçoes;
-- SELECT * FROM SpotifyClone.Cançoes;
-- SELECT * FROM SpotifyClone.Usuario;

-- SELECT USU.nome_usuario AS `usuario`,
-- CAN.nome_cançao AS `nome`
-- FROM SpotifyClone.Historico_reproduçoes AS HIS
-- INNER JOIN SpotifyClone.Usuario AS USU ON USU.usuario_ID = HIS.usuario_ID
-- INNER JOIN SpotifyClone.Cançoes AS CAN ON CAN.canção_ID = HIS.canção_ID
-- ORDER BY `usuario`, `nome`;

-- USE SpotifyClone;

CREATE VIEW historico_reproducao_usuarios AS
  SELECT USU.nome_usuario AS `usuario`,
  CAN.nome_cançao AS `nome`
  FROM SpotifyClone.Historico_reproduçoes AS HIS
  INNER JOIN SpotifyClone.Usuario AS USU ON USU.usuario_ID = HIS.usuario_ID
  INNER JOIN SpotifyClone.Cançoes AS CAN ON CAN.canção_ID = HIS.canção_ID
  ORDER BY `usuario`, `nome`;

-- DROP VIEW historico_reproducao_usuarios;

-- SELECT * FROM historico_reproducao_usuarios;

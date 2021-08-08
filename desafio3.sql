CREATE VIEW historico_reproducao_usuarios AS
  SELECT 
    U.nome_usuario AS `usuario`,
    C.nome_cancao AS `nome`
  FROM 
    SpotifyClone.USUARIO AS U
      INNER JOIN
    SpotifyClone.HISTORICO_REPRODUCAO AS HR ON U.usuario_id = HR.usuario_id
      INNER JOIN
    SpotifyClone.CANCAO AS C ON C.cancao_id = HR.cancao_id
  ORDER BY `usuario`, `nome`;


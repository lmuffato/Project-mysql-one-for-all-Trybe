CREATE VIEW cancoes_premium AS
  SELECT
    C.nome_cancao AS `nome`,
    COUNT(*) AS `reproducoes`
  FROM 
    SpotifyClone.CANCAO AS C
      INNER JOIN
    SpotifyClone.HISTORICO_REPRODUCAO AS HR ON C.cancao_id = HR.cancao_id
      INNER JOIN
    SpotifyClone.USUARIO AS U ON U.usuario_id = HR.usuario_id
      INNER JOIN
    SpotifyClone.PLANO AS P ON P.plano_id = U.plano_id
  WHERE P.plano IN ('familiar', 'universitário')
GROUP BY `nome`
ORDER BY `nome`;

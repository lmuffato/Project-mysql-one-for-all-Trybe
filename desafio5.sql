CREATE VIEW top_2_hits_do_momento AS
  SELECT
    C.nome_cancao AS `cancao`,
    COUNT(HR.cancao_id) AS `reproducoes`
  FROM
    SpotifyClone.CANCAO AS C
      INNER JOIN
    SpotifyClone.HISTORICO_REPRODUCAO AS HR ON C.cancao_id = HR.cancao_id
      INNER JOIN
    SpotifyClone.USUARIO AS U ON U.usuario_id = HR.usuario_id
  GROUP BY HR.cancao_id
  ORDER BY `reproducoes` DESC, `cancao`
  LIMIT 2;

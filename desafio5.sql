CREATE VIEW top_2_hits_do_momento AS
  SELECT
    C.cancao cancao,
    COUNT(UR.cancao_id) reproducoes
  FROM
    SpotifyClone.CANCOES C
      INNER JOIN
    SpotifyClone.USUARIOS_REPRODUCOES UR ON C.cancao_id = UR.cancao_id
      INNER JOIN
    SpotifyClone.USUARIOS U ON U.usuario_id = UR.usuario_id
  GROUP BY UR.cancao_id
  ORDER BY reproducoes DESC, cancao
  LIMIT 2;

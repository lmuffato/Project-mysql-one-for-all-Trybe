CREATE VIEW cancoes_premium AS
  SELECT
    C.cancao nome,
    COUNT(*) reproducoes
  FROM 
    SpotifyClone.CANCOES C
      INNER JOIN
    SpotifyClone.USUARIOS_REPRODUCOES UR ON C.cancao_id = UR.cancao_id
      INNER JOIN
    SpotifyClone.USUARIOS U ON U.usuario_id = UR.usuario_id
      INNER JOIN
    SpotifyClone.PLANOS P ON P.plano_id = U.plano_id
  WHERE P.plano IN ('familiar', 'universitário')
GROUP BY nome
ORDER BY nome;

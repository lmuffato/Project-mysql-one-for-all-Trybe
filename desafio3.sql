CREATE VIEW historico_reproducao_usuarios AS
  SELECT 
    U.usuario usuario,
    C.cancao nome
  FROM 
    SpotifyClone.USUARIOS U
      INNER JOIN
    SpotifyClone.USUARIOS_REPRODUCOES UR ON U.usuario_id = UR.usuario_id
      INNER JOIN
    SpotifyClone.CANCOES C ON C.cancao_id = UR.cancao_id
  ORDER BY usuario, nome;

-- DESAFIO 3 Crie uma VIEW chamada historico_reproducao_usuarios. Essa VIEW deverá ter apenas duas colunas:

CREATE VIEW historico_reproducao_usuarios (`usuario`, `nome`) AS

  SELECT
    U.usuario,
    C.cancao_nome
  FROM SpotifyClone.USUARIO U
  INNER JOIN SpotifyClone.REPRODUCAO R
  ON U.usuario_id = R.usuario_id
  INNER JOIN SpotifyClone.CANCAO C
  ON C.cancao_id = R.cancao_id
  ORDER BY U.usuario, C.cancao_nome;

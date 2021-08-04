-- DESAFIO 11: Crie uma VIEW chamada cancoes_premium que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano familiar ou universitário, de acordo com os detalhes a seguir:

CREATE VIEW cancoes_premium(`nome`, `reproducoes`) AS

  SELECT
    C.cancao_nome,
    COUNT(R.cancao_id)
  FROM SpotifyClone.CANCAO C
  INNER JOIN SpotifyClone.REPRODUCAO R
  ON R.cancao_id = C.cancao_id
  INNER JOIN SpotifyClone.USUARIO U
  ON U.usuario_id = R.usuario_id
  INNER JOIN SpotifyClone.PLANO P
  ON P.plano_id = U.plano_id
  WHERE P.plano = 'familiar'
  OR P.plano = 'universitário'
  GROUP BY C.cancao_nome
  ORDER BY C.cancao_nome;

-- DESAFIO 5: Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma VIEW chamada top_2_hits_do_momento que possua duas colunas:

CREATE VIEW top_2_hits_do_momento (`cancao`, `reproducoes`) AS

  SELECT
    C.cancao_nome,
    COUNT(R.usuario_id)
  FROM SpotifyClone.CANCAO C
  INNER JOIN SpotifyClone.REPRODUCAO R
  ON R.cancao_id = C.cancao_id
  GROUP BY 1
  ORDER BY 2 DESC
  LIMIT 2;

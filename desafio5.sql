CREATE VIEW top_2_hits_do_momento AS
  SELECT c.nome_cancao AS cancao, COUNT(*) AS reproducoes
  FROM SpotifyClone.cancoes AS c
  INNER JOIN SpotifyClone.historico_reproducoes AS hr ON c.cancao_id = hr.cancao_id
  GROUP BY c.nome_cancao
  ORDER BY reproducoes DESC, cancao ASC
  LIMIT 2;

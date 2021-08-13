-- challenge 5;

CREATE VIEW top_2_hits_do_momento AS
  SELECT cancao, COUNT(usuario_id) AS reproducoes FROM SpotifyClone.cancoes AS cancoes
  INNER JOIN SpotifyClone.historico_reproducoes AS historico
  ON cancoes.cancao_id=historico.cancao_id
  GROUP BY cancao
  ORDER BY reproducoes DESC, cancao
  LIMIT 2;

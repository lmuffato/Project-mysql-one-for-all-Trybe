CREATE VIEW top_2_hits_do_momento AS
SELECT t1.cancao AS cancao,
COUNT(t3.usuario) AS reproducoes FROM SpotifyClone.cancoes AS t1
INNER JOIN SpotifyClone.historicoDeReproducoes AS t2
INNER JOIN SpotifyClone.usuarios AS t3
ON t1.cancao_id = t2.cancao_id AND t3.usuario_id = t2.usuario_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;

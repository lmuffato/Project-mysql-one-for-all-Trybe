CREATE VIEW top_2_hits_do_momento AS
SELECT t1.musica AS cancao,
COUNT(t2.musica_id) AS reproducoes
FROM musicas AS t1
INNER JOIN historico AS t2 
ON
t1.musica_id = t2.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;

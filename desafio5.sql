CREATE VIEW top_2_hits_do_momento AS
SELECT cancoes.cancao, COUNT(historico_reproducoes.usuario_id) AS reproducoes
FROM 
SpotifyClone.historico_reproducoes AS historico_reproducoes
INNER JOIN
SpotifyClone.cancoes AS cancoes
ON historico_reproducoes.cancao_id = cancoes.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;

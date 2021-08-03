CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica AS cancao, COUNT(r.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_reproducao r ON m.musica_id = r.musica_id
GROUP BY 1
ORDER BY 2 DESC , 1
LIMIT 2;

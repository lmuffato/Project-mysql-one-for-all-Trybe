CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS cancao,
COUNT (h.reproducao_id) AS reproducoes
FROM SpotifyClone.cancoes as c
JOIN SpotifyClone.historico as h
ON c.cancao_id = h.cancao_id
GROUP BY c.cancao_id
ORDER BY 2 DESC, 1
LIMIT 2;

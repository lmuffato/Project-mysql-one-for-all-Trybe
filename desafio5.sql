CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao, COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.historico_reproducao AS h
JOIN SpotifyClone.cancao AS c
ON h.cancao_id = c.cancao_id
GROUP BY h.cancao_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;

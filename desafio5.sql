CREATE VIEW top_2_hits_do_momento AS
SELECT Song_name AS cancao,
COUNT(h.Song_id) AS reproducoes
FROM Songs AS s
INNER JOIN History AS h
ON s.Song_id = h.Song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;

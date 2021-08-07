CREATE VIEW top_2_hits_do_momento AS
SELECT c.song AS cancao, COUNT(r.history_id) AS reproducoes
FROM SpotifyClone.history AS r
INNER JOIN SpotifyClone.songs AS c ON r.history_id = c.history_id
GROUP BY c.song ORDER BY 2 DESC, 1 ASC LIMIT 2;

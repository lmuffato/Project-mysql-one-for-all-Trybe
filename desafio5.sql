CREATE VIEW top_2_hits_do_momento AS (
SELECT
s.name AS `cancao`,
COUNT(h.user_id) AS `reproducoes`
FROM SpotifyClone.singles AS s
INNER JOIN SpotifyClone.history as h
ON s.single_id = h.single_id
GROUP BY s.name
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2
);

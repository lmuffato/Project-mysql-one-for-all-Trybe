CREATE VIEW `top_2_hits_do_momento` AS
SELECT s.song_name AS `cancao`, COUNT(*) AS `reproducoes`
FROM SpotifyClone.songs as s
INNER JOIN SpotifyClone.played as p
ON s.song_id = p.song_id 
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC LIMIT 2;

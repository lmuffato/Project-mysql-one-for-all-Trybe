CREATE VIEW top_2_hits_do_momento AS (
SELECT
s.song AS 'cancao',
COUNT(jh.user_id) AS 'reproducoes'
FROM SpotifyClone.just_heard AS jh
JOIN SpotifyClone.songs AS s
ON s.song_id = jh.song_id
GROUP BY jh.song_id
ORDER BY `reproducoes` DESC, `cancao` ASC LIMIT 2
);

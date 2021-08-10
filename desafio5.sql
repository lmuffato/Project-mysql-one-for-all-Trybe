CREATE VIEW top_2_hits_do_momento AS (
SELECT s.song_name  AS 'cancao',
COUNT(uph.user_id) AS 'reproducoes'
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.user_play_history AS uph
INNER JOIN SpotifyClone.users as u
ON uph.user_id = u.user_id AND s.song_id = uph.song_id
GROUP BY s.song_id
HAVING COUNT(uph.user_id) > 1
ORDER BY COUNT(uph.user_id) DESC, s.song_name ASC
);


CREATE VIEW top_2_hits_do_momento AS (
SELECT
s.song_name AS 'cancao',
COUNT(h.song_id) AS 'seguidores'
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history_user AS h
ON s.song_id = h.song_id
GROUP BY h.song_id
ORDER BY COUNT(h.song_id) DESC, s.song_name ASC
LIMIT 2
);

-- SELECT song_id, COUNT(song_id) FROM SpotifyClone.history_user
-- GROUP BY song_id

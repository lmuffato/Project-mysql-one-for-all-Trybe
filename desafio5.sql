CREATE VIEW top_2_hits_do_momento AS
SELECT
(SELECT song_name FROM songs WHERE song_id = uh.song_id) AS cancoes,
COUNT((SELECT song_id FROM songs WHERE song_id = uh.song_id)) AS reproducoes
FROM users_history AS uh
GROUP BY cancoes
ORDER BY reproducoes DESC, cancoes LIMIT 2;

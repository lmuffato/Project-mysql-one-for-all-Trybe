CREATE VIEW top_2_hits_do_momento AS
SELECT
(SELECT song_name FROM songs WHERE song_id = uh.song_id) AS cancao,
COUNT((SELECT song_id FROM songs WHERE song_id = uh.song_id)) AS reproducoes
FROM users_history AS uh
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;

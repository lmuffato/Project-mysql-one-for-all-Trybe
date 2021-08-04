CREATE VIEW top_2_hits_do_momento AS
    SELECT s.song_name AS cancao, COUNT(r.song_id) AS reproducoes
    FROM SpotifyClone.songs s INNER JOIN SpotifyClone.reproductions r
    ON s.song_id = r.song_id
    GROUP BY song_name
    ORDER BY reproducoes DESC, song_name
	LIMIT 2;

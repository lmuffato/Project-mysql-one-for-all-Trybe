CREATE VIEW top_2_hits_do_momento AS
    SELECT s.song_name AS cancao, COUNT(r.song_id) AS reproducoes
    FROM SpotifyClone.songs s INNER JOIN SpotifyClone.reproductions r
    ON s.song_id = r.song_id
    GROUP BY 1
    ORDER BY 2 DESC, 1
LIMIT 2;

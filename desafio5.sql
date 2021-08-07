CREATE VIEW top_2_hits_do_momento AS
    SELECT
        s.song_name AS cancao, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.play_history ph
            INNER JOIN
        SpotifyClone.songs s ON s.song_id = ph.song_id
    GROUP BY cancao
    ORDER BY reproducoes DESC , cancao
    LIMIT 2;

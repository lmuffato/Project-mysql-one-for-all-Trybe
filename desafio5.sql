CREATE VIEW top_2_hits_do_momento AS (
    SELECT
        s.song cancao,
        COUNT(hr.user_id) reproducoes
    FROM
        SpotifyClone.history_reproductions hr
    INNER JOIN
        SpotifyClone.songs s USING (song_id)
    GROUP BY
        s.song_id
    ORDER BY
        2 DESC, 1
    LIMIT
        2    
);

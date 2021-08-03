CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        so.song_name AS 'cancao', COUNT(hi.user_id) AS 'reproducoes'
    FROM
        SpotifyClone.historic AS hi
            INNER JOIN
        SpotifyClone.songs AS so ON hi.song_id = so.song_id
    GROUP BY hi.song_id
    ORDER BY reproducoes DESC , cancao ASC
    LIMIT 2;

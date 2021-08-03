CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        s.single cancao, COUNT(h.user_id) reproducoes
    FROM
        SpotifyClone.History h
            INNER JOIN
        SpotifyClone.Singles s ON h.single_id = s.single_id
    GROUP BY s.single
    ORDER BY COUNT(h.user_id) DESC
    LIMIT 2;

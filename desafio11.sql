CREATE VIEW cancoes_premium AS (
    SELECT
        s.song nome,
        COUNT(h.song_id) reproducoes
    FROM 
        history_reproductions h
    INNER JOIN 
        songs s USING (song_id)
    INNER JOIN 
        users u USING (user_id)
    INNER JOIN 
        plans p USING (plan_id)
    WHERE 
        p.plan_id IN (2, 3)
    GROUP BY 
        1
    ORDER BY
        1
);

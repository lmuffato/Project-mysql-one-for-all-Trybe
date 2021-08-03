CREATE VIEW faturamento_atual AS
    SELECT 
        CONVERT( MIN(p.price) , DECIMAL (10 , 2 )) 'faturamento_minimo',
        MAX(p.price) 'faturamento_maximo',
        CONVERT( ROUND(SUM(p.price) / COUNT(u.user_id), 2) , DECIMAL (10 , 2 )) 'faturamento_medio',
        CONVERT( SUM(p.price) , DECIMAL (10 , 2 )) 'faturamento_total'
    FROM
        SpotifyClone.Users u
            INNER JOIN
        SpotifyClone.Plans p ON u.plan_id = p.plan_id;

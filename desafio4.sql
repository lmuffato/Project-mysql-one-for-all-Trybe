CREATE VIEW top_3_artistas AS
    SELECT 
        Artist_name AS artista, COUNT(user_id) AS seguidores
    FROM
        Artist AS a
            INNER JOIN
        Artist_followers AS f ON a.Artist_id = f.Artist_id
    GROUP BY `artista`
    ORDER BY `seguidores` DESC , `artista`
    LIMIT 3;

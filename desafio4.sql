CREATE VIEW top_3_artistas AS
    SELECT 
        CONCAT(stars.`name`, ' ', stars.last_name) AS artista,
        COUNT(follow_stars.users_id) AS seguidores
    FROM
        SpotifyClone.follow_stars AS follow_stars
            INNER JOIN
        SpotifyClone.stars AS stars ON follow_stars.stars_id = stars.stars_id
    GROUP BY artista
    ORDER BY seguidores DESC , artista ASC
    LIMIT 3;
      
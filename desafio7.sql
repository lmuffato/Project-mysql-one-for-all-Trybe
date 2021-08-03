CREATE VIEW perfil_artistas AS
    SELECT 
        CONCAT(a.`name`, ' ', a.last_name) AS 'artista',
        b.album_name AS 'album',
        s.q AS 'seguidores'
    FROM
        (SELECT 
            stars_id, COUNT(stars_id) AS q
        FROM
            follow_stars
        GROUP BY stars_id) AS s
            INNER JOIN
        stars AS a ON a.stars_id = s.stars_id
            INNER JOIN
        album AS b ON b.stars_id = s.stars_id
    ORDER BY 3 DESC , 1 , 2;

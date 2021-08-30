DELIMITER $$
    CREATE PROCEDURE albuns_do_artista(artist_name VARCHAR(50))
        BEGIN
        SELECT
            art.artist_name AS `artista`,
            alb.album_name  AS `album`
            FROM SpotifyClone.albums alb
            INNER JOIN SpotifyClone.artists art
                ON alb.artist_id = art.artist_id
            WHERE art.artist_name = artist_name
            ORDER BY `album`;
        END $$
DELIMITER;

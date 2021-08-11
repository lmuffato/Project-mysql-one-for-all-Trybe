CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        s.`name` AS `cancao`, COUNT(*) AS `reproducoes`
    FROM
        SpotifyClone.songs AS s
            INNER JOIN
        SpotifyClone.historical_reproduction AS hr ON hr.song_id = s.song_id
    GROUP BY s.song_id
    ORDER BY `reproducoes` DESC , `cancao` ASC
    LIMIT 2;

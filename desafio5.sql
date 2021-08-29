CREATE VIEW top_2_hits_do_momento AS
SELECT
    s.Name as 'cancao',
    COUNT(h.SongId) AS 'reproducoes' 
FROM
    SpotifyClone.user_history AS h 
INNER JOIN
    SpotifyClone.songs AS s 
        ON s.id = h.SongId 
GROUP BY
    h.SongId 
ORDER BY
    reproducoes DESC,
    cancao LIMIT 2;

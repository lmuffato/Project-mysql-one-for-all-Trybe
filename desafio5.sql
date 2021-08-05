DROP VIEW IF EXISTS top_2_hits_do_momento;
USE SpotifyClone;

CREATE VIEW top_2_hits_do_momento AS
SELECT
    s.name AS cancao,
    COUNT(h.user_id) AS reproducoes
FROM 
    SpotifyClone.song AS s
INNER JOIN
    SpotifyClone.history AS h
    ON s.song_id = h.song_id
GROUP BY cancao 
ORDER BY reproducoes DESC, cancao
LIMIT 2;

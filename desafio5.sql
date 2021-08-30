DROP VIEW IF EXISTS top_2_hits_do_momento;
USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento AS
SELECT
    s.song_name as `cancao`,
    COUNT(sH.song_id) as `reproducoes`
FROM songs_history sH
INNER JOIN songs s
    ON sH.song_id = s.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, cancao
LIMIT 2;
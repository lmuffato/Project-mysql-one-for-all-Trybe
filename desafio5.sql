DROP VIEW IF EXISTS top_2_hits_do_momento;
CREATE VIEW top_2_hits_do_momento AS 
SELECT s.song AS cancao,COUNT(h.song_id) AS reproducoes FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.historico AS h
ON h.song_id = s.song_id
GROUP BY `cancao`
ORDER BY `reproducoes`DESC,`cancao`
LIMIT 2;
SELECT * FROM top_2_hits_do_momento;


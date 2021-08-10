CREATE VIEW top_2_hits_do_momento AS
SELECT s.song AS cancao, 
COUNT(*) AS reproducoes
FROM track_record t 
INNER JOIN song s ON t.song_id = s.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;

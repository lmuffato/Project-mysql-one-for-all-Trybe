
CREATE VIEW top_2_hits_do_momento AS
SELECT m.title AS cancao,
COUNT(p.music_id) AS reproducoes
FROM SpotifyClone.musics AS m
INNER JOIN SpotifyClone.playback_history AS p ON m.music_id = p.music_id
GROUP BY p.music_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;

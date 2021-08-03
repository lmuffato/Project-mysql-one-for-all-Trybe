CREATE VIEW top_2_hits_do_momento AS
SELECT S.title AS `cancao`,
COUNT(*) AS `reproducoes`
FROM SpotifyClone.listening_history AS LH
INNER JOIN SpotifyClone.songs AS S
ON LH.song_id=S.song_id
GROUP BY LH.song_id
ORDER BY reproducoes DESC, cancao limit 2;

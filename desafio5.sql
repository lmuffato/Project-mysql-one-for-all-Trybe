USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento AS
SELECT SongName AS cancao,
COUNT(hps.SongID) AS reproducoes
FROM SONGS AS sgns
INNER JOIN HISTORY_PLAYED_SONGS AS hps
ON sgns.SongID = hps.SongID
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;

CREATE VIEW top_2_hits_do_momento AS
SELECT SongName AS cancao,
COUNT(hps.SongID) AS reproducoes
FROM SpotifyClone.SONGS AS sgns
INNER JOIN SpotifyClone.HISTORY_PLAYED_SONGS AS hps
ON sgns.SongID = hps.SongID
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;

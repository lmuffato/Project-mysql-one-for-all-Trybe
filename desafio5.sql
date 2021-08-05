CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT s.songName `cancao`,
COUNT(l.userID) `reproducoes`
FROM SpotifyClone.songs s
INNER JOIN SpotifyClone.listeningHistory l
ON s.songID = l.songID
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;

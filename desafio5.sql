CREATE VIEW top_2_hits_do_momento AS
SELECT m.MusicName AS 'cancao',
COUNT(rh.MusicID) AS 'reproducoes'
FROM SpotifyClone.Musics m
INNER JOIN SpotifyClone.ReproductionHistory rh
ON rh.MusicID = m.MusicID
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;

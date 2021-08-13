CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT
  s.song AS `cancao`,
  COUNT(ph.song) AS `reproducoes`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.playback_history AS ph
ON s.id = ph.song
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;

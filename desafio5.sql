CREATE VIEW top_2_hits_do_momento AS
SELECT
  songs.song AS `cancao`,
  COUNT(playhist.song_id) AS `reproducoes`
FROM SpotifyClone.songs_playback_history AS playhist
INNER JOIN SpotifyClone.songs AS songs ON playhist.song_id = songs.song_id
GROUP BY playhist.song_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;

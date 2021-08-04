CREATE VIEW top_2_hits_do_momento AS
(SELECT
  (SELECT song_name FROM SpotifyClone.Songs AS s 
  WHERE s.song_id = ps.song_id) AS cancao,
  COUNT(ps.song_id) AS reproducoes
FROM SpotifyClone.PlayedSongs AS ps
GROUP BY ps.song_id ORDER BY reproducoes DESC, cancao LIMIT 2
);

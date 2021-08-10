CREATE VIEW top_2_hits_do_momento AS
SELECT sgs.song_name AS cancao,
  COUNT(lh.user_id) AS reproducoes
FROM SpotifyClone.listening_history AS lh
  INNER JOIN SpotifyClone.songs AS sgs ON lh.song_id = sgs.song_id
GROUP BY sgs.song_name
ORDER BY reproducoes DESC,
  cancao
LIMIT 2;

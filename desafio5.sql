CREATE VIEW top_2_hits_do_momento AS
SELECT
  c.song_name AS cancao,
  COUNT(h.user_id) AS reproducoes
FROM
  SpotifyClone.historico AS h
  INNER JOIN SpotifyClone.cancoes AS c ON h.song_id = c.song_id
GROUP BY
  c.song_name
ORDER BY
  reproducoes DESC,
  cancao
LIMIT
  2;

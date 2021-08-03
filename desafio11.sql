CREATE VIEW cancoes_premium AS
SELECT
  m.music_name AS nome,
  COUNT(m.music_id) AS reproducoes
FROM
  SpotifyClone.history AS h
  JOIN SpotifyClone.musics AS m ON m.music_id = h.music_id
  JOIN SpotifyClone.user AS u ON h.user_id = u.user_id
  AND u.plan_id IN (2, 3)
GROUP BY
  m.music_id
ORDER BY
  m.music_name;

CREATE VIEW cancoes_premium AS (
  SELECT
    s.song AS `nome`,
    COUNT(ps.user_id) AS reproducoes
  FROM SpotifyClone.played_songs ps
  INNER JOIN SpotifyClone.songs s ON s.song_id = ps.song_id
  WHERE user_id IN (SELECT user_id FROM SpotifyClone.users u WHERE u.plan_id IN (2, 3))
  GROUP BY ps.song_id
  ORDER BY `nome`
);

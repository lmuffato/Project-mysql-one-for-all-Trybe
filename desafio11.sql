CREATE VIEW cancoes_premium AS (
  SELECT
    s.song AS `nome`,
    COUNT(*) AS `reproducoes`
  FROM SpotifyClone.historic AS h
  INNER JOIN SpotifyClone.users AS u
  ON h.user_id = u.user_id
  INNER JOIN SpotifyClone.songs AS s
  ON s.song_id = h.song_id
  WHERE u.plan_id IN (2,3)
  GROUP BY `nome`
  ORDER BY `nome`
);

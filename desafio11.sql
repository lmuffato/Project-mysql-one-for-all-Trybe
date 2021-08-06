CREATE VIEW cancoes_premium AS
  SELECT
    s.name AS nome,
    COUNT(r.song_id) AS reproducoes
  FROM SpotifyClone.reproductions AS r
  LEFT JOIN SpotifyClone.songs AS s
  ON s.song_id = r.song_id
  LEFT JOIN SpotifyClone.users AS u
  ON u.user_id = r.user_id
  WHERE u.plan_id IN (2, 3)
  GROUP BY nome
  ORDER BY `nome`;

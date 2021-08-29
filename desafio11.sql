CREATE VIEW cancoes_premium AS (
  SELECT
    s.name AS `nome`,
    COUNT(h.UserId) AS reproducoes
  FROM SpotifyClone.user_history h
  INNER JOIN SpotifyClone.songs s ON s.id = h.SongId
  WHERE UserId IN (SELECT UserId FROM SpotifyClone.users u WHERE u.PlanId IN (2, 3))
  GROUP BY h.SongId
  ORDER BY `nome`
);

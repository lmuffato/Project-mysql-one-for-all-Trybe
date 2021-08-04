CREATE VIEW cancoes_premium AS
  SELECT
    s.songs_name AS `nome`,
    COUNT(s.songs_name) AS `reproducoes`
  FROM SpotifyClone.users AS u
  INNER JOIN SpotifyClone.plans AS p
  ON u.plans_id = p.plans_id
  INNER JOIN SpotifyClone.reproductions_history AS r
  ON u.users_id = r.users_id
  INNER JOIN SpotifyClone.songs AS s
  ON s.songs_id = r.songs_id
  WHERE p.plans_name = 'familiar' OR p.plans_name = 'universitário'
  GROUP BY s.songs_name
  ORDER BY `nome` ASC;

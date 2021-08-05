CREATE VIEW `cancoes_premium` AS
  SELECT 
      s.song_name AS `nome`, COUNT(h.song_id) AS `reproducoes`
  FROM
      SpotifyClone.history AS h
          INNER JOIN
      SpotifyClone.songs AS s ON s.song_id = h.song_id
          INNER JOIN
      SpotifyClone.users AS u ON u.user_id = h.user_id
          INNER JOIN
      SpotifyClone.plans AS p ON p.plan_id = u.plan_id
  WHERE
      u.plan_id IN (2 , 3)
  GROUP BY `nome`
  ORDER BY `nome`;

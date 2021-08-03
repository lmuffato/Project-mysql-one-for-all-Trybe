CREATE VIEW `historico_reproducao_usuarios` AS
  SELECT 
      u.user_name AS `usuario`, s.song_name AS `nome`
  FROM
      SpotifyClone.users AS u
          INNER JOIN
      SpotifyClone.history AS h ON u.user_id = h.user_id
          INNER JOIN
      SpotifyClone.songs AS s ON h.song_id = s.song_id
  ORDER BY `usuario` , `nome`;

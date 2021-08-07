CREATE VIEW historico_reproducao_usuarios AS
  SELECT 
    c.customer_name usuario,
    s.song_name nome
  FROM 
    SpotifyClone.customer c
      INNER JOIN
    SpotifyClone.customer_song cs ON c.customer_id = cs.customer_id
    INNER JOIN
    SpotifyClone.song s ON s.song_id = cs.song_id
  ORDER BY usuario, nome;

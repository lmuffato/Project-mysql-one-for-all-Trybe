CREATE VIEW top_2_hits_do_momento AS
  SELECT
    s.song_name cancao,
    COUNT(cs.song_id) reproducoes
  FROM
    SpotifyClone.customer_song cs
      INNER JOIN
    SpotifyClone.song s ON s.song_id = cs.song_id
      INNER JOIN
    SpotifyClone.customer c ON c.customer_id = cs.customer_id
  GROUP BY cs.song_id
  ORDER BY reproducoes DESC, cancao
  LIMIT 2;
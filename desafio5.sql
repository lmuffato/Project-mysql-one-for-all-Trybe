CREATE VIEW top_2_hits_do_momento AS
  SELECT s.name AS cancao,
  (
    SELECT COUNT(*)
    FROM SpotifyClone.reproductions AS r
    WHERE s.song_id = r.song_id
  ) AS reproducoes
  FROM SpotifyClone.songs AS s
  ORDER BY `reproducoes` DESC, `cancao`
  LIMIT 2;

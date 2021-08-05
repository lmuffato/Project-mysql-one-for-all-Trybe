CREATE OR REPLACE VIEW top_2_hits_do_momento AS
  SELECT 
    s.name AS cancao, COUNT(rh.song_id) AS reproducoes
  FROM 
    song AS s, reproduction_history AS rh
  GROUP BY
    cancao, s.id, rh.song_id
  HAVING
    s.id = rh.song_id
  ORDER BY
    reproducoes DESC, cancao
  LIMIT
    2;

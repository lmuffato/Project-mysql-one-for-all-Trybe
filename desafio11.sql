CREATE OR REPLACE VIEW cancoes_premium AS
  SELECT
    s.name AS nome, COUNT(rh.song_id) AS reproducoes
  FROM
    song AS s
  INNER JOIN
    user AS u
  INNER JOIN
    reproduction_history rh 
  ON 
    rh.song_id = s.id
  AND
    rh.user_id = u.id
  AND
    u.plan_id BETWEEN 2 AND 3
  GROUP BY
    nome
  ORDER BY
    nome; 

CREATE VIEW top_2_hits_do_momento AS
SELECT
  m.music AS 'cancao',
  COUNT(p.user_id) AS 'reproducoes'
FROM
  SpotifyClone.musics AS m
INNER JOIN
  SpotifyClone.played AS p
ON m.music_id = p.music_id
GROUP BY m.music
ORDER BY COUNT(p.user_id) DESC, m.music ASC
LIMIT 2;

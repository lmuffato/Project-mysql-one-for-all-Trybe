CREATE VIEW SpotifyClone.cancoes_premium AS
SELECT 
  m.music AS 'nome',
  COUNT(p.music_id) 'reproducoes'
FROM
  SpotifyClone.users AS u
INNER JOIN
  SpotifyClone.played AS p ON u.user_id = p.user_id
INNER JOIN
  SpotifyClone.musics AS m ON p.music_id = m.music_id
WHERE plan_id > 1
GROUP BY m.music
ORDER BY m.music;

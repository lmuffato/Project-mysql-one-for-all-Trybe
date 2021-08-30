CREATE VIEW historico_reproducao_usuarios AS
SELECT 
  u.username AS 'usuario',
  m.music AS 'nome'
FROM
  SpotifyClone.played AS p
INNER JOIN
  SpotifyClone.musics AS m ON p.music_id = m.music_id
INNER JOIN
  SpotifyClone.users AS u ON p.user_id = u.user_id
ORDER BY u.username, m.music;

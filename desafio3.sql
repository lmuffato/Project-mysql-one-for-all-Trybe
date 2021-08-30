CREATE VIEW historico_reproducao_usuarios AS
SELECT 
  users.user_name AS `usuario`,
  songs.song_name AS `nome`
FROM SpotifyClone.songs_history sgH
INNER JOIN SpotifyClone.users users
    ON sgH.user_id = users.user_id
INNER JOIN SpotifyClone.songs songs
    ON sgH.song_id = songs.song_id
ORDER BY `usuario`, `nome`;

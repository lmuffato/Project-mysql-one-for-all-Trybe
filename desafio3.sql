DROP VIEW IF EXISTS historico_reproducao_usuarios;
USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
SELECT 
users.user_name AS `usuario`,
songs.song_name AS `nome`
FROM songs_history sgH
INNER JOIN users users
    ON sgH.user_id = users.user_id
INNER JOIN songs songs
    ON sgH.song_id = songs.song_id
ORDER BY `usuario`, `nome`;
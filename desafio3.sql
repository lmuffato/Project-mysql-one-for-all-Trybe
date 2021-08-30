CREATE VIEW historico_reproducao_usuarios
AS
SELECT
  users.user AS usuario, songs.song AS nome
FROM users AS users
JOIN history AS history
  ON users.user_id = history.user_id
JOIN songs AS songs
  ON history.song_id = songs.song_id
ORDER BY usuario, nome;

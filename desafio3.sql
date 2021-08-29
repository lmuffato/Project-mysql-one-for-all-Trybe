CREATE VIEW historico_reproducao_usuarios AS
SELECT users.username AS usuario, songs.song AS nome
FROM SpotifyClone.songs_playback_history AS playhist
INNER JOIN SpotifyClone.users AS users ON playhist.user_id = users.user_id
INNER JOIN SpotifyClone.songs AS songs ON playhist.song_id = songs.song_id
ORDER BY usuario, nome;

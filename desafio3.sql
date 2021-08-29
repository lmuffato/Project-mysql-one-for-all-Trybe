
CREATE VIEW historico_reproducao_usuarios AS
SELECT u.username AS usuario,
m.title AS nome
FROM SpotifyClone.playback_history AS p
INNER JOIN SpotifyClone.users AS u ON p.user_id = u.user_id
INNER JOIN SpotifyClone.musics AS m ON p.music_id = m.music_id
ORDER BY usuario, nome;

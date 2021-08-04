CREATE VIEW historico_reproducao_usuarios AS
SELECT u.name AS `usuario`,
s.song AS `nome`
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.track_record AS t ON u.user_id = t.user_id
INNER JOIN SpotifyClone.song AS s ON t.song_id = s.song_id
ORDER BY usuario, nome;

CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT
	u.`name` AS `usuario`,
    s.song AS `nome`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.playback_history AS ph
ON s.id = ph.song
INNER JOIN SpotifyClone.users AS u
ON u.id = ph.user_id
ORDER BY `usuario` ASC, nome ASC;

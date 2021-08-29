CREATE VIEW historico_reproducao_usuarios AS
	SELECT user_name AS `usuario`,
	song_name AS `nome`
	FROM SpotifyClone.users AS u
	INNER JOIN SpotifyClone.reproduction_history AS rh
	ON rh.user_id = u.user_id
	INNER JOIN SpotifyClone.songs AS s
	ON rh.song_id = s.song_id
	ORDER BY `usuario`, `nome`;

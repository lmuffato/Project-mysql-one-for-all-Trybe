CREATE VIEW historico_reproducao_usuarios AS
 SELECT
  users.user_name AS usuario,
  songs.songs_name AS nome
	FROM SpotifyClone.`history` AS `history`
		INNER JOIN SpotifyClone.users AS users
			ON `history`.users_id = users.users_id
		INNER JOIN SpotifyClone.songs AS songs
			ON `history`.songs_id = songs.songs_id
		ORDER BY usuario, nome;
        
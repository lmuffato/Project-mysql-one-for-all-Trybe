CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    users.user_name AS usuario, 
    songs.song_name AS nome
  FROM 
    SpotifyClone.users AS users
      INNER JOIN
    SpotifyClone.reproduction_history AS history ON users.user_id = history.user_id
	    INNER JOIN
    SpotifyClone.songs AS songs ON songs.song_id = history.song_id
ORDER BY usuario, nome;

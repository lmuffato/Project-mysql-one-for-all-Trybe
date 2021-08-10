CREATE VIEW historico_reproducao_usuarios AS
SELECT usr.user_name AS usuario,
  sgs.song_name AS nome
FROM SpotifyClone.listening_history AS lh
  INNER JOIN SpotifyClone.users AS usr ON lh.user_id = usr.user_id
  INNER JOIN SpotifyClone.songs AS sgs ON lh.song_id = sgs.song_id
ORDER BY usuario,
  nome;

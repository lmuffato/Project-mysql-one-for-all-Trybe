CREATE VIEW cancoes_premium AS
SELECT sgs.song_name AS nome,
  COUNT(usr.user_id) AS reproducoes
FROM SpotifyClone.listening_history AS lh
  INNER JOIN SpotifyClone.users AS usr ON lh.user_id = usr.user_id
  AND usr.membership_id IN (2, 3)
  INNER JOIN SpotifyClone.songs AS sgs ON lh.song_id = sgs.song_id
GROUP BY sgs.song_name
ORDER BY nome;

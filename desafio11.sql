CREATE VIEW cancoes_premium AS
SELECT songs.song_name AS 'nome', COUNT(rep_history.song_id) AS 'reproducoes'
FROM SpotifyClone.rep_history AS rep_history
JOIN SpotifyClone.songs AS songs ON rep_history.song_id_fk = songs.song_id
JOIN SpotifyClone.users AS users ON rep_history.user_id_fk = users.user_id
WHERE users.plan_id_fk != 1
GROUP BY 1
ORDER BY 1;

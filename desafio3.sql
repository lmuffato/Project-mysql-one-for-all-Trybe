CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.`user` AS usuario, s.song AS nome
FROM SpotifyClone.`user` AS u
INNER JOIN SpotifyClone.songs AS s
INNER JOIN SpotifyClone.historic_musics AS h
WHERE h.user_id = u.user_id AND h.song_id = s.song_id
ORDER BY nome;

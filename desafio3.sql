CREATE VIEW historico_reproducao_usuarios AS (
SELECT u.user AS 'usuario',
s.song AS 'nome'
FROM SpotifyClone.users AS u
JOIN SpotifyClone.songs AS s
JOIN SpotifyClone.just_heard AS jh
ON jh.user_id = u.user_id AND jh.song_id = s.song_id
ORDER BY `usuario`, `nome`
);

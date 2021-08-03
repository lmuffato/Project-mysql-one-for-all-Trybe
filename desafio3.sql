CREATE VIEW historico_reproducao_usuarios AS
SELECT U.name AS `usuario`,
S.title AS `nome`
FROM SpotifyClone.listening_history AS LH
INNER JOIN SpotifyClone.users AS U
ON LH.user_id=U.user_id
INNER JOIN SpotifyClone.songs AS S
ON LH.song_id=S.song_id
ORDER BY usuario, nome;

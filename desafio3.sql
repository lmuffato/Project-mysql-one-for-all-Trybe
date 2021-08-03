CREATE VIEW historico_reproducao_usuarios AS
SELECT tabuser.username AS 'usuario', tabsong.song_name AS 'nome'
FROM SpotifyClone.rep_history AS historico
INNER JOIN SpotifyClone.users AS tabuser ON historico.user_id_fk = tabuser.user_id
INNER JOIN SpotifyClone.songs AS tabsong ON historico.song_id_fk = tabsong.song_id
ORDER BY usuario, nome;

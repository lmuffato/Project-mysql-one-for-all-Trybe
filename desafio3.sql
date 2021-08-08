DROP VIEW IF EXISTS historico_reproducao_usuarios;
CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user_name AS usuario,
s.song AS nome
FROM SpotifyClone.`user` AS u
INNER JOIN SpotifyClone.historico AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.songs AS s
ON s.song_id = h.song_id
ORDER BY `usuario`,`nome`;
SELECT * FROM historico_reproducao_usuarios;


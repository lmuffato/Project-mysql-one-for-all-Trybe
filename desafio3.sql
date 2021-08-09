DROP VIEW IF EXISTS historico_reproducao_usuarios;
CREATE VIEW historico_reproducao_usuarios AS
SELECT u.username AS usuario,
s.name AS nome
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.singles AS s
ON s.single_id = h.single_id
ORDER BY `usuario`,`nome`;
SELECT * FROM historico_reproducao_usuarios;

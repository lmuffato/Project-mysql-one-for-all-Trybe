CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario, c.cancao AS nome FROM SpotifyClone.usuarios AS u
INNER JOIN
SpotifyClone.usuario_reproducao AS ur
ON u.usuario_id = ur.usuario_id
INNER JOIN 
SpotifyClone.cancoes AS c
ON c.cancao_id = ur.cancao_id
ORDER BY u.usuario, nome;

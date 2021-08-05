CREATE VIEW historico_reproducao_usuarios AS (
SELECT u.usuario AS 'usuario', c.cancao AS 'nome' FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.cancoes AS c
INNER JOIN historico_reproducoes AS hr
ON u.usuario_id = hr.usuario_id AND hr.cancao_id = c.cancao_id
ORDER BY `usuario`, `nome`
);

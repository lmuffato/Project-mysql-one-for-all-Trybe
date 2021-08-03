CREATE VIEW cancoes_premium AS
SELECT c.cancao AS 'nome',
count(h.cancao_id) AS 'reproducoes' 
FROM SpotifyClone.Usuarios AS u
INNER JOIN SpotifyClone.Planos AS p
ON u.plano_id = p.plano_id
INNER JOIN SpotifyClone.Historico AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.Cancoes AS c
ON h.cancao_id = c.cancao_id
WHERE p.valor > 0
GROUP BY c.cancao
ORDER BY c.cancao ASC;

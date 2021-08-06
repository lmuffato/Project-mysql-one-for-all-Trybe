CREATE VIEW cancoes_premium AS
SELECT c.musicas AS nome,
COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducao AS h
ON h.musicas_id = c.musicas_id
INNER JOIN SpotifyClone.usuario AS u
ON u.plano_id IN (2, 3) AND h.usuario_id = u.usuario_id
GROUP BY c.musicas
ORDER BY `nome`;
-- creditos Ana Ventura

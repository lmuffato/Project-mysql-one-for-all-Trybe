CREATE VIEW cancoes_premium AS
SELECT
c.cancao AS `nome`,
COUNT(*) AS `reproducoes`
FROM SpotifyClone.cancao c
INNER JOIN SpotifyClone.historico_reproducao hr
ON c.cancao_id = hr.cancao_id
INNER JOIN SpotifyClone.usuario u
ON hr.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.plano p
ON u.plano_id = p.plano_id
WHERE plano IN ("familiar", "universitário")
GROUP BY `nome`
ORDER BY `nome`;

-- SELECT * FROM cancoes_premium;

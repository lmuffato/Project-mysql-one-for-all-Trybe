CREATE VIEW cancoes_premium AS
SELECT
a.cancao AS `nome`,
COUNT(h.usuario_ID) AS `reproducoes`
FROM SpotifyClone.cancoes AS a
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON a.cancoes_ID = h.cancoes_ID
WHERE h.usuario_ID IN(2,3)
GROUP BY `nome`
ORDER BY `nome`;
-- SELECT*FROM cancoes_premium; 

CREATE VIEW cancoes_premium AS
SELECT
cancoes.nome_cancao AS `nome`,
COUNT(historico.cancao_id) AS `reproducoes`
FROM SpotifyClone.Cancoes AS cancoes
INNER JOIN SpotifyClone.Historico_de_reproducoes AS historico
ON cancoes.cancao_id = historico.cancao_id
WHERE historico.usuario_id IN(2,3)
GROUP BY `nome`
ORDER BY `nome`;

CREATE VIEW cancoes_premium AS
SELECT c.nome_cancao AS nome, COUNT(hr.cancao_id) AS reproducoes
FROM Cancoes AS c
INNER JOIN SpotifyClone.Historico_de_reproducoes AS hr
ON c.cancao_id = hr.cancao_id
INNER JOIN SpotifyClone.Usuarios AS u
ON u.usuario_id = hr.usuario_id AND u.plano_id IN (2, 3)
GROUP BY `nome`
ORDER BY `nome` ASC;

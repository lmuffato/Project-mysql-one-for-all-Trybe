CREATE VIEW cancoes_premium AS
SELECT C.cancao_nome AS 'nome', COUNT(HR.cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancao C
INNER JOIN SpotifyClone.historico_reproducoes HR
ON HR.cancao_id = C.cancao_id
INNER JOIN SpotifyClone.usuario U
ON HR.usuario_id = U.usuario_id
INNER JOIN SpotifyClone.plano P
ON P.plano_id = U.plano_id
WHERE P.plano_id BETWEEN 2 AND 3
GROUP BY C.cancao_nome
ORDER BY `nome`;

CREATE VIEW SpotifyClone.cancoes_premium AS
SELECT c.Cancao AS 'nome', COUNT(1) AS 'reproducoes'
FROM SpotifyClone.Usuario AS u
INNER JOIN SpotifyClone.Historico AS h ON u.Usuario_id = h.Usuario_id
INNER JOIN SpotifyClone.Cancao AS c ON h.Cancao_id = c.Cancao_id
WHERE Plano_id > 1
GROUP BY c.Cancao
ORDER BY c.Cancao;

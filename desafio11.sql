CREATE VIEW cancoes_premium AS 
SELECT m.nome AS nome, COUNT(hr.Musica_ID)  AS reproducoes
FROM SpotifyClone.Musicas AS m
INNER JOIN SpotifyClone.historico_reproducao AS hr
ON m.Musica_ID = hr.Musica_ID
INNER JOIN SpotifyClone.Usuarios AS u
ON u.Usuario_ID = hr.Usuario_ID
INNER JOIN SpotifyClone.Planos AS p
ON p.Plano_ID = u.Plano_ID
WHERE p.Plano IN('familiar', 'universitário')
GROUP BY nome 
ORDER BY nome;

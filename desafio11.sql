CREATE VIEW cancoes_premium AS 
SELECT musicas.musica_nome AS nome,
COUNT(reproducoes.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS musicas
INNER JOIN reproducoes AS reproducoes
ON reproducoes.musica_id = musicas.musica_id
INNER JOIN usuarios AS usuarios
ON usuarios.usuario_id = reproducoes.usuario_id
WHERE usuarios.plano_id IN(3, 2)
GROUP BY nome
ORDER BY nome;

CREATE VIEW top_2_hits_do_momento AS 
SELECT musicas.musica_nome AS cancao,
COUNT(reproducoes.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS musicas
INNER JOIN reproducoes AS reproducoes
ON reproducoes.musica_id = musicas.musica_id
GROUP BY musicas.musica_nome
ORDER BY reproducoes DESC, cancao
LIMIT 2;

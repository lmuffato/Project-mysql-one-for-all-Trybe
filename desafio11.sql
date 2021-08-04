CREATE VIEW cancoes_premium AS
SELECT m.nome_musica AS 'nome',
COUNT(h.musica_id) AS 'reproducoes'
FROM SpotifyClone.usuarios AS u 
INNER JOIN SpotifyClone.planos AS p
ON u.id_plano = p.id
INNER JOIN SpotifyClone.historico_de_musicas AS h
ON u.id = h.usuario_id
INNER JOIN SpotifyClone.musicas AS m
ON h.musica_id = m.id
WHERE p.nome_plano IN('familiar', 'universitário')
GROUP BY m.nome_musica
ORDER BY `nome`;

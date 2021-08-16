CREATE VIEW cancoes_premium AS
SELECT mus.nome AS 'nome', COUNT(his.musica_id) AS 'reproducoes' FROM SpotifyClone.historico AS his
JOIN SpotifyClone.musicas AS mus ON his.musica_id = mus.musica_id
JOIN SpotifyClone.usuarios AS usu ON his.usuario_id = usu.usuario_id
WHERE usu.plano_id != 1
GROUP BY 1
ORDER BY 1;
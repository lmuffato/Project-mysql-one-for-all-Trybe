CREATE VIEW historico_reproducao_usuarios AS
SELECT usu.nome As 'usuario', mus.nome AS 'nome' FROM SpotifyClone.historico AS his
JOIN SpotifyClone.usuarios AS usu ON his.usuario_id = usu.usuario_id
JOIN SpotifyClone.musicas AS mus ON his.musica_id = mus.musica_id
ORDER BY 1, 2;

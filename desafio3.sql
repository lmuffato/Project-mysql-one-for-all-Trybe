CREATE VIEW historico_reproducao_usuarios AS 
SELECT us.usuario_nome AS usuario,
musica_nome AS nome
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historicoReproducoes AS hist ON us.usuario_id = hist.usuario_id
INNER JOIN SpotifyClone.musicas AS sng ON hist.musica_id = sng.musica_id
ORDER BY usuario, nome;

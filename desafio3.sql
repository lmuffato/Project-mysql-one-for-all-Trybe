CREATE VIEW historico_reproducao_usuarios AS
SELECT usuarios.usuario_nome AS usuario,
musicas.musica_nome AS nome
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN reproducoes AS reproducoes
ON reproducoes.usuario_id = usuarios.usuario_id
INNER JOIN musicas AS musicas
ON musicas.musica_id = reproducoes.musica_id
ORDER BY usuario, nome;

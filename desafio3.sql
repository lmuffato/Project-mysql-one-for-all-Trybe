CREATE VIEW historico_reproducao_usuarios AS (
SELECT usuarios.usuario_nome AS usuario,
musicas.musica_nome AS nome
FROM SpotifyClone.reproducoes AS reproducoes
INNER JOIN usuarios AS usuarios
ON usuarios.usuario_id = reproducoes.usuario_id
INNER JOIN musicas AS musicas
ON musicas.musica_id = reproducoes.musica_id
ORDER BY usuario, nome
);

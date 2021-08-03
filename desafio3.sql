CREATE VIEW historico_reproducao_usuarios AS 
SELECT 
    u.nome AS usuario, m.nome AS nome
FROM
    SpotifyClone.historico_reproducao AS hr
        INNER JOIN
    SpotifyClone.Usuarios AS u ON hr.Usuario_ID = u.Usuario_ID
        INNER JOIN
    SpotifyClone.Musicas AS m ON hr.Musica_ID = m.Musica_ID
ORDER BY usuario , nome;

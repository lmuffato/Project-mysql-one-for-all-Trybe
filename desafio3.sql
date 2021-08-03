CREATE VIEW historico_reproducao_usuarios AS 
SELECT 
    u.nome AS usuario, m.nome AS nome
FROM
    spotifyclone.historico_reproducao AS hr
        INNER JOIN
    spotifyclone.usuarios AS u ON hr.Usuario_ID = u.Usuario_ID
        INNER JOIN
    spotifyclone.musicas AS m ON hr.Musica_ID = m.Musica_ID
ORDER BY usuario , nome;

SELECT * FROM historico_reproducao_usuarios;

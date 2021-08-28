CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        usuarios.usuario AS usuario, cancoes.cancao AS nome
    FROM
        historico_de_reproducoes AS historico_de_reproducoes
            INNER JOIN
        usuarios AS usuarios ON historico_de_reproducoes.usuario_id = usuarios.usuario_id
            INNER JOIN
        cancoes AS cancoes ON historico_de_reproducoes.cancao_id = cancoes.cancao_id
    ORDER BY usuario ASC , nome ASC;

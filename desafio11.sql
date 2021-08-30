CREATE VIEW cancoes_premium AS
    SELECT 
        cancoes.cancao AS 'nome', COUNT(*) AS 'reproducoes'
    FROM
        historico_de_reproducoes AS historico_de_reproducoes
            INNER JOIN
        usuarios AS usuarios ON usuarios.usuario_id = historico_de_reproducoes.usuario_id
            INNER JOIN
        cancoes AS cancoes ON cancoes.cancao_id = historico_de_reproducoes.cancao_id
    WHERE
        usuarios.plano_id IN (2 , 3)
    GROUP BY nome
    ORDER BY nome ASC;

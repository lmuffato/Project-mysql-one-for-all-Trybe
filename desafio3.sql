CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        user_name AS usuario, Song_name AS nome
    FROM
        User AS u
            INNER JOIN
        History AS h
            INNER JOIN
        Songs AS s ON u.user_id = h.user_id
            AND h.Song_id = s.Song_id
    ORDER BY `usuario` , `nome`;

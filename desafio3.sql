CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        UserName AS usuario, SongName AS nome
    FROM
        USERS AS usr
            INNER JOIN
        HISTORY_PLAYED_SONGS AS hps
            INNER JOIN
        SONGS AS sg ON usr.UserID = hps.UserID
            AND hps.SongID = sg.SongID
    ORDER BY `usuario` , `nome`;

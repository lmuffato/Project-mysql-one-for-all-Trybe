CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        us.user_name AS 'usuario', so.song_name AS 'nome'
    FROM
        SpotifyClone.historic AS hi
            INNER JOIN
        SpotifyClone.songs AS so ON hi.song_id = so.song_id
            INNER JOIN
        SpotifyClone.users AS us ON hi.user_id = us.user_id
    ORDER BY usuario ASC , nome ASC;
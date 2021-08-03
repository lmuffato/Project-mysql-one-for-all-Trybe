-- DROP VIEW historico_reproducao_usuarios;

CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.name AS usuario, s.song AS nome
    FROM
        SpotifyClone.reproduction_history AS r
            INNER JOIN
        SpotifyClone.users AS u ON r.user_id = u.user_id
            INNER JOIN
        SpotifyClone.songs AS s ON r.song_id = s.song_id
    ORDER BY 1 , 2;

-- SELECT * FROM historico_reproducao_usuarios;

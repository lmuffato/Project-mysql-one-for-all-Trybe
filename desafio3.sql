CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.username 'usuario', s.single 'nome'
    FROM
        SpotifyClone.History h
            INNER JOIN
        SpotifyClone.Singles s ON h.single_id = s.single_id
            INNER JOIN
        SpotifyClone.Users u ON h.user_id = u.user_id
    ORDER BY u.user , s.single;

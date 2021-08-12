CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.user usuario, 
        s.song nome
    FROM 
        SpotifyClone.history_reproductions hr
    INNER JOIN 
        SpotifyClone.users u 
    ON hr.user_id = u.user_id 
    INNER JOIN 
        SpotifyClone.songs s 
    ON hr.song_id = s.song_id
    ORDER BY 
        1, 2;

CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        user usuario, 
        song nome
FROM 
    SpotifyClone.history_reproductions hr
INNER JOIN 
    SpotifyClone.users u USING (user_id)
INNER JOIN 
    SpotifyClone.songs s USING (song_id)
ORDER BY 
    1, 2;

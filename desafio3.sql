CREATE VIEW historico_reproducao_usuarios AS
    SELECT u.user_name AS usuario, s.song_name AS nome
    FROM SpotifyClone.users u INNER JOIN SpotifyClone.reproductions r
    ON u.user_id = r.user_id
    INNER JOIN SpotifyClone.songs s
ON s.song_id = r.song_id
    ORDER BY 1, 2;

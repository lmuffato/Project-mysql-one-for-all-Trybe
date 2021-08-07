CREATE VIEW historico_reproducao_usuarios AS
    SELECT
        u.user_name AS usuario, s.song_name AS nome
    FROM
        SpotifyClone.play_history ph
            INNER JOIN
        SpotifyClone.users u ON ph.user_id = u.user_id
            INNER JOIN
        SpotifyClone.songs s ON ph.song_id = s.song_id
    ORDER BY usuario , nome;

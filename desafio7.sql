CREATE VIEW perfil_artistas AS (
    SELECT
        a.name artista,
        al.album album,
        COUNT(fa.user_id) seguidores
    FROM
        SpotifyClone.artists a
    INNER JOIN
        SpotifyClone.albums al USING (artist_id)
    INNER JOIN
        SpotifyClone.follow_artist fa USING (artist_id)
    GROUP BY
        1, 2
    ORDER BY
        3 DESC, 1, 2 
);

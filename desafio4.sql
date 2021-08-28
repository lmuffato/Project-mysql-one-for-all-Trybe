CREATE VIEW top_3_artistas AS
    SELECT 
        artistas.artista AS artista,
        COUNT(usuarios.usuario) AS seguidores
    FROM
        seguindo_artistas AS seguindo_artistas
            INNER JOIN
        artistas AS artistas ON seguindo_artistas.artista_id = artistas.artista_id
            INNER JOIN
        usuarios AS usuarios ON seguindo_artistas.usuario_id = usuarios.usuario_id
    GROUP BY artista
    ORDER BY seguidores DESC , artista ASC
    LIMIT 3;

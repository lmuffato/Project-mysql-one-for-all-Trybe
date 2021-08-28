CREATE VIEW perfil_artistas AS
    SELECT 
        artistas.artista AS 'artista',
        albuns.album AS 'album',
        COUNT(seguindo_artistas.usuario_id) AS 'seguidores'
    FROM
        albuns AS albuns
            INNER JOIN
        seguindo_artistas AS seguindo_artistas ON albuns.artista_id = seguindo_artistas.artista_id
            INNER JOIN
        artistas AS artistas ON albuns.artista_id = artistas.artista_id
    GROUP BY artista , album
    ORDER BY seguidores DESC , artista ASC , album ASC;

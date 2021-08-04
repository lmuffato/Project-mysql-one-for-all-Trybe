CREATE VIEW perfil_artistas AS
    SELECT 
        a.nome AS artista,
        al.nome AS album,
        COUNT(ars.Usuario_ID) AS seguidores
    FROM
        SpotifyClone.Artistas AS a
            INNER JOIN
        SpotifyClone.Albuns AS al ON a.Artista_ID = al.Artista_ID
            INNER JOIN
        SpotifyClone.Artistas_seguidos AS ars ON a.Artista_ID = ars.Artista_ID
    GROUP BY album
    ORDER BY Seguidores DESC , artista , album;

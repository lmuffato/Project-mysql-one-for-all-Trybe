CREATE VIEW perfil_artistas AS
SELECT
    art.name AS 'artista',
    alb.Name AS 'album',
    COUNT(f.UserId) AS 'seguidores'  
FROM
    SpotifyClone.albuns AS alb 
INNER JOIN
    SpotifyClone.artists AS art 
        ON art.id = alb.ArtistId 
INNER JOIN
    SpotifyClone.follow_artists AS f 
        ON f.ArtistId = alb.ArtistId 
GROUP BY
    alb.Name,
    art.name 
ORDER BY
    seguidores DESC,
    artista,
    album;

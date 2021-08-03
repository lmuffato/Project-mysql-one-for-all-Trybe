SELECT 
    COUNT(*) AS cancoes,
    (SELECT 
            COUNT(*)
        FROM
            spotifyclone.artistas) AS artistas,
    (SELECT 
            COUNT(*)
        FROM
            spotifyclone.albuns) AS albuns
FROM
    spotifyclone.musicas

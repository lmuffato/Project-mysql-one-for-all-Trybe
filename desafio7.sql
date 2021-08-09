CREATE VIEW perfil_artistas AS
    SELECT 
        art.nome_do_artista AS "artista",
        alb.nome_do_album AS "album",
        COUNT(seg.artista_id) AS "seguidores"
    FROM
        SpotifyClone.todos_os_artistas AS art
            INNER JOIN
        SpotifyClone.albuns AS alb ON alb.artista_id = art.artista_id
            INNER JOIN
        SpotifyClone.artistas_seguindo AS seg ON seg.artista_id = art.artista_id
    GROUP BY `artista` , `album`
    ORDER BY `seguidores` DESC , `artista` , `album`;

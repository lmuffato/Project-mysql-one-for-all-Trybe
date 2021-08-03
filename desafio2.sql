CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(s.single_id) 'cancoes',
        COUNT(DISTINCT a.artist_id) 'artistas',
        COUNT(DISTINCT a.album_id) 'albuns'
    FROM
        SpotifyClone.Albums a
            INNER JOIN
        SpotifyClone.Singles s ON a.album_id = s.album_id;

CREATE VIEW estatisticas_musicais AS
    SELECT
        SUM(s.song) cancoes,
        SUM(a.name) artistas,
        SUM(albums) albuns
    FROM
        spotifyClone.songs s
    INNER JOIN
        spotifyClone.artists a USING (song_id)
    INNER JOIN
        spotifyClone.albums al USING (song_id);

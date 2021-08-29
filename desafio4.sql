CREATE VIEW top_3_artistas AS
SELECT arts.artist AS artista, COUNT(artsfollow.user_id) AS seguidores
FROM SpotifyClone.artists AS arts
INNER JOIN SpotifyClone.users_artists_following AS artsfollow
ON artsfollow.artist_id = arts.artist_id
GROUP BY artsfollow.artist_id
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;

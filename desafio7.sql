CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT Artista AS 'artista', al.Album as 'album', COUNT(s.Usuario_id) AS 'seguidores'
FROM SpotifyClone.Album AS al
INNER JOIN SpotifyClone.Artista AS ar ON ar.Artista_id = al.Artista_id
INNER JOIN SpotifyClone.Seguindo AS s ON s.Artista_id = ar.Artista_id
GROUP BY Album, Artista ORDER BY seguidores DESC, artista;

CREATE VIEW estatisticas_musicais AS (
	SELECT
		(SELECT COUNT(cancao) FROM SpotifyClone.cancoes) AS 'cancoes',
		(SELECT COUNT(artista) FROM SpotifyClone.artistas) AS 'artistas',
		(SELECT COUNT(album) FROM SpotifyClone.albuns) AS 'albuns' 
);

-- tentei fazer por INNER JOIN e não consegui. Fiz com subqueries baseado no código da Ana Ventura.

-- CREATE VIEW estatisticas_musicais AS
--     SELECT COUNT(c.cancao) AS cancoes, COUNT(ar.artista) AS artistas, COUNT(al.album) AS albuns
--     FROM SpotifyClone.cancoes AS c
--     INNER JOIN SpotifyClone.albuns AS al 
--     ON al.album_id = c.album_id
--     INNER JOIN SpotifyClone.artistas AS ar
--     ON ar.artista_id = al.artista_id;

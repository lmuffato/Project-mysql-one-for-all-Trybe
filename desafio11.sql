CREATE VIEW cancoes_premium AS
SELECT m.musica_titulo AS 'nome',
COUNT(h.usuario_id) AS 'reproducoes'
FROM SpotifyClone.historico AS h
INNER JOIN 
SpotifyClone.musicas AS m ON m.musica_id = h.musica_id
INNER JOIN
SpotifyClone.usuario AS u ON u.plano_id IN(2, 3) AND u.usuario_id = h.usuario_id
GROUP BY m.musica_titulo ORDER BY m.musica_titulo;

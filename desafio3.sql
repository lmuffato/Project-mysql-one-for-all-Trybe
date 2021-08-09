CREATE VIEW historico_reproducao_usuarios AS
SELECT us.usuario_nome AS 'usuario',
song.musica_titulo AS 'nome'
FROM
SpotifyClone.historico AS hist
INNER JOIN
SpotifyClone.usuario AS us ON hist.usuario_id = us.usuario_id
INNER JOIN
SpotifyClone.musicas AS song ON hist.musica_id = song.musica_id
ORDER BY 1 ASC, 2 ASC;

CREATE VIEW historico_reproducao_usuarios AS
SELECT usuarios.usuario, cancoes.cancao AS 'name'
FROM 
SpotifyClone.usuarios AS usuarios
INNER JOIN 
SpotifyClone.historico_reproducoes AS h
ON usuarios.usuario_id = h.usuario_id
INNER JOIN 
SpotifyClone.cancoes AS cancoes
ON  cancoes.cancao_id = h.cancao_id
ORDER BY usuarios.usuario

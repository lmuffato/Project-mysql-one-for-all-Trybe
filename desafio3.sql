CREATE VIEW historico_reproducao_usuarios AS ( 
SELECT usuarios.usuario_nome AS 'usuario',
cancoes.cancao_nome AS 'nome'
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
INNER JOIN SpotifyClone.cancoes AS cancoes 
ON historico.cancao_id = cancoes.cancao_id AND historico.usuario_id = usuarios.usuario_id
ORDER BY `usuario`, `nome`
);

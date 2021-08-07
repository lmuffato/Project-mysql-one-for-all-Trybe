CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario_nome AS 'usuario', C.cancao_nome AS 'nome'
FROM SpotifyClone.usuario U
INNER JOIN SpotifyClone.historico_reproducoes HR
ON HR.usuario_id = U.usuario_id
INNER JOIN SpotifyClone.cancao C
ON HR.cancao_id = C.cancao_id
ORDER BY usuario_nome, cancao_nome;

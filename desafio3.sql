-- challenge 3;

CREATE VIEW historico_reproducao_usuarios AS
  SELECT nome_do_usuario AS usuario,
  cancao AS nome
  FROM SpotifyClone.usuarios AS usuarios
  INNER JOIN SpotifyClone.historico_reproducoes AS historico
  ON usuarios.usuario_id=historico.usuario_id
  INNER JOIN SpotifyClone.cancoes AS cancoes
  ON historico.cancao_id=cancoes.cancao_id
  ORDER BY nome_do_usuario, cancao;
  
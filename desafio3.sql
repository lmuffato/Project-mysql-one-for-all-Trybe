CREATE OR REPLACE VIEW historico_reproducao_usuarios AS
  SELECT u.name AS usuario, s.name AS nome FROM user AS u
  INNER JOIN reproduction_history rh ON rh.user_id = u.id
  INNER JOIN song s on s.id = rh.song_id
  ORDER BY u.name, s.name;

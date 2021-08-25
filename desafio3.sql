-- Consultada solução de Eduardo Costa - Turma 10-A
CREATE VIEW historico_reproducao_usuarios AS
  SELECT u.name_user AS `usuario`,
    m.name_music AS `nome`
  FROM SpotifyClone.history_musics AS hm
    INNER JOIN SpotifyClone.user AS u ON u.user_ID = hm.user_ID
    INNER JOIN SpotifyClone.musics AS m ON m.music_ID = hm.music_ID
    ORDER BY u.name_user ASC, m.name_music;
    
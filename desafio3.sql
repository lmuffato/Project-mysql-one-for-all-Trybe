CREATE View historico_reproducao_usuarios as (
  select usr.name_user as usuario,
  sog.songs_name as nome
  from SpotifyClone.user as usr
  inner join SpotifyClone.songs as sog
  inner join SpotifyClone.history as hist
  on usr.user_id = hist.user_id and sog.songs_id = hist.songs_id
  order by `usuario`, `nome` 
);

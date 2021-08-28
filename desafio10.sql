delimiter $$
create function quantidade_musicas_no_historico(usuario int)
returns int reads sql data begin
declare quantidade_musicas int;
  select count(song_id)
  from history
  where user_id like usuario into quantidade_musicas;
return quantidade_musicas;
end $$
delimiter ;

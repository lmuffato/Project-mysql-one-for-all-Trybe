delimiter $$
create function quantidade_musicas_no_historico(usuario varchar(50))
returns int reads sql data begin
declare quantidade_musicas_no_historico int;
  select count(song_id)
  from history h
  join users u on h.user_id = u.user_id
  where u.name like usuario into quantidade_musicas_no_historico;
return quantidade_musicas_no_historico;
end $$
delimiter ;

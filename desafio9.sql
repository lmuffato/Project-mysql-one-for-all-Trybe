delimiter $$
create procedure albuns_do_artista(in nome_artist varchar(50))
begin
select a.artist artista,
al.album album
from albuns al
join artists a on al.artist_id = a.artist_id
where a.artist like nome_artist
order by album;
end $$
delimiter ;

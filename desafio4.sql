create view top_3_artistas as
select a.artist artista, count(u.user_id) seguidores from following_artists f
join artists a on f.artist_id = a.artist_id
join users u on f.user_id = u.user_id
group by artista order by seguidores desc, artista limit 3;

create view top_3_artistas as
select a.artist artista, count(f.user_id) seguidores from following_artists f
join artists a on f.artist_id = a.artist_id
group by artista order by seguidores desc, artista limit 3;

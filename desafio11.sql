create view cancoes_premium as
select s.song nome,
count(h.user_id) reproducoes
from history h
join songs s on h.song_id = s.song_id
join users u on h.user_id = u.user_id
and u.paymed_id in(2, 3)
group by nome order by nome;

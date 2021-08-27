create view faturamento_atual as
select min(p.price) faturamento_minimo,
max(p.price) faturamento_maximo,
round(avg(p.price),2) faturamento_medio,
sum(p.price) faturamento_total
from users u
join paymeds p on u.paymed_id = p.paymed_id;

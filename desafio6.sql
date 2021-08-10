CREATE VIEW faturamento_atual AS
SELECT min(sa.valor_plano) faturamento_minimo, max(sa.valor_plano) faturamento_maximo,
round(sum(sa.valor_plano)/count(su.plano_id), 2) faturamento_medio, sum(sa.valor_plano) faturamento_total FROM SpotifyClone.Users su
INNER JOIN SpotifyClone.Accounts sa
ON sa.plano_id = su.plano_id;

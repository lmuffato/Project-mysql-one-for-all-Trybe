CREATE VIEW faturamento_atual AS
SELECT (
    SELECT MIN(membership_value)
    FROM SpotifyClone.membership
  ) AS faturamento_minimo,
  (
    SELECT MAX(membership_value)
    FROM SpotifyClone.membership
  ) AS faturamento_maximo,
  ROUND(AVG(m.membership_value), 2) AS faturamento_medio,
  SUM(m.membership_value) AS faturamento_total
FROM SpotifyClone.users AS usr
  INNER JOIN SpotifyClone.membership AS m ON usr.membership_id = m.membership_id;

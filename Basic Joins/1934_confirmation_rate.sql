SELECT S.user_id, ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1.00 ELSE 0.00 END),2) AS confirmation_rate
FROM Signups AS S
LEFT JOIN Confirmations as C
ON S.user_id = C.user_id
GROUP BY S.user_id

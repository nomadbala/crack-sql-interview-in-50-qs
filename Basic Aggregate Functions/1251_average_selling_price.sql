SELECT P.product_id, COALESCE(ROUND(SUM(units * price)::numeric / SUM(units), 2), 0) AS average_price 
FROM Prices AS P
LEFT JOIN UnitsSold as US
ON p.product_id = US.product_id AND US.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY P.product_id


--Listet Kunden auf, denen man ein Upgrade auf den nächst besten Tarif anbieten kann auf Grundlage des Datenverbrauchs
SELECT
    c.name, c.surname, u.GB_consumed, p.data_limit_GB, p.Plan_name

FROM customer c
    JOIN Contracts con ON c.customer_id = con.customer_id
    JOIN Plans p ON con.Plan_id = p.Plan_id
    JOIN usage u ON con.Contract_id = u.Contract_id
WHERE u.GB_consumed > (p.data_limit_GB * 0.9)
ORDER BY u.GB_consumed DESC;


-- Sortiert die Standorte nach Umsatz
SELECT c.zip_code, SUM(p.Plan_price) AS Total_Revenue
    FROM customer c
        JOIN Contracts con ON c.customer_id = con.customer_id
        JOIN Plans p ON con.Plan_id = p.Plan_id
    GROUP BY c.zip_code
ORDER BY p.Plan_price DESC;

-- Gibt die Average Revenue Per User aus
SELECT AVG(p.Plan_price) AS ARPU
    FROM Contracts con
        JOIN Plans p ON con.Plan_id = p.Plan_id
WHERE con.Status = 'Active';


-- Sucht "Premium" user, welche mehr als den ARPU ausgeben
SELECT c.name, c.surname, p.Plan_name, p.Plan_price
    FROM customer c
        JOIN Contracts con ON c.customer_id = con.customer_id
        JOIN Plans p ON con.Plan_id = p.Plan_id
            WHERE con.Status = 'Active'
            AND p.Plan_price > (SELECT AVG(p2.Plan_price)
        FROM Contracts con2
        JOIN Plans p2 ON con2.Plan_id = p2.Plan_id
    WHERE con2.Status = 'Active'
    )
ORDER BY p.Plan_price DESC;

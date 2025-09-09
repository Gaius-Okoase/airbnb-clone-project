USE airbnb_db;
SELECT * FROM 
    Bookings b
INNER JOIN 
    Users u ON b.user_id = u.user_id;

-- LEFT JOIN
SELECT * FROM
    properties p
LEFT JOIN
    reviews r ON p.property_id = r.property_id;
--FULL OUTER JOIN
SELECT * FROM
    users u
FULL OUTER JOIN
    bookings b ON u.user_id = b.user_id

UNION

SELECT * FROM
    users u
RIGHT JOIN
    bookings b ON u.user_id = b.user_id;
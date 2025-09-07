SELECT * FROM 
    Bookings b
INNER JOIN 
    Users u ON b.user_id = u.user_id;

-- LEFT JOIN
SELECT * FROM
    properties p
LEFT JOIN
    reviews r ON p.property_id = r.property_id;
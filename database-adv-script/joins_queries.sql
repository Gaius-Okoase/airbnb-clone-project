SELECT * FROM 
    Bookings b
INNER JOIN 
    Users u ON b.user_id = u.user_id;

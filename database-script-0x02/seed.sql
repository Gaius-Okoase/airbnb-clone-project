USE airbnb_db;
-- Sample Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
(UUID(), 'Ada', 'Obi', 'ada.obi@example.com', 'hashed_pw_ada', '08012345678', 'host'),
(UUID(), 'Tunde', 'Bello', 'tunde.bello@example.com', 'hashed_pw_tunde', '08087654321', 'guest'),
(UUID(), 'Chika', 'Okafor', 'chika.okafor@example.com', 'hashed_pw_chika', NULL, 'admin');

-- Sample Properties
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES
(UUID(), (SELECT user_id FROM users WHERE email = 'ada.obi@example.com'), 'Lekki Lagoon View', 'Modern 2-bedroom apartment with ocean view', 'Lekki, Lagos', 45000.00),
(UUID(), (SELECT user_id FROM users WHERE email = 'ada.obi@example.com'), 'Ikoyi Penthouse', 'Luxury penthouse with rooftop pool', 'Ikoyi, Lagos', 120000.00);

-- Sample Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
(UUID(), (SELECT property_id FROM properties WHERE name = 'Lekki Lagoon View'), (SELECT user_id FROM users WHERE email = 'tunde.bello@example.com'), '2025-09-10', '2025-09-15', 225000.00, 'confirmed'),
(UUID(), (SELECT property_id FROM properties WHERE name = 'Ikoyi Penthouse'), (SELECT user_id FROM users WHERE email = 'tunde.bello@example.com'), '2025-10-01', '2025-10-03', 240000.00, 'pending');

-- Sample Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
(UUID(), (SELECT booking_id FROM bookings WHERE status = 'confirmed'), 225000.00, 'credit_card');

-- Sample Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
(UUID(), (SELECT property_id FROM properties WHERE name = 'Lekki Lagoon View'), (SELECT user_id FROM users WHERE email = 'tunde.bello@example.com'), 5, 'Amazing stay! Clean, quiet, and beautiful view.');

-- Sample Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
(UUID(), (SELECT user_id FROM users WHERE email = 'tunde.bello@example.com'), (SELECT user_id FROM users WHERE email = 'ada.obi@example.com'), 'Hi Ada, is Lekki Lagoon View available next weekend?');

-- Adding myself as an admin for the fun of it
INSERT INTO USERS (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
(UUID(), 'Gaius', 'Gaius', 'gaiusgaius@gmail.com', 'gaiusgaius..', '081023456789', 'admin');
-- =========================================
-- Airbnb Database Seed Script
-- File: seed.sql
-- =========================================

-- USERS
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice@example.com', 'hashed_pw_1', '123-456-7890', 'guest'),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pw_2', '234-567-8901', 'host'),
('33333333-3333-3333-3333-333333333333', 'Carol', 'Williams', 'carol@example.com', 'hashed_pw_3', NULL, 'admin'),
('44444444-4444-4444-4444-444444444444', 'David', 'Brown', 'david@example.com', 'hashed_pw_4', '345-678-9012', 'guest');

-- PROPERTIES
INSERT INTO Properties (property_id, host_id, name, description, location, pricepernight)
VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 'Cozy Apartment', 'A small but cozy apartment in the city center', 'New York, NY', 120.00),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222', 'Beach House', 'Beautiful house near the beach', 'Miami, FL', 250.00);

-- BOOKINGS
INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('bbbbbbbb-1111-1111-1111-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', '2025-11-01', '2025-11-05', 480.00, 'confirmed'),
('bbbbbbbb-2222-2222-2222-bbbbbbbbbbbb', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '44444444-4444-4444-4444-444444444444', '2025-12-10', '2025-12-15', 1250.00, 'pending');

-- PAYMENTS
INSERT INTO Payments (payment_id, booking_id, amount, payment_method)
VALUES
('cccccccc-1111-1111-1111-cccccccccccc', 'bbbbbbbb-1111-1111-1111-bbbbbbbbbbbb', 480.00, 'credit_card'),
('cccccccc-2222-2222-2222-cccccccccccc', 'bbbbbbbb-2222-2222-2222-bbbbbbbbbbbb', 1250.00, 'paypal');

-- REVIEWS
INSERT INTO Reviews (review_id, property_id, user_id, rating, comment)
VALUES
('dddddddd-1111-1111-1111-dddddddddddd', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 5, 'Amazing place! Very clean and cozy.'),
('dddddddd-2222-2222-2222-dddddddddddd', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '44444444-4444-4444-4444-444444444444', 4, 'Great location, but a bit noisy at night.');

-- MESSAGES
INSERT INTO Messages (message_id, sender_id, recipient_id, message_body)
VALUES
('eeeeeeee-1111-1111-1111-eeeeeeeeeeee', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi, I would like to book your apartment.'),
('eeeeeeee-2222-2222-2222-eeeeeeeeeeee', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Sure! The dates are available.');

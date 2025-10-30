# Airbnb Database Schema

This repository contains the **Airbnb database schema** designed for the ALX project.  
It follows the specifications provided, with fully normalized tables, proper constraints, and indexing.

## Repository Structure


---

## **Database Tables**

### 1. Users
Stores all registered users including guests, hosts, and admins.

**Columns:**
- `user_id` (UUID, PK, indexed)
- `first_name` (VARCHAR, NOT NULL)
- `last_name` (VARCHAR, NOT NULL)
- `email` (VARCHAR, UNIQUE, NOT NULL)
- `password_hash` (VARCHAR, NOT NULL)
- `phone_number` (VARCHAR, NULL)
- `role` (ENUM: guest, host, admin, NOT NULL)
- `created_at` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

**Indexes:**  
- `email` indexed for fast lookup.

---

### 2. Properties
Represents listings created by hosts.

**Columns:**
- `property_id` (UUID, PK, indexed)
- `host_id` (UUID, FK → Users.user_id)
- `name` (VARCHAR, NOT NULL)
- `description` (TEXT, NOT NULL)
- `location` (VARCHAR, NOT NULL)
- `pricepernight` (DECIMAL, NOT NULL)
- `created_at` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
- `updated_at` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)

**Indexes:**  
- `property_id` indexed.

---

### 3. Bookings
Tracks reservations made by users for properties.

**Columns:**
- `booking_id` (UUID, PK, indexed)
- `property_id` (UUID, FK → Properties.property_id)
- `user_id` (UUID, FK → Users.user_id)
- `start_date` (DATE, NOT NULL)
- `end_date` (DATE, NOT NULL)
- `total_price` (DECIMAL, NOT NULL)
- `status` (ENUM: pending, confirmed, canceled, NOT NULL)
- `created_at` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

**Indexes:**  
- `property_id` and `booking_id` indexed for performance.

---

### 4. Payments
Records payments made for bookings.

**Columns:**
- `payment_id` (UUID, PK, indexed)
- `booking_id` (UUID, FK → Bookings.booking_id)
- `amount` (DECIMAL, NOT NULL)
- `payment_date` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
- `payment_method` (ENUM: credit_card, paypal, stripe, NOT NULL)

**Indexes:**  
- `booking_id` indexed for faster queries.

---

### 5. Reviews
Stores feedback users leave for properties they booked.

**Columns:**
- `review_id` (UUID, PK, indexed)
- `property_id` (UUID, FK → Properties.property_id)
- `user_id` (UUID, FK → Users.user_id)
- `rating` (INT, CHECK 1–5, NOT NULL)
- `comment` (TEXT, NOT NULL)
- `created_at` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

**Indexes:**  
- `review_id` indexed.

---

### 6. Messages
Supports communication between users.

**Columns:**
- `message_id` (UUID, PK, indexed)
- `sender_id` (UUID, FK → Users.user_id)
- `recipient_id` (UUID, FK → Users.user_id)
- `message_body` (TEXT, NOT NULL)
- `sent_at` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

**Indexes:**  
- `message_id` indexed.

---

## **Relationships**

- **Users → Properties:** One-to-many (host can have multiple properties)  
- **Users → Bookings:** One-to-many (user can make multiple bookings)  
- **Properties → Bookings:** One-to-many (property can have multiple bookings)  
- **Bookings → Payments:** One-to-one or one-to-many (each booking can have payments)  
- **Users → Reviews:** One-to-many (user can review multiple properties)  
- **Properties → Reviews:** One-to-many (property can have multiple reviews)  
- **Users → Messages:** One-to-many (user can send/receive multiple messages)  

---

## **Constraints & Notes**

- All primary keys are UUIDs and indexed for performance.  
- ENUM types enforce valid values for `role`, `status`, and `payment_method`.  
- Foreign keys maintain referential integrity across tables.  
- Non-null constraints ensure required fields are always populated.  
- Rating in Reviews is limited between 1 and 5.  

---

## **Credits**

© 2025 ALX. All rights reserved.  
This schema was designed to meet ALX project requirements for the Airbnb database.


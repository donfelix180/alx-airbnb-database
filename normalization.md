# 🧠 Database Normalization — ALX Airbnb Database Project

## Overview
This document explains the normalization process applied to the **Airbnb Database**.  
The goal is to ensure that all database tables meet the standards of the **Third Normal Form (3NF)** — eliminating redundancy, improving consistency, and maintaining data integrity.

---

## 1️⃣ First Normal Form (1NF)
**Rule:** Each table must have a primary key, and every field should hold only atomic (indivisible) values.

**Application:**
- Every table (User, Property, Booking, Payment, Review, Message) has a primary key (e.g., `user_id`, `property_id`).
- There are no repeating groups or multi-valued attributes.
- All fields store atomic values (e.g., one `email` per user, one `location` per property).

✅ **All tables satisfy 1NF.**

---

## 2️⃣ Second Normal Form (2NF)
**Rule:** The table must be in 1NF, and every non-key column must depend on the whole primary key.

**Application:**
- Since all tables have **single-column primary keys** (UUIDs), each non-key attribute depends entirely on that key.
- For example:
  - In **Booking**, `start_date`, `end_date`, and `total_price` depend entirely on `booking_id`.
  - In **Payment**, all details depend on `payment_id`.

✅ **All tables satisfy 2NF.**

---

## 3️⃣ Third Normal Form (3NF)
**Rule:** The table must be in 2NF, and all non-key columns must depend only on the primary key — not on other non-key attributes.

**Application per table:**

### **User**
- ✅ Each attribute depends only on `user

# Database Schema (DDL)

## 📌 Overview
This task involves defining the database schema for the Airbnb-like application using SQL Data Definition Language (DDL). The schema is designed to support core functionalities such as user management, property listings, bookings, payments, reviews, and messaging.

The schema is implemented in **MySQL** and adheres to principles of **Third Normal Form (3NF)** for optimal data integrity and performance.

---

## 🧱 Schema Highlights

### ✅ Tables Defined
- `users`: Stores user profiles with roles (guest, host, admin)
- `properties`: Contains property listings hosted by users
- `bookings`: Tracks reservations made by users for properties
- `payments`: Records payment details for bookings
- `reviews`: Captures user feedback on properties
- `messages`: Enables communication between users

### 🔐 Keys and Constraints
- All tables use **UUIDs** (`CHAR(36)`) as primary keys
- Foreign key constraints enforce relational integrity
- ENUMs are used for controlled values (e.g., role, status, payment_method)
- Timestamps track creation and updates
- Indexes added for performance on key columns

---

## 🧮 Technologies Used
- **MySQL** (compatible with version 8+)
- **SQL DDL** for table creation and indexing
- **UUIDs** generated via `UUID()` function
- **ENUMs** for categorical fields

---

# 📘 Task 0: Entity-Relationship Diagram (ERD)

## 🧠 Objective
Design an Entity-Relationship Diagram (ERD) for an Airbnb-like application that models the core entities and their relationships. This diagram serves as the foundation for database normalization, schema creation, and data seeding in subsequent tasks.

---

## 🧩 Entities and Attributes

### 1. USER
- `user_id` (PK)
- `first_name`
- `last_name`
- `email`
- `password_hash`
- `phone_number`
- `dob`

### 2. PROPERTY
- `property_id` (PK)
- `host_id` (FK → USER)
- `name`
- `description`
- `location`
- `price_per_night`
- `max_guests`

### 3. REVIEWS
- `review_id` (PK)
- `user_id` (FK → USER)
- `property_id` (FK → PROPERTY)
- `rating`
- `comment`

### 4. BOOKINGS
- `booking_id` (PK)
- `user_id` (FK → USER)
- `property_id` (FK → PROPERTY)
- `start_date`
- `end_date`
- `total_price`

### 5. PAYMENT
- `payment_id` (PK)
- `booking_id` (FK → BOOKINGS)
- `amount`
- `payment_date`
- `payment_method`

### 6. MESSAGE
- `message_id` (PK)
- `sender_id` (FK → USER)
- `receiver_id` (FK → USER)
- `message_body`
- `sent_at`

---

## 🔗 Relationships

- A `USER` can:
  - Host multiple `PROPERTY` listings
  - Make multiple `BOOKINGS`
  - Write multiple `REVIEWS`
  - Send and receive `MESSAGE`s

- A `PROPERTY` can:
  - Be hosted by one `USER`
  - Receive multiple `REVIEWS`
  - Be booked in multiple `BOOKINGS`

- A `BOOKING`:
  - Is made by one `USER`
  - Is for one `PROPERTY`
  - Has one associated `PAYMENT`

- A `REVIEW`:
  - Is written by one `USER`
  - Is for one `PROPERTY`

- A `MESSAGE`:
  - Is sent from one `USER` to another

---

## 🖼️ ERD Visualization

The ERD was created using Draw.io and visually represents the entities, attributes, and relationships described above.  
 
![ERD Diagram](./AirBnB_ERD.png)
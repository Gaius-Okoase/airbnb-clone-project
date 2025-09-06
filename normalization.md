# Database Normalization

## 🎯 Objective
Apply normalization principles to refine the Airbnb-like database design, ensuring it adheres to Third Normal Form (3NF). This process minimizes redundancy, improves data integrity, and enhances scalability.

---

## 🔍 Step-by-Step Normalization

### ✅ First Normal Form (1NF)
- **Atomicity:** All attributes contain atomic values (e.g., `first_name`, `last_name`, `email`).
- **No repeating groups:** Each entity has a unique primary key and no multivalued attributes.
- **Example:** `USER` table separates `first_name` and `last_name` instead of a single `full_name`.

### ✅ Second Normal Form (2NF)
- **Full functional dependency:** All non-key attributes are fully dependent on the entire primary key.
- **Composite keys handled:** In `REVIEWS`, each review is uniquely identified by `review_id`, avoiding partial dependency on `user_id` or `property_id`.
- **Example:** `BOOKINGS` table attributes like `start_date`, `end_date`, and `total_price` depend entirely on `booking_id`.

### ✅ Third Normal Form (3NF)
- **No transitive dependencies:** Non-key attributes do not depend on other non-key attributes.
- **Example:** In `USER`, `email` and `phone_number` depend only on `user_id`, not on each other.
- **Refinements made:**
  - Ensured `PAYMENT` is linked only to `BOOKINGS`, not directly to `USER` or `PROPERTY`.
  - `MESSAGE` entity separates sender and receiver IDs to avoid circular dependencies.

---

## 🧹 Redundancy Eliminated
- Removed potential duplication of user data across `BOOKINGS`, `REVIEWS`, and `MESSAGE`.
- Avoided storing derived data like `total_price` in multiple places—calculated once in `BOOKINGS`.

---

## 🧱 Final Design Integrity
- All entities are in 3NF.
- Relationships are clearly defined with foreign keys.
- Data is modular, scalable, and ready for schema scripting.


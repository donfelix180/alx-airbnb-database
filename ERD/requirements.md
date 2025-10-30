
# Database Requirements

![ER Diagram](./AirBNB%20Clone.drawio.png)

# Task 0: Entity Relationship Diagram (ERD)

## Entities
- User
- Property
- Booking
- Payment
- Review
- Message

## Attributes
Each entity contains the following key attributes:

### User
- user_id (PK)
- first_name
- last_name
- email (unique)
- password_hash
- role (guest, host, admin)
- created_at

### Property
- property_id (PK)
- host_id (FK)
- name
- location
- price_per_night

... etc.

## Relationships
- User (1) → (many) Property
- User (1) → (many) Booking
- Property (1) → (many) Booking
- Booking (1) → (many) Payment
- User (1) → (many) Review
- Property (1) → (many) Review
- User (1) → (many) Message (sender)
- User (1) → (many) Message (recipient)

## Notes
The ERD is created using Draw.io and exported as `ERD.png`.



# Task 0: Entity Relationship Diagram (ERD)

## Entities
- User
- Property
- Booking
- Payment
- Review
- Message

## Attributes
Each entity contains the following key attributes:

### User
- user_id (PK)
- first_name
- last_name
- email (unique)
- password_hash
- role (guest, host, admin)
- created_at

### Property
- property_id (PK)
- host_id (FK)
- name
- location
- price_per_night

... etc.

## Relationships
- User (1) → (many) Property
- User (1) → (many) Booking
- Property (1) → (many) Booking
- Booking (1) → (many) Payment
- User (1) → (many) Review
- Property (1) → (many) Review
- User (1) → (many) Message (sender)
- User (1) → (many) Message (recipient)

## Notes
The ERD is created using Draw.io and exported as 



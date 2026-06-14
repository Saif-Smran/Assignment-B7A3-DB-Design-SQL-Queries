# Football Ticket Booking System - SQL Queries

## Overview

This project contains SQL database design and queries for a **Football Ticket Booking System**. The system manages football matches, ticket bookings, users, and related operations for managing ticket reservations and bookings.

## Project Structure

- **QUERY.sql** - Contains 7 SQL queries for the Football Ticket Booking System
- **readme.md** - Project documentation

## Database Tables

### Core Entities

- **users** - User accounts with full name and user ID
- **matches** - Football matches with tournament category, fixture details, match status, and base ticket price
- **bookings** - Customer ticket reservations linking users to matches, including payment status and total cost

## Key Functionalities

The system supports:

- User management and registration
- Match scheduling and tournament categorization
- Ticket booking and reservation management
- Payment status tracking
- Booking cost calculations
- Match availability filtering

## SQL Queries Included

The `QUERY.sql` file contains 7 comprehensive queries:

1. **Query 1** - Retrieve all upcoming matches in the Champions League with 'Available' status
2. **Query 2** - Search for users by full name (case-insensitive) - names starting with 'Tanvir' or containing 'Haque'
3. **Query 3** - Find bookings with missing payment status and replace with 'Action Required'
4. **Query 4** - Join bookings with users and matches to display user names, match fixtures, and ticket prices
5. **Query 5** - RIGHT JOIN to list all users and their booking IDs (including users with no bookings)
6. **Query 6** - Find bookings with total cost higher than the average booking cost (subquery)
7. **Query 7** - Retrieve the 2nd and 3rd most expensive matches by base ticket price using OFFSET

## Query Techniques Used

- **INNER JOIN** - Connect booking data with user and match information
- **RIGHT JOIN** - Include all users even those without bookings
- **Subqueries** - Calculate average costs for comparison
- **LIKE & ILIKE** - Pattern matching for user searches
- **COALESCE** - Handle NULL values in payment status
- **ORDER BY with LIMIT and OFFSET** - Pagination and sorting
- **WHERE clauses** - Filter by tournament category, match status, and payment status

## Getting Started

### Prerequisites

- PostgreSQL (queries use PostgreSQL syntax - ILIKE operator)
- Basic SQL knowledge

### Setup

1. Create the database tables: `users`, `matches`, `bookings`
2. Execute the queries in `QUERY.sql` to retrieve data and analyze bookings
3. Modify queries as needed for different tournament categories or user searches

## Data Fields

### Users Table

- `user_id` - Unique identifier for each user
- `full_name` - Full name of the user
- `email` - User email address (unique)
- `role` - Type of user (e.g., 'Football Fan', 'Ticket Manager')
- `phone_number` - Contact number (can be NULL)


### Matches Table

- `match_id` - Unique identifier for each match
- `fixture` - Match details (e.g., teams playing)
- `tournament_category` - Tournament name (e.g., 'Champions League')
- `base_ticket_price` - Price per ticket
- `match_status` - Availability status (e.g., 'Available', 'Sold Out')


### Bookings Table

- `booking_id` - Unique identifier for each booking
- `user_id` - Foreign key referencing `Users.user_id`
- `match_id` - Foreign key referencing `Matches.match_id`
- `seat_number` - Assigned seat (can be NULL)
- `payment_status` - Payment status (e.g., 'Confirmed', 'Pending', or NULL)
- `total_cost` - Total booking cost

## Author

**Saif-Smran**

## License

This project is for educational purposes.

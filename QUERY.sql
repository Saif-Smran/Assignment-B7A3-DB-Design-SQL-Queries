-- Query 1: Retrieve all upcoming football matches belonging to the 'Champions League' where the match status is 'Available'.
SELECT
    *
FROM
    matches
WHERE
    tournament_category = 'Champions League'
    AND match_status = 'Available';

-- Query 2: Search for all users whose full names start with 'Tanvir' or contain the phrase 'Haque' (case-insensitive).
SELECT
    *
FROM
    users
WHERE
    full_name ILIKE 'Tanvir%'
    OR full_name LIKE '%Haque%';

-- Query 3: Retrieve all booking records where the payment status is missing (NULL), replacing the empty result with 'Action Required'.
SELECT
    booking_id,
    user_id,
    match_id,
    coalesce(payment_status, 'Action Required') AS "systematic_status"
FROM
    bookings
WHERE
    payment_status IS NULL;

-- Query 4: Retrieve match booking details along with the User's full name and the scheduled Match fixture teams.
SELECT
    booking_id,
    full_name,
    fixture,
    base_ticket_price
FROM
    bookings
    INNER JOIN users ON bookings.user_id = users.user_id
    INNER JOIN matches ON bookings.match_id = matches.match_id;

-- Query 5: Display a comprehensive list of all users and their booking IDs, ensuring that fans who have never bought a ticket are still listed.
SELECT
    u.user_id,
    full_name,
    booking_id
FROM
    bookings
    RIGHT JOIN users u ON bookings.user_id = u.user_id;

-- Query 6: Find all ticket bookings where the total cost is strictly higher than the average cost of all ticket bookings.
SELECT
    booking_id,
    match_id,
    total_cost
FROM
    Bookings
WHERE
    total_cost > (
        SELECT
            AVG(total_cost)
        FROM
            Bookings
    );

-- Query 7: Retrieve the top 2 most expensive matches sorted by base ticket price, skipping the absolute highest premium match.
SELECT
    *
FROM
    matches
ORDER BY
    base_ticket_price DESC
LIMIT
    2
OFFSET
    1;
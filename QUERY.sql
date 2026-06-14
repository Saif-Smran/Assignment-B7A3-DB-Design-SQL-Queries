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
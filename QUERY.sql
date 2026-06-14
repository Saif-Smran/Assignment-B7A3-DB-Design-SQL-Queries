-- Query 1: Retrieve all upcoming football matches belonging to the 'Champions League' where the match status is 'Available'.
select
    *
from
    matches
where
    tournament_category = 'Champions League'
    and match_status = 'Available';

-- Query 2: Search for all users whose full names start with 'Tanvir' or contain the phrase 'Haque' (case-insensitive).
select
    *
from
    users
where
    full_name ilike 'Tanvir%'
    or full_name like '%Haque%';


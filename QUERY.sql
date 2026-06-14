-- Query 1: Retrieve all upcoming football matches belonging to the 'Champions League' where the match status is 'Available'.
select
    *
from
    matches
where
    tournament_category = 'Champions League'
    and match_status = 'Available';
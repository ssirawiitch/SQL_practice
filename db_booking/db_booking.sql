select room_type, count(*) as booking_count
from bookings
where check_in_date >= '2024-01-01' and check_in_date < '2025-01-01'
group by room_type
order by booking_count desc,room_type asc
limit 1;
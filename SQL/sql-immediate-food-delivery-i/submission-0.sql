select
round(
    100.0 * sum(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END)
    /
    count(*)
, 2)
AS immediate_percentage
from delivery
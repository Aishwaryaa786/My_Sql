use sql_invoicing;
select
date, payment_method  , sum(amount) as total_payments
from payments p
join payment_methods pm 
on p.payment_method =  pm.payment_method_id
where date > '2019-01-01' 
group by date, payment_method
order by date asc
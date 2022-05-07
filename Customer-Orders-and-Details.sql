select c.city, count(o.cust_id) as n_ord, count(distinct(o.cust_id)) as n_cust, sum(o.total_order_cost) as t_cst  
from orders o
left join customers c on c.id = o.cust_id
group by c.city
having count(o.cust_id) > 5
order by c.city

          select c.region,sum(amount) as total_revenue, count(distinct c.customer_name) as total_customer
          from customers as c
          join orders as o
          on c.customer_id = o.customer_id
          where o.status = 'completed'
          group by c.region
          order by total_revenue desc
--Calculate the total amount of operations per currency
select devise
       ,sum(montant)AS sum_of_operations_per_currency
FROM operations_financieres
group by devise ;

--Calculate the average amount per type of financial operation.
select type_operation
       ,avg(montant) AS average_amount
from operations_financieres
group by type_operation;

--Identify the company with the highest total amount of financial operations.
select nom
      ,sum(montant) AS highest_total_amount
from operations_financieres ,entreprises 
order by highest_total_amount DESC
LIMIT 1 ;



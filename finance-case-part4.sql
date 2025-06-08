--Find the top 3 companies with the most frequent "Paiement indemnité" operations.
SELECT
e.nom
,count(o.type_operation) as nombre_des_operation
from operations_financieres o join entreprises e on e.id=o.entreprise_id
where o.type_operation='Paiement indemnité'
group by e.nom
order by nombre_des_operation DESC
limit 3
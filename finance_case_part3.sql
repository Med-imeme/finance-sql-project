--For each company and operation type, calculate the total operation amount.
SELECT e.nom ,o.type_operation,sum(o.montant) as total_value
FROM operations_financieres o JOIN entreprises e on o.entreprise_id=e.id
group by e.nom ,o.type_operation;

--For each sector, calculate the total amount of "Investissement capital" operations.
SELECT e.nom ,o.type_operation,sum(o.montant) as total_value,e.secteur
FROM  operations_financieres o JOIN entreprises e on o.entreprise_id=e.id
WHERE o.type_operation='Investissement capital'
GROUP BY e.secteur
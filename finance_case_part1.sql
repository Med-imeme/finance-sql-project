-- Listing all financial operations that occurred in TND 
--SELECT *
--FROM operations_financieres
--WHERE devise='TND' ;
--Find all operations of type "Octroi de prêt" done by Tunis Finance.
SELECT *
FROM operations_financieres
WHERE type_operation ='Octroi de prêt' AND entreprise_id =1;

-- Use the cpnv_park database
USE cpnv_park;
GO
 
-- attempt to run DROP VIEW only if it exists
DROP VIEW IF EXISTS dbo.number_of_data;
GO
 
CREATE VIEW number_of_data AS SELECT
(SELECT Count(id) FROM dbo.attractions) as "Atrtractions",
(SELECT Count(id) FROM dbo.employees) as "Employés",
(SELECT Count(id) FROM dbo.fares) as "Types de tarifs",
(SELECT Count(id) FROM dbo.paymentMethods) as "Moyens de paiement",
(SELECT Count(id) FROM dbo.products) as "Produits",
(SELECT Count(id) FROM dbo.purchasingWays) as "Modalités d'achat",
(SELECT Count(id) FROM dbo.restaurants) as "Restaurants",
(SELECT Count(id) FROM dbo.roles) as "Roles",
(SELECT Count(id) FROM dbo.stands) as "Stands",
(SELECT Count(id) FROM dbo.stands_contain_products) as "Produits dans les stands",
(SELECT Count(id) FROM dbo.transactions) as "Transactions",
(SELECT Count(id) FROM dbo.transactions_contain_fares) as "Tarifs dans les transactions",
(SELECT Count(id) FROM dbo.types) as "Types",
(SELECT Count(id) FROM dbo.zones) as "Zones";
GO
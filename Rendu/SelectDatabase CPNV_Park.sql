USE cpnv_park
GO

/* Tableau des transactions avec :
- numéro de la transaction,
- date et heure de la réalisation de la transaction,
- moyen de paiement utilisé,
- modalité d'achat (en ligne, guichet du parc, agence de loisir),
- date d'utilisation (jour réservé pour le passage dans le parc),
- tarif,
- quantité de billet pour chaque tarif.
NB : une transaction peut contenir plusieurs tarifs et chacun de ces tarifs peut contenir plusieurs billet.*/
SELECT transactions.number AS "Numéro de transaction",
transactions.dateTime AS "Date et heure",
paymentMethods.name AS "Moyen de paiement",
purchasingWays.name AS "Modalité d'achat",
transactions_contain_fares.dateOfUse AS "Date d'utilisation",
fares.name AS "Tarif",
transactions_contain_fares.quantity AS "Quantité"
FROM transactions
INNER JOIN purchasingWays ON transactions.purchasingWay_id = purchasingWays.id
INNER JOIN paymentMethods ON transactions.paymentMethod_id = paymentMethods.id
INNER JOIN transactions_contain_fares ON transactions.id = transactions_contain_fares.transaction_id
INNER JOIN fares ON transactions_contain_fares.fare_id = fares.id
GO

/*Tableau des employés avec :
- Nom de famille de l'employé,
- Prénom de l'employé,
- Rôle de l'employé,
- Lieu de travail particulier s'il y en a un (restaurant, attraction, stand ou aucune de ces options)*/
SELECT employees.lastName AS "Nom",
employees.firstName AS "Prénom",
roles.name AS "Role",
restaurants.name AS "Restaurant",
attractions.name AS "Attraction",
stands.name AS "Stand"
FROM employees
INNER JOIN roles ON employees.role_id = roles.id
LEFT JOIN restaurants ON employees.restaurant_id = restaurants.id
LEFT JOIN attractions ON employees.attraction_id = attractions.id
LEFT JOIN stands ON employees.stand_id = stands.id
GO

/*Inventaire des produits du parc avec pour chaque produit :
- les stands dans lesquels il se trouve et en quelle quantité dans chaque stand
- le type et la zone des stands concernés*/
SELECT products.name AS "Produit", 
stands_contain_products.quantity AS  "Quantité",
stands.name AS "Stand",
types.name AS "Type",
zones.name AS "Zone"
FROM stands
INNER JOIN zones ON stands.zone_id = zones.id
INNER JOIN types ON stands.type_id = types.id
INNER JOIN stands_contain_products ON stands.id = stands_contain_products.stand_id
INNER JOIN products ON stands_contain_products.product_id = products.id
ORDER BY Produit
GO
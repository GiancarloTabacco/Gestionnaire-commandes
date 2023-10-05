### Tableau : Clients

| Colonne    | Type de Données   | Clé Primaire | Clé Foréne  | Description                                 |
| -------- | --------------- | -------------- | --------------- | ------------------------------------------- |
| ID       | INT             | Oui             | Non              | Identifiant unique du client             |
| Nom      | VARCHAR(255)    | Non             | Non              | Nom du client                           |
| Email    | VARCHAR(255)    | Non             | Non              | Adresse e-mail du client              |

### Tableau : Produits

| Colonne    | Type de Données   | Clé Primaire | Clé Foréne  | Description                                 |
| -------- | --------------- | -------------- | --------------- | ------------------------------------------- |
| ID       | INT             | Oui             | Non              | Identifiant unique du produit            |
| Nom      | VARCHAR(255)    | Non             | Non              | Nom du produit                          |
| Prix     | DECIMAL(10, 2)  | Non             | Non              | Prix du produit                          |

### Tableau : Commandes

| Colonne    | Type de Données   | Clé Primaire | Clé Foréne  | Description                                 |
| -------- | --------------- | -------------- | --------------- | ------------------------------------------- |
| ID       | INT             | Oui             | Non              | Identifiant unique de la commande             |
| Date     | DATE            | Non             | Non              | Date de la commande                            |
| ClientID | INT             | Non             | Oui (Clients.ID) | Identifiant du client (Clé foréne à la table Clients) |

### Tableau : DétailCommande

| Colonne    | Type de Données   | Clé Primaire | Clé Foréne  | Description                                 |
| -------- | --------------- | -------------- | --------------- | ------------------------------------------- |
| ID         | INT             | Oui             | Non                 | Identifiant unique du détail de la commande         |
| CommandeID | INT             | Non             | Oui (Commandes.ID)  | Identifiant de la commande (Clé foréne à la table Commandes) |
| ProduitID  | INT             | Non             | Oui (Produits.ID)   | Identifiant du produit (Clé foréne à la table Produits) |
| Quantité   | INT             | Non             | Non              | Quantité du produit dans la commande |

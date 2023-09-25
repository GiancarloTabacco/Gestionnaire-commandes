## Tabla: Clients

| Columna    | Tipo de Datos     | Clave Primaria| Descripción|
|---|---|---|---|
| ID         | INT               | Sí            | Identificador único del cliente |
| Nom        | VARCHAR(255)      | No            | Nombre del cliente |
| Email      | VARCHAR(255)      | No            | Correo electrónico del cliente |

## Tabla: Produits

| Columna    | Tipo de Datos     | Clave Primaria| Descripción|
|---|---|---|---|
| ID         | INT               | Sí            | Identificador único del producto |
| Nom        | VARCHAR(255)      | No            | Nombre del producto |
| Prix       | DECIMAL(10, 2)    | No            | Precio del producto |

## Tabla: Commandes

| Columna    | Tipo de Datos     | Clave Primaria| Descripción|
|---|---|---|---|
| ID         | INT               | Sí            | Identificador único de la orden |
| Date       | DATE              | No            | Fecha de la orden |
| ClientID   | INT               | No            | Identificador del cliente |

## Tabla: DétailCommande

| Columna    | Tipo de Datos     | Clave Primaria| Descripción|
|---|---|---|---|
| ID         | INT               | Sí            | Identificador único del detalle de la orden |
| CommandeID | INT               | No            | Identificador de la orden |
| ProduitID  | INT               | No            | Identificador del producto |
| Quantité   | INT               | No            | Cantidad del producto en la orden |

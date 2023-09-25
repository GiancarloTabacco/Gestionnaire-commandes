-- Créer la base de données
CREATE DATABASE Magasin;

-- Utiliser la base de données
USE Magasin;

-- Créer la table Clients
CREATE TABLE Clients (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255),
    Email VARCHAR(255)
);

-- Créer la table Produits
CREATE TABLE Produits (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255),
    Prix DECIMAL(10, 2)
);

-- Créer la table Commandes
CREATE TABLE Commandes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    ClientID INT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ID)
);

-- Créer la table DétailCommande pour représenter les produits dans chaque commande
CREATE TABLE DétailCommande (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CommandeID INT,
    ProduitID INT,
    Quantité INT,
    FOREIGN KEY (CommandeID) REFERENCES Commandes(ID),
    FOREIGN KEY (ProduitID) REFERENCES Produits(ID)
);
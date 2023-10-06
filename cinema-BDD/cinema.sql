-- Création de la table Complexes
CREATE TABLE Complexes (
    complexe_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT,
    adresse TEXT
);

-- Création de la table Salles
CREATE TABLE Salles (
    salle_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT,
    capacite INTEGER,
    complexe_id INTEGER,
    FOREIGN KEY (complexe_id) REFERENCES Complexes(complexe_id)
);

-- Création de la table Films
CREATE TABLE Films (
    film_id INTEGER PRIMARY KEY AUTOINCREMENT,
    titre TEXT,
    duree INTEGER,
    description TEXT
);

-- Création de la table Séances
CREATE TABLE Seances (
    seance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    heure TIME,
    date DATE,
    salle_id INTEGER,
    film_id INTEGER,
    prix REAL, -- Utilisation de REAL pour les nombres décimaux
    FOREIGN KEY (salle_id) REFERENCES Salles(salle_id),
    FOREIGN KEY (film_id) REFERENCES Films(film_id)
);

-- Création de la table Utilisateurs
CREATE TABLE Utilisateurs (
    utilisateur_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT,
    prenom TEXT,
    email TEXT,
    mot_de_passe TEXT,
    role TEXT,
    complexe_id INTEGER,
    FOREIGN KEY (complexe_id) REFERENCES Complexes(complexe_id)
);

-- Création de la table Réservations
CREATE TABLE Reservations (
    reservation_id INTEGER PRIMARY KEY AUTOINCREMENT,
    seance_id INTEGER,
    utilisateur_id INTEGER,
    nombre_de_places INTEGER,
    FOREIGN KEY (seance_id) REFERENCES Seances(seance_id),
    FOREIGN KEY (utilisateur_id) REFERENCES Utilisateurs(utilisateur_id)
);

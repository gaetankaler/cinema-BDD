INSERT INTO Cinemas (nom, adresse) VALUES
('Cinema-1', '7 place De La Rotonde 75001 Paris'),
('Cinema-2', '83 Bd du Montparnasse 75006 Paris'),
('Cinema-3', '1 Bd Poissonnière 75002 Paris');

INSERT INTO Salles (nom, capacite, id_cinema) VALUES
('Salle 1', 140, 1),
('Salle 2', 120, 1),
('Salle 3', 100, 1),
('Salle 4', 80, 1),
('Salle 5', 80, 1),
('Salle 6', 140, 2),
('Salle 7', 120, 2),
('Salle 8', 100, 2),
('Salle 9', 80, 2),
('Salle 10', 80, 2),
('Salle 11', 140, 3),
('Salle 12', 120, 3),
('Salle 13', 100, 3),
('Salle 14', 80, 3),
('Salle 15', 80, 3);

INSERT INTO Films (titre, genre, description, temps_film VALUES
('Film 1', 'comédie', 'Description du Film 1', '1:20:00'),
('Film 2', 'horreur', 'Description du Film 2', '1:05:00'),
('Film 3', 'amour', 'Description du Film 3', '1:45:54'),
('Film 4', 'action', 'Description du Film 4', '1:10:45'),
('Film 5', 'science fiction', 'Description du Film 5', '1:25:45'),
('Film 6', 'comédie', 'Description du Film 6', '1:50:34'),
('Film 7', 'amour', 'Description du Film 7', '1:33:35'),
('Film 8', 'comédie', 'Description du Film 8', '1:35:39'),
('Film 9', 'roman', 'Description du Film 9', '2:28:14');

INSERT INTO Seances (heure-debut, date, id_salle, id_film) VALUES
('16:00', '17:00','2023-12-08', 1, 1, 1),
('16:00', '17:00','2023-12-08', 1, 2, 2),
('16:00', '17:00','2023-12-08', 2, 1, 3),
('16:00', '17:00','2023-12-08', 2, 1, 3),
('16:00', '17:30','2023-12-08', 2, 1, 3),
('16:00', '17:30','2023-12-08', 2, 1, 3),
('16:00', '17:30','2023-12-08', 2, 1, 3),
('16:00', '17:30','2023-12-08', 2, 1, 3);

INSERT INTO Utilisateurs (nom, prenom, email, mot_de_passe, date_naissance, id_role) VALUES
('Admin', 'Admin', 'admin@example.com', 'motdepasseadmin', '1995-04-18', 1),
('Utilisateur', 'Utilisateur', 'utilisateur@example.com', 'motdepasseutilisateur', '1987-11-25', 2),
('Client', 'client', 'client@example.com', 'motdepasseclient', '2002-08-07',3),
('Client1', 'client1', 'client1@example.com', 'motdepasseclient1', '1990-02-15',3),
('Client2', 'client2', 'client2@example.com', 'motdepasseclient2', '1983-06-29',3),
('Client3', 'client3', 'client3@example.com', 'motdepasseclient3', '1999-12-03',3),
('Client4', 'client4', 'client4@example.com', 'motdepasseclient4', '2005-10-11',3),
('Client5', 'client5', 'client5@example.com', 'motdepasseclient5', '1982-03-20',3),
('Client6', 'client6', 'client6@example.com', 'motdepasseclient6', '1998-07-01',3),
('Client7', 'client7', 'client7@example.com', 'motdepasseclient7', '2001-09-14',3),
('Client8', 'client8', 'client8@example.com', 'motdepasseclient8', '1993-05-08',3),
('Client9', 'client9', 'client9@example.com', 'motdepasseclient9', '1986-12-22',3),
('Client10', 'client10', 'client10@example.com', 'motdepasseclient10', '2000-11-09',3),
('Client11', 'client11', 'client11@example.com', 'motdepasseclient11', '1991-01-31',3),
('Client12', 'client12', 'client12@example.com', 'motdepasseclient12', '1984-08-17',3),
('Client13', 'client13', 'client13@example.com', 'motdepasseclient13', '1997-03-06',3),
('Client14', 'client14', 'client14@example.com', 'motdepasseclient14', '2004-06-27',3),
('Client15', 'client15', 'client15@example.com', 'motdepasseclient15', '1989-10-04',3),
('Client16', 'client16', 'client16@example.com', 'motdepasseclient16', '1996-02-12',3),
('Client17', 'client17', 'client17@example.com', 'motdepasseclient17', '1981-07-23',3),
('Client18', 'client18', 'client18@example.com', 'motdepasseclient18', '2003-04-28',3),
('Client19', 'client19', 'client19@example.com', 'motdepasseclient19', '1988-09-19',3),
('Client20', 'client20', 'client20@example.com', 'motdepasseclient20', '1994-01-10',3),
('Client21', 'client21', 'client21@example.com', 'motdepasseclient21', '1985-11-03',3),
('Client22', 'client22', 'client22@example.com', 'motdepasseclient22', '2006-05-15',3),
('Client23', 'client23', 'client23@example.com', 'motdepasseclient23', '1992-03-30',3),
('Client24', 'client24', 'client24@example.com', 'motdepasseclient24', '1998-08-09',3),
('Client25', 'client25', 'client25@example.com', 'motdepasseclient25', '1980-12-28',3),
('Client26', 'client26', 'client26@example.com', 'motdepasseclient26', '2007-07-07',3),
('Client27', 'client27', 'client27@example.com', 'motdepasseclient27', '1999-06-26',3),
('Client28', 'client28', 'client28@example.com', 'motdepasseclient28', '1987-02-14',3),
('Client29', 'client29', 'client29@example.com', 'motdepasseclient29', '2008-09-02',3),
('Client30', 'client30', 'client30@example.com', 'motdepasseclient30', '1989-08-12',3);

INSERT INTO Reservations (nombre_de_places, id_utilisateur, id_tarif, id_seance) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 2, 1),
(4, 4, 3, 1),
(5, 5, 1, 2),
(6, 1, 1, 1);

INSERT INTO Tarifs (description, prix) VALUES
('Plein tarif', 9.20),
('Étudiant', 7.60),
('Moins de 14 ans', 5.90);


INSERT INTO roles (role_name) VALUES 
('Admin'),
('Utilisateur'),
('Client');

--
SELECT c.nom AS cinema_name, s.nom AS cinema_room, f.titre AS movie_title, COUNT(r.id_reservation) AS occupied_capacity, s.capacite
FROM seances se
JOIN salles s ON se.id_salle = s.id_salle
JOIN cinemas c ON s.id_cinema = c.id_cinema
JOIN films f ON se.id_film = f.id_film
LEFT JOIN reservations r ON se.id_seance = r.id_seance
WHERE se.date_seance = '2023-12-08'
  AND se.heure_debut = '16:00'
  AND se.heure_fin = '17:00'
GROUP BY cinema_name, cinema_room, movie_title, s.capacite;

--
SELECT u.nom, u.prenom, t.description, t.prix
FROM reservations r
JOIN utilisateurs u ON r.id_utilisateur = u.id_utilisateur 
JOIN tarifs t ON r.id_tarif = t.id_tarif 
JOIN seances s ON r.id_seance = s.id_seance 
WHERE s.date_seance = '2023-12-08' 
  AND s.heure_debut = '16:00'
  AND s.heure_fin = '17:00';

--
SELECT s.date_seance, s.heure_debut, s.heure_fin, f.titre, c.nom AS cinema_name, h.nom AS hall_name
FROM seances s
JOIN salles h ON s.id_salle = h.id_salle
JOIN cinemas c ON h.id_cinema = c.id_cinema
JOIN films f ON s.id_film = f.id_film
WHERE s.date_seance = '2023-12-08'
  AND s.id_film = 2
  AND s.heure_debut = '16:00'
  AND s.heure_fin = '17:00';

--
SELECT f.titre AS movie_title, f.genre AS movie_genre, s.date_seance AS session_date
FROM seances s
JOIN films f ON s.id_film = f.id_film
JOIN salles h ON s.id_salle = h.id_salle
JOIN cinemas c ON h.id_cinema = c.id_cinema
WHERE c.nom = 'cinema-1'
  AND s.date_seance = '2023-12-08';

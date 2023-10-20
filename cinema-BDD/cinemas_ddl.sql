DROP TABLE IF EXISTS `cinemas`;
CREATE TABLE `cinemas` (
  `id_cinema` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `adresse` varchar(70) NOT NULL,
  PRIMARY KEY (`id_cinema`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `films`;
CREATE TABLE `films` (
  `id_film` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(45) NOT NULL,
  `genre` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `temps_film` time NOT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `salles`;
CREATE TABLE `salles` (
  `id_salle` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(15) NOT NULL,
  `capacite` int NOT NULL,
  `id_cinema` int NOT NULL,
  PRIMARY KEY (`id_salle`),
  KEY `id_cinema_idx` (`id_cinema`),
  CONSTRAINT `id_cinema` FOREIGN KEY (`id_cinema`) REFERENCES `cinemas` (`id_cinema`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `seances`;
CREATE TABLE `seances` (
  `id_seance` int NOT NULL AUTO_INCREMENT,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `date_seance` date NOT NULL,
  `id_salle` int NOT NULL,
  `id_film` int NOT NULL,
  PRIMARY KEY (`id_seance`),
  KEY `id_salle_idx` (`id_salle`),
  KEY `id_film_idx` (`id_film`),
  CONSTRAINT `id_film` FOREIGN KEY (`id_film`) REFERENCES `films` (`id_film`),
  CONSTRAINT `id_salle` FOREIGN KEY (`id_salle`) REFERENCES `salles` (`id_salle`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `tarifs`;
CREATE TABLE `tarifs` (
  `id_tarif` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `prix` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id_tarif`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE `utilisateurs` (
  `id_utilisateur` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mot_de_passe` varchar(100) NOT NULL,
  `date_naissance` date NOT NULL,
  `id_role` int NOT NULL,
  PRIMARY KEY (`id_utilisateur`),
  KEY `id_role_idx` (`id_role`),
  CONSTRAINT `id_role` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
  `id_reservation` int NOT NULL AUTO_INCREMENT,
  `id_seance` int NOT NULL,
  `id_utilisateur` int NOT NULL,
  `id_tarif` int NOT NULL,
  `nombre_de_places` int NOT NULL,
  PRIMARY KEY (`id_reservation`),
  KEY `id_utilisateur_idx` (`id_utilisateur`),
  KEY `id_tarif_idx` (`id_tarif`),
  KEY `id_seance_idx` (`id_seance`),
  CONSTRAINT `id_seance` FOREIGN KEY (`id_seance`) REFERENCES `seances` (`id_seance`),
  CONSTRAINT `id_tarif` FOREIGN KEY (`id_tarif`) REFERENCES `tarifs` (`id_tarif`),
  CONSTRAINT `id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
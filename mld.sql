Voitures = (id INT, annee DATE, transmission VARCHAR(50), motorisation VARCHAR(50));
Contact = (idcontact INT, nom VARCHAR(50), prenom VARCHAR(50), adresse VARCHAR(50), telephone VARCHAR(50), email VARCHAR(50), commentaires VARCHAR(150));
marque = (libeleMarque VARCHAR(50), #id);
model = (libeleModel VARCHAR(50), #libeleMarque);
Evenements = (Id_Evenements INT, nom VARCHAR(50), dates DATETIME, description VARCHAR(50), photo VARCHAR(50));
login = (Id_login INT, usurname VARCHAR(50), pwd VARCHAR(50), nom VARCHAR(50));
Inscription = (Id_Inscription INT, nom VARCHAR(50), prenom VARCHAR(50), mail VARCHAR(50), tel VARCHAR(50), usurname VARCHAR(50), pwd VARCHAR(50));
demandeDessai = (Id_demandeDessai INT, dates DATETIME, #id, #Id_Inscription);
organiser = (#id, #Id_Evenements);

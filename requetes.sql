#se connecter 
SELECT * FROM Utilisateur WHERE `MDP` = "salut" AND `Identifiant`= "coucou"

#cree un compte particulier
INSERT INTO Particulier (numero,Nom,Prenom,NumeroInscription) VALUES ("1","Jean","michel","12");
INSERT INTO  Telephone (NumTel,TypeNumTel,numero) VALUES ("0687853089","portable","1");
INSERT INTO AdressePostal (AdressePostal,NomAdressePostal,CodePostal,Ville,numero) VALUES("6 Rue Denie Papin","Etage1","51100","Reims","1");
INSERT INTO Mail (id,AdresseElectronique) VALUES ("1","soso12@gmail.com");

#entreprise 
INSERT INTO Entreprise (EntrepriseSiret,NumTel,TypeNumTel,AdressePostal,NomAdressePostal,CodePostal,CodePostal,Ville,NumeroTVA,EntrepriseNom,urlSite,AdresseElectronique,NumeroInscription)
VALUES ("123 456 789 00013","0746980876","fixe","5 Rue Epynalt","Garage","51430","Tinqueux","FR 89 128370925",)
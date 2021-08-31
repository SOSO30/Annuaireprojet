#se connecter 
SELECT * FROM Utilisateur WHERE `MDP` = "salut" AND `Identifiant`= "coucou"

#cree un compte particulier
INSERT INTO Particulier (numero,Nom,Prenom,NumeroInscription) VALUES ("1","Jean","michel","12");
INSERT INTO  Telephone (NumTel,TypeNumTel,numero) VALUES ("0687853089","portable","1");
INSERT INTO AdressePostal (AdressePostal,NomAdressePostal,CodePostal,Ville,numero) VALUES("6 Rue Denie Papin","Etage1","51100","Reims","1");
INSERT INTO Mail (id,AdresseElectronique,numero) VALUES ("1","soso12@gmail.com","1");

#entreprise 
INSERT INTO Entreprise (EntrepriseSiret,NumTel,TypeNumTel,AdressePostal,NomAdressePostal,CodePostal,Ville,NumeroTVA,EntrepriseNom,urlSite,AdresseElectronique,NumeroInscription)
VALUES ("123 456 789 0001,"0746980876","fixe","5 Rue Epynalt","Garage","51430","Tinqueux","FR 89 128370925","Gilbert Entreprise","Gilbert-entreprise.fr","gilbertentreprise@gmail.com","13");

#afficher les particulier avec leurs telephones,leurs adresses, et leur mail

SELECT * FROM Particulier 
left join Telephone on Telephone.numero=Particulier.numero 
left join AdressePostal on AdressePostal.numero=Particulier.numero
left join Mail on Mail.numero=Particulier.numero;
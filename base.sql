#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Utilisateur
#------------------------------------------------------------

CREATE TABLE Utilisateur(
        numero      Int  Auto_increment  NOT NULL ,
        MDP         Varchar (5) NOT NULL ,
        Identifiant Varchar (20) NOT NULL
	,CONSTRAINT Utilisateur_PK PRIMARY KEY (numero)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Entreprise
#------------------------------------------------------------

CREATE TABLE Entreprise(
        EntrepriseSiret     Varchar (20) NOT NULL ,
        NumTel              Varchar (20) NOT NULL ,
        TypeNumTel          Varchar (20) NOT NULL ,
        AdressePostal       Varchar (50) NOT NULL ,
        NomAdressePostal    Varchar (20) NOT NULL ,
        CodePostal          Varchar (5) NOT NULL ,
        Ville               Varchar (20) NOT NULL ,
        NumeroTVA           Varchar (20) NOT NULL ,
        EntrepriseNom       Varchar (20) NOT NULL ,
        urlSite             Varchar (50) NOT NULL ,
        AdresseElectronique Varchar (50) NOT NULL ,
        NumeroInscription   Varchar (20) NOT NULL
	,CONSTRAINT Entreprise_PK PRIMARY KEY (EntrepriseSiret)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Particulier
#------------------------------------------------------------

CREATE TABLE Particulier(
        numero            Int  Auto_increment  NOT NULL ,
        Nom               Varchar (50) NOT NULL ,
        Prenom            Varchar (50) NOT NULL ,
        NumeroInscription Varchar (20) NOT NULL
	,CONSTRAINT Particulier_PK PRIMARY KEY (numero)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Telephone
#------------------------------------------------------------

CREATE TABLE Telephone(
        NumTel     Varchar (20) NOT NULL ,
        TypeNumTel Varchar (20) NOT NULL ,
        numero     Int NOT NULL
	,CONSTRAINT Telephone_PK PRIMARY KEY (NumTel)

	,CONSTRAINT Telephone_Particulier_FK FOREIGN KEY (numero) REFERENCES Particulier(numero)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: AdressePostal
#------------------------------------------------------------

CREATE TABLE AdressePostal(
        AdressePostal    Varchar (50) NOT NULL ,
        NomAdressePostal Varchar (20) NOT NULL ,
        CodePostal       Varchar (5) NOT NULL ,
        Ville            Varchar (20) NOT NULL ,
        numero           Int NOT NULL
	,CONSTRAINT AdressePostal_PK PRIMARY KEY (AdressePostal)

	,CONSTRAINT AdressePostal_Particulier_FK FOREIGN KEY (numero) REFERENCES Particulier(numero)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Mail
#------------------------------------------------------------

CREATE TABLE Mail(
        id                  Varchar (5) NOT NULL ,
        AdresseElectronique Varchar (50) NOT NULL ,
        numero              Int NOT NULL
	,CONSTRAINT Mail_PK PRIMARY KEY (id)

	,CONSTRAINT Mail_Particulier_FK FOREIGN KEY (numero) REFERENCES Particulier(numero)
)ENGINE=InnoDB;


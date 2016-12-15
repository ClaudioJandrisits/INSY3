create database if not exists Filialsystem;

use Filialsystem;

create table if not exists filiale(
						pk_filialId varchar(10) primary key,
						filialbzeichnung varchar(20),
						PLZ char(6),
						ort varchar(35),
						leiterSeit date,
						fk_Filialleiter varchar (30),
						constraint Filialleiter_leitet_Filiale
							foreign Key (fk_Filialleiter)
								references mitarbeiter(pk_MANr)
);

create table if not exists mitarbeiter(
						pk_MANr varchar(30) primary Key,
						vorname varchar(20),
						nachname varchar(20),
						arbeitsStd int(6),
						fk_filialId varchar(10),
						constraint mitarbeiter_arbeitet_Filiale
							foreign key (fk_filialId)
								references filiale(pk_filialId)
						
);



create table if not exists produkt(
						pk_ProduktNr varchar(10) primary Key,
						produktbezeichnung varchar(50),
						produktbeschreibung varchar (150),
						preis decimal(4,2)
);

create table if not exists filialangebot(
						pk_fk_ProduktNr varchar(10),
						pk_fk_filialId varchar(10),
						constraint Produkt_Filiale
							primary Key(pk_fk_ProduktNr, pk_fk_filialId),
						constraint Produkt_Angebot
							foreign Key (pk_fk_ProduktNr)
								references produkt(pk_ProduktNr),
						constraint FilialId
							foreign Key (pk_fk_filialId)
								references filiale(pk_filialId)
							
);
create table if not exists produktbetreuer(
					pk_fk_MANr varchar(10),
					pk_fk_filialId varchar(10),
					pk_fk_produktNr varchar(10),
					constraint ProduktBetr
						primary Key (pk_fk_MANr, pk_fk_filialId, pk_fk_produktNr),
					constraint BetreuerId
						foreign Key (pk_fk_MANr)
							references mitarbeiter(pk_MANr),
					constraint Produkt_FilialId
						foreign Key (pk_fk_filialId)
							references filiale(pk_filialId),
					constraint Betreuer_ProduktNr
						foreign Key (pk_fk_produktNr)
							references produkt(pk_ProduktNr)
);
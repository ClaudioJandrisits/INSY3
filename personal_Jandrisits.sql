create database if not exists personal;

use personal;


#Abteilung (pk_AbteilungsNr, Abteilungsname)
create table if not exists Abteilung(
					pk_abt_Nr integer primary key,
					Abteilungsname varchar(60) );

#integer char(n) fixe Anzahl von n Zeichen, varchar(n) variabel
#Personal(pk_PersNr, vorName, NachName, plz, Ort, Straße, Nr, fk_Abt_Nr)

create table if not exists Personal(
								pk_PersNr char(5) primary key, 
								vorName varchar(50), 
								NachName varchar(50), 
								plz char(6),
								Ort varchar(50),
								Straße varchar(50),
								Nr char(10),
								fk_Abt_Nr integer,
								constraint fk_Personal_Abteilung
									foreign key(fk_Abt_Nr) 
										references Abteilung(pk_abt_Nr) );

#Sprachkenntnisse (pk_Sprache, pk_fk_PersonalNr, Sprachlevel)

create table if not exists Sprachkenntnisse(
								pk_Sprache varchar (40),
								pk_fk_PersonalNr char(5), 
								Sprachlevel char(5),
								constraint pk_Sprachkey 
										primary key(pk_Sprache, pk_fk_PersonalNr), 
								constraint fk_Sprache_personal 
										foreign key(pk_fk_PersonalNR)
											references Personal(pk_PERSNR) );

create table if not exists Projekt(
							pk_ProjektNr integer auto_increment primary key,
                            Beschreibung varchar(200)
							);

create table if not exists Tätigkeit(
							pk_TätigkeitsNr integer auto_increment primary key,
                            Tätigkeit varchar(50),
                            Stundenlohn decimal(6,2)
							);

create table if not exists arbeitet_an(
							pk_fk_PersNr char(5),
                            pk_fk_ProjektNr integer,
                            fk_TätigkeitsNr integer,
                            Stunden decimal(10,2),
                            constraint pk_arbeitet_an
								primary key(pk_fk_PersNr,pk_fk_ProjektNr),
							constraint fk_arbeitet_an_Personal
								foreign key(pk_fk_PersNr)
                                references Personal(pk_PersNr),
							constraint fk_arbeitet_an_Projekt
								foreign key(pk_fk_ProjektNr)
                                references Projekt(pk_ProjektNr),
							constraint fk_arbeitet_an_Tätigkeit
								foreign key(fk_TätigkeitsNr)
                                references Tätigkeit(pk_TätigkeitsNr)
                            );
#integer	char(n) feste Anzahl von n Zeichen		varchar(n) variabel

#löschen

#alter table arbeitet_an
#	drop foreign key fk_arbeitet_an_Pojekt,
#	drop foreign key fk_arbeitet_an_Tätigkeit;




create database if not exists bus;

use bus;
drop table if exists fahrer_hat_telefonnummer;
drop table if exists kunde_hat_telefonnummern;
drop table if exists tätigkeit;
drop table if exists bus_reparatur;
drop table if exists fahrtenbuchung;
drop table if exists kunden;
drop table if exists fahrt;
drop table if exists fahrer;
drop table if exists bank;
drop table if exists bus;
drop table if exists werkstätte;
#Fahrer(pk_FahrerNr, Vorname, Nachname, plz, Ort, Straße, Nummer, Gehalt)
create table if not exists fahrer(
					pk_FahrerNr char(5) primary key,
                    Vorname varchar(50),
                    Nachname varchar(50),
					plz char(6),
                    Ort varchar(50),
                    Straße varchar(50),
                    Nummer varchar(5),
                    Gehalt decimal(10,2)
                    );

#Fahrer_hat_Telefonnummer(pk_fk_FahrerNr, pk_nummer, provider)
create table if not exists fahrer_hat_telefonnummer(
					pk_fk_FahrerNr char(5),
                    pk_nummer char(14),
                    Provider varchar(20),
                    constraint pk_FahrerNr 
						primary key (pk_fk_FahrerNr),
                    constraint fk_FahrerNr 
						foreign key (pk_fk_FahrerNr) 
							references fahrer(pk_FahrerNr)
					);
                    
#Bank (pk_BIC, Bankname)
create table if not exists bank(
					pk_BIC char(8) primary key,
                    Bankname varchar(50)
					);
                    
#Kunden (pk_Kunden_ID, vorName, nachName, plz, Ort, Straße, KundenIBAN, fk_BIC)
create table if not exists kunden(
					pk_Kunden_ID integer primary key,
                    vorName varChar(50),
                    nachName varChar(50),
                    PLZ char(6),
                    Ort varchar(50),
                    Straße varchar(50),
                    KundenIBAN char(20),
                    fk_BIC char(8),
                    constraint fk_BIC
						foreign key (fk_BIC)
							references bank(pk_BIC)
					);
                    
#Kunde_hat_Telefonnummern(pk_fk_Kunden_ID, pk_Nummer)
create table if not exists kunde_hat_telefonnummern(
					pk_fk_Kunden_ID integer,
                    pk_Nummer char(14),
                    Provider varchar(20),
                    constraint pk_fk_Kunden_ID
						primary key (pk_fk_Kunden_ID, pk_Nummer),
					constraint pk_fk_Kunden_ID
						foreign key (pk_fk_Kunden_ID)
							references kunden(pk_Kunden_ID)
					);
                    
#Bus(pk_BusNr, Hersteller, AnzahlPlätze, Kennzeichen, Erstzulassung, Anschaffungspreis, letztewartung_am, nächsteWartung_am, )
create table if not exists bus(
					pk_BusNr char(5) primary key,
                    Hersteller varchar(40),
                    AnzahlPlätze integer,
                    Kennzeichen varchar(12),
                    Erstzulassung date,
                    Anschaffungspreis decimal(10,2),
                    letztewartung_am datetime,
                    nächstewartung_am datetime
                    );
                    
#Werkstätte (pk_WerstättenID, Firmenname, plz, Ort, Straße, Nummer, TelefonNummer)
create table if not exists werkstätte(
					pk_WerkstättenID varchar(12) primary key,
                    Firmenname varchar(50),
                    PLZ char(6),
                    Ort varchar(50),
                    Straße varchar(50),
                    Nummer varchar(5),
                    TeleNr char(14)
                    );
                    
#Bus_Reparatur (pk_ReparaturNr, fk_WerkstättenId fk_BusNr, Datum, Zeit, Kosten, Arbeitszeit)
create table if not exists bus_reparatur(
					pk_ReparaturNr integer primary key,
                    fk_WerkstättenID varchar(12),
                    fk_BusNr char(5),
                    Datum date,
                    Zeit time,
                    Kosten decimal(8,2),
                    Arbeitszeit integer,
                    constraint fk_WerkstättenID
						foreign key (fk_WerkstättenID)
							references werkstätte(pk_WerkstättenID),
					constraint fk_BusNr
						foreign key (fk_BusNr)
							references bus(pk_BusNr)
					);

#Tätigkeit (pk_fk_ReparaturNr, pk_Beschreibung)
create table if not exists tätigkeit(
					pk_fk_ReparaturNr integer,
                    pk_Beschreibung varchar(200),
                    constraint pk_fk_ReparaturNr
						primary key (pk_fk_ReparaturNr, pk_Beschreibung),
					constraint pk_fk_ReparaturNr
						foreign key (pk_fk_ReparaturNr)
							references bus_reparatur(pk_ReparaturNr)
					);

#Fahrt(pk_FahrtenNr, fk_BusNr, fk_FahrerNr, Abfahrtszeit, Fahrziel, Fahrzeit, EinzelPreis , Fahrtdatum, gebuchte_Plätze) 
create table if not exists fahrt(
					pk_FahrtenNr integer auto_increment primary key,
                    fk_BusNr char(5),
                    fk_FahrerNr char(5),
                    Abfahrtszeit time,
                    Fahrziel varchar(30),
                    Fahrzeit decimal(5, 2),
                    Einzelpreis integer,
                    Fahrdatum date,
                    gebuchte_Plätze integer,
                    constraint fk_Busnummer 
						foreign key (fk_BusNr) 
							references bus(pk_BusNr),
                    constraint fk_Fahrernummer 
						foreign key (fk_FahrerNr) 
							references fahrer(pk_FahrerNr)
					);
                    
#Fahrtenbuchung (pk_fk_FahrtenNr, pk_fk_Kunde, reserviert_Plätze)
create table if not exists fahrtenbuchung(
					pk_fk_FahrtenNr integer auto_increment,
                    pk_fk_Kunden_ID integer,
                    reservierte_Plätze integer,
                    constraint pk_fk_FahrtenNr_Kunden_ID
						primary key (pk_fk_FahrtenNr, pk_fk_Kunden_ID),
					constraint fk_FahrtenNr
						foreign key (pk_fk_FahrtenNr)
							references fahrt(pk_FahrtenNr),
					constraint fk_Kunden_ID
						foreign key (pk_fk_Kunden_ID)
							references kunden(pk_Kunden_ID)
					);
show warnings;
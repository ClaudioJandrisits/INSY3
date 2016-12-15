use bus;

#select last_insert_id() from dual;
#select pk_FahrerNr from fahrer where vorname ='Iron' and Nachname = 'Man' or Nachname = 'whatever' order by nachname DESC, vorname;
#update Tabelle set Spaltenname = Wert
#select * from Tabellenname where kennzeichen like "BII%"
#select vorname as Name

#Aufgabe 1
insert into fahrer(pk_FahrerNr,vorName,nachName,plz,Ort,Straße,Gehalt)
	values("A244D","Speedy","Gonzales","2442","Mausdorf","Rattenweg 11",null);

insert into fahrer_hat_telefonnummer(pk_fk_FahrerNr,pk_Nummer)
	values("A244D","0043680121244");  

insert into fahrer_hat_telefonnummer(pk_fk_FahrerNr,pk_Nummer)
	values("A244D","0043123433");

#Aufgabe 2
update fahrer set gehalt =2500.22 where pk_fahrerNr ="A244D";

#Aufgabe 3
select * from bus order by anzahlplätze DESC, kennzeichen;

#Aufgabe 4
select * from bus where kennzeichen like "%FE%" or kennzeichen like "%IR%" or kennzeichen like "%GR%" or kennzeichen like "%AB%";

#Aufgabe 5
select `abfahrtszeit` as `Zeit der Abfahrt`,
		`fahrdatum`as `Datum` ,
        `gebuchte_plätze` as `Plätze gebucht`,
        `einzelpreis` as `Preis` FROM `fahrt`; 


#SELECT pk_BusNr from Bus where Kennzeichen like "GRAZ";

#Aufgabe 6
select `datum` as `reperaturdatum`,`kosten`,`arbeitszeit`from bus_reparatur 
	where fk_busNr like (select pk_busNr from bus where kennzeichen like "ABCDE");

insert into fahrt(fk_BusNr, fk_FahrerNr, Abfahrtszeit, Fahrziel, Fahrzeit, Einzelpreis, Fahrdatum, gebuchte_Plätze)
	values("10293","13579", '08:00:00',"Lissabon", 5.5, 55, '2011-12-12', 30);

select * from bus;

select * from fahrt;

#Aufgabe 7
update fahrt set Einzelpreis = Einzelpreis + Einzelpreis*0.035 where Fahrdatum > '2014-3-1';

#Aufgabe 8
insert into fahrer()
	values(11111, 'Alex', 'Maresch', 1230, 'Wien', 'Sesamstraße', 2, 3000);

select distinct Vorname, Nachname from fahrer limit 5;

#Aufgab 9
select * from fahrt;
select * from fahrer;
insert into fahrt(fk_BusNr, fk_FahrerNr, Abfahrtszeit, Fahrziel, Fahrzeit, Einzelpreis, Fahrdatum, gebuchte_Plätze)
	values("10293","13579", '08:00:00',"Madrid", 4.5, 50, '2016-12-15', 15);

select Abfahrtszeit, Fahrdatum as Datum, Fahrziel, Fahrzeit from fahrt
	where fk_FahrerNr like(select pk_FahrerNr from fahrer where Vorname like 'Vorname' and Nachname like 'Nachname' and pk_FahrerNr like '13579');

#Aufgabe 10
select * from fahrt;
select * from bus;
select * from fahrer;
insert into bus()
	values('34567', "Mercedes", 150, "W Reise 2", '2016-01-02', 10000.00, '2016-01-01 10:00:00 AM','2016-05-01 18:00:00 PM');

insert into fahrt(fk_BusNr, fk_FahrerNr, Abfahrtszeit, Fahrziel, Fahrzeit, Einzelpreis, Fahrdatum, gebuchte_Plätze)
	values((select pk_BusNr from bus where Kennzeichen like 'W Reise 2'), (select pk_FahrerNr from fahrer where Vorname like 'Speedy' and Nachname like 'Gonzales')
, '07:30:00', "Ljubljana", 6.0, 69, '2016-12-18', null);

#Aufgabe 11
update fahrt set gebuchte_Plätze = 12 where pk_FahrtenNr like last_insert_id();
select * from fahrt;

#Aufgabe 12
select * from fahrt;
select * from fahrer_hat_telefonnummer;
select * from fahrer;

start transaction;
delete from fahrt where fk_FahrerNr like (select pk_FahrerNr from fahrer where Vorname like 'Speedy');
delete from fahrer_hat_telefonnummer where pk_fk_FahrerNr like (select pk_FahrerNr from fahrer where Vorname like 'Speedy');
delete from fahrer where Vorname like 'Speedy' and Nachname like 'Gonzales';
rollback;





# --------------------- WEITERE AUFGABEN AUS DER ÜBUNG ------------------------- #

#select * from bus_reparatur;

#limit 5 in diesem Fall, setzt das limit auf fünf Ausgaben
#select *from bus order by AnzahlPlätze DESC limit 5;

#distinct bewirkt, dass keine doppelten (in dem Fall 'hersteller') vorkommen
#select distinct hersteller from bus order by hersteller, AnzahlPlätze DESC;

#distinct bezieht sich auf den ganzen Datensatz, sprich nur wenn exakt alle angegebenen Spalten gleich sind, bewirkt distinct etwas
#select distinct Fahrziel, Fahrzeit, Einzelpreis, gebuchte_Plätze from fahrt;


#update fahrt set gebuchte_Plätze = gebuchte_Plätze + 15 where Fahrziel = 'Salzburg' and Fahrdatum = '2016-10-1';
#select * from fahrt where Fahrziel = 'Salzburg' and Fahrdatum = '2016-10-1';

#select Datum, Kosten, Zeit from bus_reparatur where Datum > '2013-01-01';
#select distinct Datum from bus_reparatur where Datum > '2013-01-01' limit 3;
#select Datum, Kosten, Zeit from bus_reparatur where Datum > '2013-01-01' and Kosten is null;
#select Datum, Kosten, Zeit from bus_reparatur where Datum > '2013-01-01' and Kosten is not null;

#Mit 'in' können mehrere Werte zurückgeliefert werden, mit like nur einer
#select Datum, Kosten, Zeit from bus_reparatur where fk_BusNr in (select pk_BusNr from bus where Kennzeichen like "FERAR" or Kennzeichen like "Graz");

#Falls mehrere Kennzeichen abgefragt werden müssen, geht die Kurzschreibweise so:
#select pk_BusNr from bus where Kennzeichen in ("FERAR", "Graz");

#select pk_BusNr from bus where Kennzeichen like "%RAR";

#Wert zwischen zwei Values rausselektieren:
#select Datum, Kosten, Zeit from bus_reparatur where Kosten between 100 and 5000;


 















use personal;

INSERT INTO personal.Abteilung
				(pk_abt_Nr, Abteilungsname)
VALUES(10, 'php-Programmierung');
INSERT INTO personal.Abteilung
VALUES(11, 'controlling');
INSERT INTO personal.Abteilung
				(Abteilungsname, pk_abt_Nr)
VALUES('Einkauf', 20 );
select curdate();
select * from abteilung;

insert into Projekt (Beschreibung)
						values ('Bank Austria 1');
insert into Projekt (Beschreibung)
						values (null, 'Bawag');
insert into Projekt (Beschreibung)
						values (3, 'IngDiba');
insert into Projekt (Beschreibung)
						values (2, 'Merkur');

INSERT INTO Personal
				(pk_PersNr, vorName, NachName, GebDatum, plz, Ort, Straße, Nr, fk_Abt_Nr)
			VALUES ('AW','Peter','Sofort',Null,'1040','Wien','Renngasse', null, null);						

INSERT INTO Personal
				(pk_PersNr, vorName, NachName, plz, Ort, Straße)
			VALUES ('BV33','Peter','Sofort','1040','Wien','Renngasse');

#löschen eines Datensatzes mit dem Schlüssel 2

delete from Projekt
		where pk_ProjektNr = 2;

#einfügen von mehreren Datensätzen

insert into Projekt (Beschreibung)
				values ('Billa'),
					('Adeg');

select * from Projekt
#select last_insert_id() from dual;
#select pk_FahrerNr from fahrer where vorname ='Iron' and Nachname = 'Man' or Nachname = 'whatever' order by nachname DESC, vorname;
#update Tabelle set Spaltenname = Wert
#select * from Tabellenname where kennzeichen like "BII%"
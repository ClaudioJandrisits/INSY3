use bus;
 
 INSERT INTO `bus`.`fahrer`(`pk_FahrerNr`,`Vorname`,`Nachname`,`plz`,`Ort`,`Straße`,`Nummer`,`Gehalt`)
VALUES("12345","Lukas","Pühringer","2325","Himberg","Franz Zillbauergasse","7",2500);
 INSERT INTO `bus`.`fahrer`(`pk_FahrerNr`,`Vorname`,`Nachname`,`plz`,`Ort`,`Straße`,`Nummer`,`Gehalt`)
VALUES("56789","Roderick","Wasweisich","1030","Wien","Landstraße","50", 1000);
 INSERT INTO `bus`.`fahrer`
(`pk_FahrerNr`,
`Vorname`,
`Nachname`,
`plz`,
`Ort`,
`Straße`,
`Nummer`,
`Gehalt`)
VALUES
("13579",
"Vorname",
"Nachname",
"2002",
"Irgendwo",
"Eine Straße",
"5",
5000);
 INSERT INTO `bus`.`fahrer`
(`pk_FahrerNr`,
`Vorname`,
`Nachname`,
`plz`,
`Ort`,
`Straße`,
`Nummer`,
`Gehalt`)
VALUES
("71840",
"Einvorname",
"Nocheinnachname",
"4444",
"EinOrtInPl",
"EineStraßeInPl",
"100",
500);
 INSERT INTO `bus`.`fahrer`
(`pk_FahrerNr`,
`Vorname`,
`Nachname`,
`plz`,
`Ort`,
`Straße`,
`Nummer`,
`Gehalt`)
VALUES
("10000",
"Alex",
"Maresch",
"2010",
"Wien",
"Einer Straße",
"1",
2000);

#SELECT*from bus.fahrer;

INSERT INTO `bus`.`fahrer_hat_telefonnummer`
(`pk_fk_FahrerNr`,
`pk_nummer`,
`Provider`)
VALUES
("10000",
"06505489111",
"Telering");
INSERT INTO `bus`.`fahrer_hat_telefonnummer`
(`pk_fk_FahrerNr`,
`pk_nummer`,
`Provider`)
VALUES
("71840",
"11111111111",
"A1");
INSERT INTO `bus`.`fahrer_hat_telefonnummer`
(`pk_fk_FahrerNr`,
`pk_nummer`,
`Provider`)
VALUES
("13579",
"22222222222",
"A2");
INSERT INTO `bus`.`fahrer_hat_telefonnummer`
(`pk_fk_FahrerNr`,
`pk_nummer`,
`Provider`)
VALUES
("56789",
"12345678912",
"T-Mobile");
INSERT INTO `bus`.`fahrer_hat_telefonnummer`
(`pk_fk_FahrerNr`,
`pk_nummer`,
`Provider`)
VALUES
("12345",
"21987654321",
"Random");

#SELECT*from bus.fahrer_hat_telefonnummer;

INSERT INTO `bus`.`bank`
(`pk_BIC`,
`Bankname`)
VALUES
("BAKFNCUI",
"Bank Austria");
INSERT INTO `bus`.`bank`
(`pk_BIC`,
`Bankname`)
VALUES
("FGNISNFO",
"Erste Bank und Sparkasse");
INSERT INTO `bus`.`bank`
(`pk_BIC`,
`Bankname`)
VALUES
("DKFOVNCI",
"Raiffeisen");
INSERT INTO `bus`.`bank`
(`pk_BIC`,
`Bankname`)
VALUES
("JGMCNDIO",
"Oberbank");
INSERT INTO `bus`.`bank`
(`pk_BIC`,
`Bankname`)
VALUES
("HJGFICNE",
"Bawag P.S.K.");

#SELECT*from bus.bank;

INSERT INTO `bus`.`kunden`
(`pk_Kunden_ID`,
`vorName`,
`nachName`,
`PLZ`,
`Ort`,
`Straße`,
`KundenIBAN`,
`fk_BIC`)
VALUES
(12345,
"Benni",
"Liechtenstein",
"1220",
"Wien",
"Gassergasse 7",
"AT123456789012345678",
"HJGFICNE");
INSERT INTO `bus`.`kunden`
(`pk_Kunden_ID`,
`vorName`,
`nachName`,
`PLZ`,
`Ort`,
`Straße`,
`KundenIBAN`,
`fk_BIC`)
VALUES
(45688,
"Robert",
"Schmidt",
"1020",
"Wien",
"Eineweiterestraße 12",
"AT385618592738008509",
"JGMCNDIO");
INSERT INTO `bus`.`kunden`
(`pk_Kunden_ID`,
`vorName`,
`nachName`,
`PLZ`,
`Ort`,
`Straße`,
`KundenIBAN`,
`fk_BIC`)
VALUES
(89678,
"Nather",
"Zibral",
"1030",
"Wien",
"Landstraße 2",
"AT0034650206001860390",
"DKFOVNCI");
INSERT INTO `bus`.`kunden`
(`pk_Kunden_ID`,
`vorName`,
`nachName`,
`PLZ`,
`Ort`,
`Straße`,
`KundenIBAN`,
`fk_BIC`)
VALUES
(67183,
"Gustl",
"Hölzl",
"1030",
"Wien",
"Landstraße 50",
"AT584920495002019385",
"FGNISNFO");
INSERT INTO `bus`.`kunden`
(`pk_Kunden_ID`,
`vorName`,
`nachName`,
`PLZ`,
`Ort`,
`Straße`,
`KundenIBAN`,
`fk_BIC`)
VALUES
(6578342,
"Vorname",
"Nachname",
"1050",
"Wien",
"Wienerstraße 5",
"AT000000000000000000",
"BAKFNCUI");

#SELECT*from bus.kunden;

INSERT INTO `bus`.`kunde_hat_telefonnummern`
(`pk_fk_Kunden_ID`,
`pk_Nummer`,
`Provider`)
VALUES
(6578342,
"055432656578",
"A1");
INSERT INTO `bus`.`kunde_hat_telefonnummern`
(`pk_fk_Kunden_ID`,
`pk_Nummer`,
`Provider`)
VALUES
(67183,
"0147582941",
"Telering");
INSERT INTO `bus`.`kunde_hat_telefonnummern`
(`pk_fk_Kunden_ID`,
`pk_Nummer`,
`Provider`)
VALUES
(89678,
"0129572387",
"Provider");
INSERT INTO `bus`.`kunde_hat_telefonnummern`
(`pk_fk_Kunden_ID`,
`pk_Nummer`,
`Provider`)
VALUES
(45688,
"083874782",
"Vodafone");
INSERT INTO `bus`.`kunde_hat_telefonnummern`
(`pk_fk_Kunden_ID`,
`pk_Nummer`,
`Provider`)
VALUES
(12345,
"45789374",
"O2");

#SELECT*from bus.kunde_hat_telefonnummern;

INSERT INTO `bus`.`bus`
(`pk_BusNr`,
`Hersteller`,
`AnzahlPlätze`,
`Kennzeichen`,
`Erstzulassung`,
`Anschaffungspreis`,
`letztewartung_am`,
`nächstewartung_am`)
VALUES
("55555",
 "Emerald Luxury Coaches",
 50,
 "ABCDE",
 '2014-11-01',
 1234,
 '2016-01-01 11:12:12 AM',
 '2016-12-01 11:11:11 AM');
 INSERT INTO `bus`.`bus`
(`pk_BusNr`,
`Hersteller`,
`AnzahlPlätze`,
`Kennzeichen`,
`Erstzulassung`,
`Anschaffungspreis`,
`letztewartung_am`,
`nächstewartung_am`)
VALUES
("12345",
 "Skoda",
 120,
 "GRAZ",
 '2000-01-19',
 100000,
 '2010-05-12 08:00:00 AM',
 '2016-12-02 16:00:00 PM');
 INSERT INTO `bus`.`bus`
(`pk_BusNr`,
`Hersteller`,
`AnzahlPlätze`,
`Kennzeichen`,
`Erstzulassung`,
`Anschaffungspreis`,
`letztewartung_am`,
`nächstewartung_am`)
VALUES
("54321",
 "Ford",
 200,
 "IRGENDWAS",
 '2011-02-05',
 500,
 '2016-01-01 08:00:00 AM',
 '2016-12-03 14:00:00 PM');
 INSERT INTO `bus`.`bus`
(`pk_BusNr`,
`Hersteller`,
`AnzahlPlätze`,
`Kennzeichen`,
`Erstzulassung`,
`Anschaffungspreis`,
`letztewartung_am`,
`nächstewartung_am`)
VALUES
("09876",
 "Ferarri",
 20,
 "FERAR",
 '2016-01-01',
 10000,
 '2016-01-01 08:00:00 AM',
 '2016-12-04 14:00:00 PM');
 INSERT INTO `bus`.`bus`
(`pk_BusNr`,
`Hersteller`,
`AnzahlPlätze`,
`Kennzeichen`,
`Erstzulassung`,
`Anschaffungspreis`,
`letztewartung_am`,
`nächstewartung_am`)
VALUES
("10293",
 "Nestle",
 70,
 "hijnjj",
 '2011-01-11',
 700,
 '2016-01-01 08:00:00 AM',
 '2016-12-05 15:00:00 PM');
 
 #SELECT*from bus.bus;
 
 INSERT INTO `bus`.`werkstätte`
(`pk_WerkstättenID`,
`Firmenname`,
`PLZ`,
`Ort`,
`Straße`,
`Nummer`,
`TeleNr`)
VALUES
("1234567",
"Erste Werkstätte",
"2400",
"Himberg",
"Eine kleine Straße",
"12",
"1347897485");
 INSERT INTO `bus`.`werkstätte`
(`pk_WerkstättenID`,
`Firmenname`,
`PLZ`,
`Ort`,
`Straße`,
`Nummer`,
`TeleNr`)
VALUES
("0987532",
"Zweite Werkstätte",
"2500",
"Wien",
"Eine größere Straße",
"20",
"37654634562");
 INSERT INTO `bus`.`werkstätte`
(`pk_WerkstättenID`,
`Firmenname`,
`PLZ`,
`Ort`,
`Straße`,
`Nummer`,
`TeleNr`)
VALUES
("9423456",
"Dritte Werkstätte",
"2600",
"Bruck an der Leitha",
"Eine große Straße",
"35",
"234567767");
 INSERT INTO `bus`.`werkstätte`
(`pk_WerkstättenID`,
`Firmenname`,
`PLZ`,
`Ort`,
`Straße`,
`Nummer`,
`TeleNr`)
VALUES
("6767342",
"4te Werkstätte",
"2700",
"Ein Ort",
"Eine riesige Straße",
"100",
"837472883");
 INSERT INTO `bus`.`werkstätte`
(`pk_WerkstättenID`,
`Firmenname`,
`PLZ`,
`Ort`,
`Straße`,
`Nummer`,
`TeleNr`)
VALUES
("6543234",
"Letzte Werkstätte",
"2800",
"Noch ein Ort",
"Eine riesengroße Straße",
"1000",
"987567892");

#SELECT*from bus.werkstätte;

INSERT INTO `bus`.`bus_reparatur`
(`pk_ReparaturNr`,
`fk_WerkstättenID`,
`fk_BusNr`,
`Datum`,
`Zeit`,
`Kosten`,
`Arbeitszeit`)
VALUES
(12,
"6543234",
"10293",
'2016-11-01',
'08:59:59',
4000,
9);
INSERT INTO `bus`.`bus_reparatur`
(`pk_ReparaturNr`,
`fk_WerkstättenID`,
`fk_BusNr`,
`Datum`,
`Zeit`,
`Kosten`,
`Arbeitszeit`)
VALUES
(59,
"6767342",
"09876",
'2016-12-12',
'14:00:00',
10000,
2);
INSERT INTO `bus`.`bus_reparatur`
(`pk_ReparaturNr`,
`fk_WerkstättenID`,
`fk_BusNr`,
`Datum`,
`Zeit`,
`Kosten`,
`Arbeitszeit`)
VALUES
(69,
"9423456",
"54321",
'2016-10-02',
'09:00:00',
12500,
4);
INSERT INTO `bus`.`bus_reparatur`
(`pk_ReparaturNr`,
`fk_WerkstättenID`,
`fk_BusNr`,
`Datum`,
`Zeit`,
`Kosten`,
`Arbeitszeit`)
VALUES
(9,
"0987532",
"12345",
'2016-09-21',
'15:00:00',
500,
1);
INSERT INTO `bus`.`bus_reparatur`
(`pk_ReparaturNr`,
`fk_WerkstättenID`,
`fk_BusNr`,
`Datum`,
`Zeit`,
`Kosten`,
`Arbeitszeit`)
VALUES
(14,
"1234567",
"55555",
'2016-11-12',
'13:00:00',
1500,
2);

#SELECT*from bus.bus_reparatur;

INSERT INTO `bus`.`tätigkeit`
(`pk_fk_ReparaturNr`,
`pk_Beschreibung`)
VALUES
(14,
"Fehler behoben.");
INSERT INTO `bus`.`tätigkeit`
(`pk_fk_ReparaturNr`,
`pk_Beschreibung`)
VALUES
(9,
"Fehler behoben.");
INSERT INTO `bus`.`tätigkeit`
(`pk_fk_ReparaturNr`,
`pk_Beschreibung`)
VALUES
(69,
"Fehler behoben.");
INSERT INTO `bus`.`tätigkeit`
(`pk_fk_ReparaturNr`,
`pk_Beschreibung`)
VALUES
(59,
"Fehler behoben.");
INSERT INTO `bus`.`tätigkeit`
(`pk_fk_ReparaturNr`,
`pk_Beschreibung`)
VALUES
(12,
"Fehler behoben.");

#SELECT*from bus.tätigkeit;

INSERT INTO `bus`.`fahrt`
(
`fk_BusNr`,
`fk_FahrerNr`,
`Abfahrtszeit`,
`Fahrziel`,
`Fahrzeit`,
`Einzelpreis`,
`Fahrdatum`,
`gebuchte_Plätze`)
VALUES
(
"10293",
"10000",
'08:00:00',
"Prag",
3.45,
20,
'2016-12-12',
"30");
INSERT INTO `bus`.`fahrt`
(
`fk_BusNr`,
`fk_FahrerNr`,
`Abfahrtszeit`,
`Fahrziel`,
`Fahrzeit`,
`Einzelpreis`,
`Fahrdatum`,
`gebuchte_Plätze`)
VALUES
(
"09876",
"71840",
'12:00:00',
"Linz",
2.15,
30,
'2016-11-30',
"0");
INSERT INTO `bus`.`fahrt`
(
`fk_BusNr`,
`fk_FahrerNr`,
`Abfahrtszeit`,
`Fahrziel`,
`Fahrzeit`,
`Einzelpreis`,
`Fahrdatum`,
`gebuchte_Plätze`)
VALUES
(
"54321",
"13579",
'15:00:00',
"Wien",
0,
0,
'2012-12-24',
"0");
INSERT INTO `bus`.`fahrt`
(
`fk_BusNr`,
`fk_FahrerNr`,
`Abfahrtszeit`,
`Fahrziel`,
`Fahrzeit`,
`Einzelpreis`,
`Fahrdatum`,
`gebuchte_Plätze`)
VALUES
(
"12345",
"56789",
'08:00:00',
"Salzburg",
2.55,
45,
'2016-10-01',
"13");
INSERT INTO `bus`.`fahrt`
(
`fk_BusNr`,
`fk_FahrerNr`,
`Abfahrtszeit`,
`Fahrziel`,
`Fahrzeit`,
`Einzelpreis`,
`Fahrdatum`,
`gebuchte_Plätze`)
VALUES
(
"55555",
"12345",
'08:00:00',
"Salzburg",
2.55,
45,
'2016-11-01',
"20");

#SELECT*from bus.fahrt;

INSERT INTO `bus`.`fahrtenbuchung`
(`pk_fk_FahrtenNr`,
`pk_fk_Kunden_ID`,
`reservierte_Plätze`)
VALUES
(1,
6578342,
1);
INSERT INTO `bus`.`fahrtenbuchung`
(`pk_fk_FahrtenNr`,
`pk_fk_Kunden_ID`,
`reservierte_Plätze`)
VALUES
(2,
67183,
2);
INSERT INTO `bus`.`fahrtenbuchung`
(`pk_fk_FahrtenNr`,
`pk_fk_Kunden_ID`,
`reservierte_Plätze`)
VALUES
(3,
89678,
1);
INSERT INTO `bus`.`fahrtenbuchung`
(`pk_fk_FahrtenNr`,
`pk_fk_Kunden_ID`,
`reservierte_Plätze`)
VALUES
(4,
12345,
1);
INSERT INTO `bus`.`fahrtenbuchung`
(`pk_fk_FahrtenNr`,
`pk_fk_Kunden_ID`,
`reservierte_Plätze`)
VALUES
(5,
45688,
1);

#SELECT*from bus.fahrtenbuchung;
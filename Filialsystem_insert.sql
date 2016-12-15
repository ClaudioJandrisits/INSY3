use Filialsystem;

Insert into filiale (pk_filialId, filialbzeichnung, PLZ, ort, leiterSeit, fk_Filialleiter)
	VALUES("1A", "Lebensmittel", "1230", "Wien", toDate("12-17-2006", "m-d-YYYY"), "20A" );
Insert into filiale (pk_filialId, filialbzeichnung, PLZ, ort, leiterSeit, fk_Filialleiter)
	VALUES("1B", "Möbel", "1220", "Wien", 18-01-2000, "20B" );
Insert into filiale (pk_filialId, filialbzeichnung, PLZ, ort, leiterSeit, fk_Filialleiter)
	VALUES("1C", "Mode", "1110", "Wien", 13-01-2006, "20C" );
Insert into filiale (pk_filialId, filialbzeichnung, PLZ, ort, leiterSeit, fk_Filialleiter)
	VALUES("1D", "Lebensmittel", "1010", "Wien", 14-01-2006, "1D" );
Insert into filiale (pk_filialId, filialbzeichnung, PLZ, ort, leiterSeit, fk_Filialleiter)
	VALUES("1E", "Elektronik", "1020", "Wien", 11-01-2006, "20E" );

Insert into mitarbeiter (pk_MANr, vorname, nachname, arbeitsStd, fk_filialId)
	VALUES("20A", "Max", "Mustermann", 40, "1A");
Insert into mitarbeiter (pk_MANr, vorname, nachname, arbeitsStd, fk_filialId)
	VALUES("20B", "Sascha", "Gajic", 40, "1B");
Insert into mitarbeiter (pk_MANr, vorname, nachname, arbeitsStd, fk_filialId)
	VALUES("20C", "Julian", "Kern", 40, "1C");
Insert into mitarbeiter (pk_MANr, vorname, nachname, arbeitsStd, fk_filialId)
	VALUES("20D", "Andreas", "Drozd", 40, "1D");
Insert into mitarbeiter (pk_MANr, vorname, nachname, arbeitsStd, fk_filialId)
	VALUES("20E", "Thomas", "Gomboc", 40, "1E");

Insert into produkt(pk_ProduktNr, produktbezeichnung, produktbeschreibung, preis)
	VALUES("111A", "Brot", "Vollkorn", 1.50);
Insert into produkt(pk_ProduktNr, produktbezeichnung, produktbeschreibung, preis)
	VALUES("111B", "Gewand", "Tshirt", 15);
Insert into produkt(pk_ProduktNr, produktbezeichnung, produktbeschreibung, preis)
	VALUES("111C", "Saft", "Apfelsaft", 1.00);
Insert into produkt(pk_ProduktNr, produktbezeichnung, produktbeschreibung, preis)
	VALUES("111D", "Wurst", "Extrawurst", 3.10);
Insert into produkt(pk_ProduktNr, produktbezeichnung, produktbeschreibung, preis)
	VALUES("111E", "Mehl", "Grob", 1.20);
	
Insert into filialangebot(pk_fk_ProduktNr, pk_fk_filialId)
	VALUES("111A", "1A");
Insert into filialangebot(pk_fk_ProduktNr, pk_fk_filialId)
	VALUES("111B", "1B");
Insert into filialangebot(pk_fk_ProduktNr, pk_fk_filialId)
	VALUES("111C", "1A");
Insert into filialangebot(pk_fk_ProduktNr, pk_fk_filialId)
	VALUES("111D", "1A");
Insert into filialangebot(pk_fk_ProduktNr, pk_fk_filialId)
	VALUES("111E", "1A");

Insert into produktbetreuer(pk_fk_MANr,pk_fk_filialId, pk_fk_produktNr)
	VALUES("20A", "1A", "111A");
Insert into produktbetreuer(pk_fk_MANr,pk_fk_filialId, pk_fk_produktNr)
	VALUES("20B", "1B", "111B");
Insert into produktbetreuer(pk_fk_MANr,pk_fk_filialId, pk_fk_produktNr)
	VALUES("20A", "1A", "111C");
Insert into produktbetreuer(pk_fk_MANr,pk_fk_filialId, pk_fk_produktNr)
	VALUES("20A", "1A", "111D");
Insert into produktbetreuer(pk_fk_MANr,pk_fk_filialId, pk_fk_produktNr)
	VALUES("20A", "1A", "111E");



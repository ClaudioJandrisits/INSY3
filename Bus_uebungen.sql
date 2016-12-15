use bus;

select * from fahrt;

update fahrt
	set gebuchte_Plätze = gebuchte_Plätze+5
	where pk_FahrtenNr = 1;

start transaction;

insert into bus (pk_BusNr, Hersteller, AnzahlPlätze, Kennzeichen, Erstzulassung, LetzteWartung_am, NächsteWartung_am, Anschaffungspreis)
values("M110", "Mercedes", 90, "W 78BJA", '2010-11-09', null, null, 150000);

insert into fahrt(fk_BusNr, fk_FahrerNr, Abfahrtszeit, Fahrziel, Fahrzeit, Einzelpreis, Fahrdatum, gebuchte_Plätze)
values((select pk_BusNr from bus where Kennzeichen = "W 77BJA"), "12345", "08:10", "Prag", 7.5, 66, '2016-12-3', 0);

select pk_BusNr from bus where Kennzeichen = "W 77BJA";

select * from bus;

delete from fahrt where fk_BusNr = 'M100';

delete from fahrt
	where fk_BusNr = (select pk_BusNr from bus where Kennzeichen = "W 77BJA");

rollback;

select * from bus;
select Hersteller, AnzahlPlätze as Plätze, Kennzeichen from bus where AnzahlPlätze > 50 and Hersteller = 'Nestle';
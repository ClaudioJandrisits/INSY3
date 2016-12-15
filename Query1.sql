select curdate();
select curtime();
select 2.3;
select 2,3;

select * from Personal;
select vorName, NachName as Familienname, 'ist Personalmitglied' as Funktion from Personal;


start transaction; #Nachdem kann man irgendwas tun, löschen etc. ohne das es auswirkungen hat, wenn man am Ende rollback macht.

#update tabellenname set irgendwas = 15 where irgendwas = 2 and irgendwas = 20;#

rollback; #Siehe start transaction;
commit; #Bei comit steht alles fest in der Datenbank, rollback nichtmehr möglich





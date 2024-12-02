select * from smjerovi;

select naziv as n1, cijena as c1, 
naziv, 'Osijek' as grad, 
cijena*1.25 as sPDV,
getdate() as kada, *
from smjerovi;

select ime, prezime from polaznici;

select * from polaznici;

update polaznici set oib = '00913631547' where sifra=17;

select * from polaznici
where ime like '%an%';

select * from polaznici
where ime not like '%a';

select * from polaznici
where sifra in (1,7,9);

select * from smjerovi
where izvodiseod between '2024-01-01' and '2024-12-31';

select prezime, ime from polaznici
order by prezime, 2;

select top 10 percent * from polaznici;

select top 10 ime, prezime into nova from polaznici;

select * from nova;

drop table nova;

use knjiznica;

select count(*) from autor;

select top 10* from autor;

insert into autor (sifra, ime, prezime, datumrodenja) 
values (4, 'Ivan', 'Grevinger', '1993-06-27');

select top 10 * from katalog;

select top 10 a.ime, a.prezime, b.naslov,
c.naziv
from autor a inner join katalog b
on  a.sifra = b.autor
inner join mjesto c
on c.sifra = b.mjesto;

select * 
from autor a right join katalog b
on a.sifra=b.autor;

use svastara;

select count(*) from artikli; -- 52601

select distinct artikl from ArtikliNaPrimci;

select * from artikli where
sifra not in (select distinct artikl from ArtikliNaPrimci);

delete from artikli where sifra=79102;

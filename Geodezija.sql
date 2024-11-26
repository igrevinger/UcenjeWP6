use master;
go
drop database if exists geodezija;
go
create database geodezija;
go
use geodezija;
go

create table vrsta_posla(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null);

create table poslovi(
sifra int not null primary key identity(1,1),
naziv varchar(60) not null,
vrsta int not null references vrsta_posla(sifra)
);

create table instrumenti(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null);

create table zaposlenici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11)
);

create table radovi(
sifra int not null primary key identity(1,1),
zaposlenik int not null references zaposlenici(sifra),
instrument int not null references instrumenti(sifra),
poslovi int not null references poslovi(sifra),
datum datetime
);

insert into zaposlenici (ime, prezime, oib)
values 
('Ivan', 'Grevinger', '00913631547'),
('Petar', 'Pikec', '01459211658'),
('Ante', 'Duvnjak', '69108521973'),
('Daniel', 'Milaković', '73420318245'),
('Darko', 'Jeršek', '12312555373'),
('Dario', 'Radoš', '88032246026');

insert into instrumenti (naziv)
values 
('gnss_prijemnik'),
('totalna_stanica'),
('dron'),
('nivelir'),
('računalo'),
('laserski_daljinomjer');

insert into vrsta_posla (naziv)
values 
('uredski'),
('terenski');

insert into poslovi (naziv, vrsta)
values 
('snimanje_objekata', 2),
('iskolčenje_objekata', 2),
('iskolčenje_međe', 2),
('snimanje_geodetske_podloge', 2),
('etažiranje', 2),
('nivelmansko_određivanje_visina', 2),
('izrada_diobnog_plana', 1),
('upis_objekata_u_katastar_i_zemljišnu_knjigu', 1),
('parcelacija', 1),
('izrada_elaborata_infrastrukture', 1),
('usklađenje_katastra_i_zemljišne_knjige', 1);

insert into radovi (zaposlenik, instrument, poslovi, datum)
values 
(1, 1, 4, '2024-11-03 08:00'),
(2, 6, 5, '2024-10-27 09:30'),
(3, 3, 4, '2024-11-07 11:45'),
(4, 4, 8, '2024-11-07 07:10'),
(5, 2, 2, '2024-11-14 10:30'),
(6, 2, 2, '2024-11-14 10:30'),
(2, 4, 7, '2024-10-28 07:15'),
(1, 4, 10, '2024-11-05 07:25'),
(1, 4, 6, '2024-11-09 08:00'),
(3, 4, 6, '2024-11-09 08:00'),
(4, 4, 11, '2024-11-07 12:20');
use master;
go
--brišem postojeću bazu ako postoji
drop database if exists zoo;
go
--kreiram novu bazu
create database zoo;
go
--pozicioniram se na bazu
use zoo;
go

--use master;

--create database edunovawp6;

--drop database edunovawp6;

--use edunovawp6;
--create database zoo;

--use zoo;

create table zivotinja(
sifra int not null primary key identity(1,1),
vrsta varchar(50) not null,
ime varchar(50) not null,
djelatnik int not null,
prostorija int not null,
datum int not null
);

create table djelatnik(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
IBAN varchar(50)
);
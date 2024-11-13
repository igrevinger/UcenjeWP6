﻿-- Ovo je SQL skripta
-- prebacujem se na master bazi
use master;
go
--brišem postojeću bazu ako postoji
drop database if exists edunovawp6;
go
--kreiram novu bazu
create database edunovawp6;
go
--pozicioniram se na bazu
use edunovawp6;
go

--use master;

--create database edunovawp6;

--drop database edunovawp6;

--use edunovawp6;

create table smjerovi(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
cijena decimal(18,2) null, --null se ne mora pisati
izvodiseod datetime,
vaucer bit
);

create table grupe(
sifra int not null primary key identity(1,1),
naziv varchar(20) not null,
velicinagrupe int not null,
predavac varchar(50),
smjer int not null references smjerovi(sifra)
);

-- razlika varchar i char
-- varchar(10)
-- 'Ana'
-- char(10)
-- 'Ana       '

create table polaznici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100) not null,
oib char(11)
);

create table clanovi(
grupa int not null references grupe(sifra),
polaznik int not null references polaznici(sifra)
);


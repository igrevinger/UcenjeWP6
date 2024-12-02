use master;
go

drop database if exists nogometni_klub;
go

create database nogometni_klub;
go

use nogometni_klub;
go

create table klub(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
osnovan datetime not null,
stadion varchar(50) not null,
predsjednik varchar(50) not null,
drzava varchar(50) not null,
liga varchar(50) not null
);

create table igrac(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
datum_rodenja datetime not null,
pozicija varchar(50) not null,
broj_dresa int not null,
klub int not null references klub(sifra)
);

create table trener(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
klub int not null references klub(sifra),
nacionalnost varchar(50) not null,
iskustvo int not null
);

create table utakmica(
sifra int not null primary key identity(1,1),
datum datetime not null,
vrijeme time not null,
lokacija varchar(50) not null,
stadion varchar(50) not null,
domaci_klub int not null references klub(sifra),
gostujuci_klub int not null references klub(sifra)
);


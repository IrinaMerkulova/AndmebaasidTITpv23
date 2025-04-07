--https://meet.google.com/yvy-omdj-vfr
-- SQL kommentaar
-- SQL Server Managment Stuudio
-- connect to
--(localdb)\mssqllocaldb
--Authentification: Windows Auth  - admini õigused localhostis
--Authentification: SQL Server Auth - varem loodud kasutajad
--New Query
CREATE DATABASE merkulovaTIT;
--Object Explorer on vaja pidevalt uuendada käsitsi!
USE merkulovaTIT;

--tabeli loomine
CREATE TABLE opilane(
opilaneID int Primary Key identity(1,1),
eesnimi varchar(25),
perenimi varchar(30) Unique,
synniaeg date,
aadress TEXT,
opilaskodu bit
);
SELECT * FROM opilane;

--tabeli kustutamine
DROP table opilane;

--andmete lisamine tabelisse
INSERT INTO opilane(eesnimi, perenimi, synniaeg, aadress, opilaskodu)
VALUES ('Andrei', 'Ivanov', '2005-12-5', 'Tallinn', 1),
('Mati', 'Kask', '2003-12-5', 'Tallinn', 0),
('Peeter', 'Uus', '2000-10-5', 'Tallinn', 0);

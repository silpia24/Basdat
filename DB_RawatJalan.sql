-- 1. Create Database
-- CREATE DATABASE NS_RawatJalan; 
 
-- 2. Create table Pasien
-- USE NS_RawatJalan;
-- CREATE TABLE NSPasien (
--     RekamMedis VARCHAR(6) PRIMARY KEY,
--     NamaPasien VARCHAR(40) Not Null,
--     TLahirPasien VARCHAR(30) Not Null,
--     TglLahirPasien DATE Not Null,
--     JnsKelamin VARCHAR(1) Not Null,
--     NoWAPasien VARCHAR(13) Not Null,
--     AlamatPasien TEXT  Not Null
-- );

-- 3. Create table Poliklinik
-- CREATE TABLE NSPoliklinik (
-- 	IDPoli Varchar(3) PRIMARY KEY,
-- 	NamaPoli Varchar(30) Not Null,
-- 	StatusPoli Varchar(1) Not Null
-- );

-- 4. Create table Dokter
-- CREATE TABLE NSDokter (
-- 	ID_Dokter Varchar(4) PRIMARY KEY,
-- 	NamaDokter Varchar(50) Not Null,
-- 	Spesialis Varchar(1) Not Null,
-- 	NoKontak Varchar(15) Not Null
-- );

-- 5. Create table ResepObat
-- CREATE TABLE NSResepObat (
-- 	NoResep Varchar(7),
-- 	KodeObat Varchar(5),
-- 	JumlahObat Integer Not Null,
-- 	HargaResep Integer Not Null,
-- 	AturanPakai Varchar(25) Not Null,
-- 	Primary Key (NoResep, KodeObat)
-- );

-- 6. Create table Obat
-- CREATE TABLE NSObat (
-- 	KodeObat Varchar(5) PRIMARY KEY,
-- 	NamaObat Varchar(30) Not Null,
-- 	Stok Integer Not Null,
-- 	HargaObat Integer Not Null,
-- 	TglKadaluarsa Date Not Null
-- );

-- 7. Create table registrasi
-- CREATE TABLE NSRegistrasi (
--     NoRegistrasi VARCHAR(7) PRIMARY KEY,
--     TglRegistrasi DATE NOT NULL,
--     IDPoli VARCHAR(3) NOT NULL,
--     ID_Dokter VARCHAR(4) NOT NULL,
--     RekamMedis VARCHAR(6) NOT NULL,
--     Keluhan TEXT NOT NULL,
--     FOREIGN KEY (IDPoli) REFERENCES NSPoliklinik(IDPoli),
--     FOREIGN KEY (ID_Dokter) REFERENCES NSDokter(ID_Dokter),
--     FOREIGN KEY (RekamMedis) REFERENCES NSPasien(RekamMedis)
-- );

-- 8. Create table Resep
-- CREATE TABLE NSResep (
-- 	NoResep Varchar(7) PRIMARY KEY,
-- 	TglResep Date Not Null,
-- 	NoRegistrasi Varchar(7) Not Null,
--     CONSTRAINT FK_NoRegistrasi FOREIGN KEY (NoRegistrasi) REFERENCES NSRegistrasi(NoRegistrasi)
-- );

-- 9. Add field eMailPasien to table PasienNSPasien
-- ALTER TABLE NSPasien
-- ADD eMailPasien Varchar(30) Not Null;

-- 10. Modifly field keluhan to keluhanpasienNS_ResepObat
-- ALTER TABLE NSRegistrasi
-- CHANGE keluhan keluhanpasien VARCHAR(255);

-- 11. Show all table NS_Dokter
-- SHOW TABLES;
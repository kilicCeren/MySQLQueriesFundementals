

use multitablequeries;


/*============================ Primary Key ============================
1- Primary Key bir tablodaki her satırı benzersiz bir sekilde tanımlayan kolan veya  birden fazla kolunun birlesimidir.
2- Primary Key UNIQUE'dir
3- Bir tabloda en fazla bir Primary Key Olabilir.
4- Primary Key column'da hicbir data NULL olamaz. 
-- Bir field Primary Key yapmak icin 2 farkli yol vardir;
*/
/*--------------------- Syntax 1 -------------------
    Data Type'dan sonra "PRIMARY KEY" yazarak
    CREATE TABLE students_table
    (
        id INT PRIMARY KEY,
        name VARCHAR(50),
        grade INT,
        adres VARCHAR(100),
        last_update DATE
    ); 
--------------------------------------------------*/
/*--------------------- Syntax 2 -------------------
    CONSTRAINT Keyword'u kullanilarak PRIMARY KEY tanimlanabilir.
    "CONSTRAINT constraintName PRIMARY KEY(column1, column2, ... column_n);"
    CREATE TABLE students_table
    (
        id INT ,
        name VARCHAR(50),
        grade INT,
        adres VARCHAR(100),
        last_update DATE
        CONSTRAINT id_pk PRIMARY KEY (id)
    );
 --------------------------------------------------*/
/*------------------------------- Query -------------------------------
    "sehirler" isimli bir tablo olusturun.
    Tabloda "alan_kodu", "isim", "nufus" fieldlari olsun.
    "isim" field'i bos birakilamasin.
    1. yolu kullanarak "alan_kodu" field'ini primary key yapin
 -------------------------------------------------------------------*/
 
 CREATE TABLE sehirler 
 (
 alan_kodu CHAR(4) PRIMARY KEY,
  isim VARCHAR(50) NOT NULL,
 nufus INT 
 );
 
 ALTER  TABLE sehirler 
 MODIFY isim VARCHAR(40);
 
  ALTER  TABLE sehirler 
 MODIFY isim VARCHAR(30) NOT NULL;
 
 /*
------------------------------- Query -------------------------------
	"ogretmenler" isimli bir table olusturun.
	Tabloda "id", "isim", "brans", "cinsiyet" fieldlari olsun.
	"id" field'i tekrarli veri kabul etmesin.
	2. yolu kullanarak "id" ve "isim" field'larini primary key yapin
-------------------------------------------------------------------
*/
 
CREATE TABLE ogretmenler 
 (
  id INT UNIQUE,
  isim VARCHAR(30) ,
  brans VARCHAR(30),
  cinsiyet CHAR(5),
   CONSTRAINT pk_id_isim PRIMARY KEY (id,isim)  
 );
 
-- id'i UNIQUE  olarak tanimlamak zorunda degildik
-- PRIMARY KEY olarak id+isim tanimlandigi icin 
-- bu sutunlar otomatik olarak UNIQUE ve NOT NULL olurlar
 
 
 /*
------------------------------- Query -------------------------------
	"universite_ogrenci_bilgi_sistemi" isimli bir table olusturun.
	Tabloda "giris_yili", "giris_siralamasi", "isim", "bolum" field'lari olsun.
	"isim" field'i NULL deger kabul etmesin.
	2. yolu kullanarak "giris_yili" ve "giris_siralamasi" field'larini
    primary key yapin
-------------------------------------------------------------------
*/

CREATE TABLE universite_ogrenci_bilgi_sistemi 
 (
  giris_yili YEAR ,
  giris_siralamasi INT,
  isim VARCHAR(100) NOT NULL,
  bolum VARCHAR(100),  
   CONSTRAINT pk_girisyili_girissiralamasi PRIMARY KEY (giris_yili,giris_siralamasi)  
 );
 


/*
============================ Foreign Key ============================
1- Foreign Key iki tablo arasında Relation oluşturmak için kullanılır.
2- Foreign Key başka bir tablonun Primary Key’ine bağlıdır.
3- Referenced table (bağlanılan tablo, Primary Key’in olduğu tablo) 
   Parent Table olarak da adlandırılır. Foreign Key’in olduğu tablo ise  
   Child Table olarak da adlandırılır.
4- Bir tabloda birden fazla Foreign Key olabilir.
5- Foreign Key NULL değeri alabilir.
6- Foreign Key DUBLICATE değeri alabilir.
7-*******Foreign Key Pimary Key'de var olmayan bir degeri kendi icerisinde bulunduramaz.**************
Not 1: Parent Table’da olmayan bir veriyi(PK'daki herhangi bir deger) 
Child Table’a giremezsiniz.
Not 2: Child Table’ı silmeden Parent Table’ı silemezsiniz. 
Önce Child  Table silinir, sonra Parent Table silinir.
=====================================================================
*/
/*--------------------------- Syntax  ---------------------------
    CONSTRAINT constraintName FOREIGN KEY(child_table_field_name)
    REFERENCES parent_table (parent_table_field_name)
    CREATE TABLE table_name
    (
        id CHAR(10),
        name CHAR(10),
        CONSTRAINT constraint_name
        FOREIGN KEY(id)
        REFERENCES parent_table (parent_table_field_name)
    );
---------------------------------------------------------------*/ 
/*------------------------------- Query -------------------------------
    "tedarikci" isimli bir tablo olusturun.
    Tabloda "tedarikci_id", "tedarikci_ismi", "iletisim_isim" fieldlari olsun.
    "tedarikci_id" field'ini PRIMARY KEY olsun.
    
    "urunler" isminde baska bir tablo olusturun. 
    Tabloda "tedarikci_id" ve "urun_id" field'lari olsun.
    "tedarikci_id" FOREIGN KEY olsun.
-------------------------------------------------------------------*/ 
 

    CREATE TABLE tedarikci
    (
        tedarikci_id CHAR(6) PRIMARY KEY,
        tedarikci_ismi VARCHAR(40),
        iletisim_isim VARCHAR(40)   
       
    );
 
   CREATE TABLE urunler
    (
        tedarikci_id CHAR(6),
        urun_id CHAR(10),
        CONSTRAINT tedarikci_foreignKey
        FOREIGN KEY (tedarikci_id)
        REFERENCES tedarikci (tedarikci_id)
	);
    
   -- Parent tablo olusturulmadan Child Tablo olusturulamaz
-- FOREIGN KEY olacak sutun ile PRIMARY KEY olarak baglanacagi sutun ayni data Turune SAHIP OLMALIDIR
 
 /*
 ------------------------------- Query -------------------------------
	"bebeler" isimli bir tablo olusturun.
	Tabloda "id", "isim", "iletisim_no" field'lari olsun.
	"id" field'i PRIMARY KEY olsun.

	"notlar" isminde baska bir tablo olusturun. 
	Tabloda "bebe_id" ve "puan" field'lari olsun.
	"bebe_id" FOREIGN KEY olsun.
-------------------------------------------------------------------
*/

    CREATE TABLE bebeler
    (
        bebe_id INT PRIMARY KEY,
        isim VARCHAR(40),
        iletisim_no VARCHAR(15)   
       
    );
 
   CREATE TABLE notlar
    (
        bebe_id INT,
        puan INT,
        
        CONSTRAINT bebe_id_foreignKey
        FOREIGN KEY (bebe_id)
        REFERENCES bebeler (bebe_id)
	);




 /*
 ------------------------------- Query -------------------------------
"ogrenciler" ve "dersler" isimli iki tablo oluşturun.

"ogrenciler" tablosunda "ogrenci_no" (Primary Key),
"isim", ve "bolum" alanları olsun.

"dersler" tablosunda "ders_kodu" (Primary Key),
"ders_adi", ve "kredi" alanları olsun.

"ogrenci_dersleri" isimli bir many to many ilişki tablosu
oluşturun ve gerekli Foreign Key'leri tanımlayın.
-------------------------------------------------------------------
*/ 
 
 -- ogrenciler tablosu multitablequeries de var suanda  adının degisitirlmesi gerekiyor.
 
  CREATE TABLE ogrenciler2
    (
        ogrenci_no CHAR(6) PRIMARY KEY,
        isim VARCHAR(40),
        bolum VARCHAR(40)   
       
    );
    
     CREATE TABLE dersler
    (
        ders_kodu CHAR(6) PRIMARY KEY,
        ders_adi VARCHAR(40),
        kredi CHAR(1)
	);
 
   CREATE TABLE ogrenci_dersleri
    (
		ogrenci_no CHAR(6),
        ders_kodu CHAR(6),
        
        CONSTRAINT ogrenci_no_foreignKey
        FOREIGN KEY (ogrenci_no)
        REFERENCES ogrenciler2 (ogrenci_no),
        
        CONSTRAINT ders_kodu_foreignKey
        FOREIGN KEY (ders_kodu)
        REFERENCES dersler (ders_kodu)
        
        );
 
 
 
 
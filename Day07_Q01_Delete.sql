use multitablequeries;


/*
================================== DELETE ============================================
DELETE FROM table_name komutu tablodaki tum recordlari siler.
Eger tum kayitlar silindikten sonra tabloyu gormek isterseniz size sadece bos bir tablo
gosterir. 
DELETE komutu sadece datalari siler, tabloyu silmez.
=======================================================================================
*/
-- DELETE FROM tablo_adi;  Tablonun tum icerigini siler.
-- Bu komut bir DML komutudur. Dolayisiyla devaminda WHERE gibi cumlecikler
-- kullanilabilir.
/*----------SYNTAX---------
    DELETE FROM tablo_adi
    WHERE field = veri;
*/
--    DELETE FROM satis_raporu;  satis_raporu tablosundaki tum verileri siler.
SELECT * FROM satis_raporu;
--    SAVEPOINT ABC; -- Verileri database'e yedekler..
--    ROLLBACK TO  ABC;  Yedeklenen verilerimizi geri getirir.
-- Bilgileri geri getirirken sikinti yasamamak icin 
-- ayarlar sql execution auto commit tiki kaldirin ve 
-- mySQL workbench'i kapatip acin.


CREATE TABLE kursiyer
(
id char(3),
isim varchar(50),
veli_isim varchar(50),
yazili_notu int,
CONSTRAINT kursiyer_pk
PRIMARY KEY (id)
);

INSERT INTO kursiyer VALUES(123, 'Ali Can', 'Hasan',75); 
INSERT INTO kursiyer VALUES(124, 'Merve Gul', 'Ayse',85); 
INSERT INTO kursiyer VALUES(125, 'Kemal Yasa', 'Ali',85);

SELECT * FROM kursiyer;



SAVEPOINT sabah; 

-- isminda a harfi olan ogrencilerin yazilinotunu 5arttirin


UPDATE kursiyer 
SET yazili_notu= yazili_notu+5
WHERE isim  LIKE '%a%';

-- veli ismi 3 harften fazla olanlardan 3 puan silin

UPDATE kursiyer 
SET yazili_notu = yazili_notu-3
WHERE veli_isim  LIKE '___%';


-- ismi hasan olan ogrenciyi silin

DELETE FROM kursiyer
WHERE veli_isim ='Hasan';

SELECT * FROM kursiyer;


-- versiyon geri getirr


ROLLBACK TO sabah;



-- SAVEPOINT calistirildigi anda ki guncel durumu dondurur ve o haliyle yedekler.
-- Tekrar ROLLBACK TO komutu ile cagirildiginda ise dondurdugu verileri getirir.
-- Yani SAVEPOINT isleminden ROLLBACK islemine kadar yapilan hic bir islem 
-- SAVEPOINT ile kaydedilmeyecegi icin 
-- ROLLBACK TO komutu ile geri getirilemez.


/*
	TRUNCATE komutu kayitlari geri getirilemeyecek sekilde siler
*/


-- kursiyer tablosundaki verileri TRUNCATE ile silin
TRUNCATE kursiyer;

ROLLBACK TO sabah; -- does not exist



CREATE TABLE talebeler
	(
		id CHAR(3) PRIMARY KEY,
		isim VARCHAR(50),
		veli_isim VARCHAR(50),
		yazili_notu INT
	);
 
 INSERT INTO talebeler VALUES
		(123,'Ali Can', 'Hasan', 75),
		(124,'Merve Gul', 'Ayse', 85),
		(125,'Kemal Yasa', 'Hasan', 85),
		(126,'Nesıbe Yılmaz', 'Ayse', 95),
		(127,'Mustafa Bak', 'Can', 99);


CREATE TABLE dereceler
		(
			talebe_id CHAR(3),
			ders_adi VARCHAR(30),
			yazili_notu INT,
			CONSTRAINT talebe_id_fk FOREIGN KEY (talebe_id)
			REFERENCES talebeler(id) 
		);

INSERT INTO dereceler VALUES
		(123, 'Kimya', 75),
		(124, 'Fizik', 65),
		(125, 'Tarih', 90),
		(126, 'Matematik', 90),
		(127, 'Matematik', 23);



SELECT * FROM talebeler;
SELECT * FROM dereceler;


-- Talebeler tablosundan id'si 125 ten buyuk olan datalari siliniz. 

DELETE FROM talebeler
WHERE id > 125;

-- Talebeler tablosu parent tablo oldugundan
-- talebeler tablosundan silmeden once dereceler tablosundan 
-- bu kayitlari silmelisiniz

DELETE FROM dereceler
WHERE talebe_id > 125;

DELETE FROM talebeler
WHERE id > 125;

-- -------------------ON DELETE CASCADE-------------

/*
        Her defasinda once child tablodaki verileri silmek yerine 
		ON DELETE CASCADE silme ozelligini aktif hale getirebiliriz.

		Bunun icin FK olan satirin en sonuna ON DELETE CASCADE 
        komutunu yazmak yeterli.
*/

DROP TABLE dereceler;
TRUNCATE talebeler;

-- dereceler tablosunu yeniden olusturalim 

CREATE TABLE dereceler
		(
			talebe_id CHAR(3),
			ders_adi VARCHAR(30),
			yazili_notu INT,
			CONSTRAINT talebe_id_fk FOREIGN KEY (talebe_id)
			REFERENCES talebeler(id)  ON DELETE CASCADE
		);


-- Talebeler tablosundan id'si 125 ten buyuk olan datalari siliniz. 
DELETE FROM talebeler
WHERE id > 125;

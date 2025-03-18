
use multitablequeries;


-- bir tablo olusturabiliyoruz,
-- isim, soyisim, yas ve dogum_yeri sutunlarina sahip bir tablo olusturun

CREATE TABLE ogrenciler(
 isim VARCHAR(40),
 soyisim VARCHAR(40)	,
 yas INT,	
 dogum_yeri VARCHAR(40)
);

-- ogrenciler tablosunu goruntuleyin

SELECT * FROM ogrenciler;


-- ogrenciler tablosuna 'Ahmet', 'Yılmaz', 30,'Ankara' kaydini ekleyin.

INSERT INTO ogrenciler VALUES('Ahmet', 'Yılmaz', 30,'Ankara');

-- ogrenciler taablosuna ismi Mehmet, yasi 25 olan bir ogrenci ekleyin.

INSERT INTO ogrenciler(isim,yas)VALUES('Mehmet', 25);

-- 5  kaydi  toplu olarak girelim 
INSERT INTO ogrenciler (isim, soyisim, yas, dogum_yeri) VALUES ('Mehmet', 'Kara', 25, 'İstanbul');
INSERT INTO ogrenciler (isim, soyisim, yas, dogum_yeri) VALUES ('Ayşe', 'Kaya', 22, 'İzmir');
INSERT INTO ogrenciler VALUES ('Fatma', 'Güneş', 28, 'Bursa');
INSERT INTO ogrenciler () VALUES ('Ali', 'Çelik', 35, 'Antalya');
INSERT INTO ogrenciler () VALUES ('Elif', 'Demir', 29, 'Ankara');

-- 5  kaydi  toplu olarak girelim
 
INSERT INTO ogrenciler () VALUES ('Can', 'Özdemir', 33, 'İstanbul'),
									('Deniz', 'Arslan', 24, 'İzmir'),
									('Selin', 'Yıldız', 27, 'Bursa'),
									('Emre', 'Koç', 31, 'Antalya'),
									('Zeynep', 'Çınar', 26, 'Konya'),
									('Oğuz', 'Kaplan', 40, 'Samsun');

-- ogrenciler tablosundaki yas ve dogum_yer tablosunu goruntuleyin

SELECT yas,dogum_yeri FROM ogrenciler;

-- yas sutununun data turunu double yapın

ALTER TABLE ogrenciler MODIFY COLUMN yas DOUBLE ;

-- yas sutununun adını ogrenci_yasi ve data turunu ınt yapın

ALTER TABLE ogrenciler CHANGE COLUMN yas ogrenci_yasi INT;

-- yas sutununu silin


ALTER TABLE ogrenciler
DROP COLUMN ogrenci_yasi;


-- ogrenciler tablosunu silin
DROP TABLE ogrenciler;










use multitablequeries;

/*
===============================================
              LIMIT - OFFSET
===============================================
*/
/*
LIMIT ifadesi, bir sorgu sonucundan döndürülecek 
maksimum satır sayısını belirlemenizi sağlar. 
 Eğer bir sorgu sonucu çok sayıda satır döndürüyorsa
 ve siz sadece bir kısmını görmek istiyorsanız, 
 LIMIT kullanabilirsiniz.
*/
/*
*************** SYNTAX ***************
SELECT * FROM tablo_adi
LIMIT 10;            -- Sonuc kumesindeki ilk 10 satiri bana goster. 
*/
/*
 OFFSET ifadesi, sorgu sonucu setinde bir başlangıç
 noktası belirler. 
 Bu, özellikle sayfalama işlemlerinde faydalıdır. 
 OFFSET genellikle LIMIT ile birlikte kullanılır.
*/
/*
*************** SYNTAX ***************
SELECT * FROM tablo_adi
LIMIT 10 OFFSET 20;  -- 20 ile 30 arasindaki degerleri goster.
*/

/* =============================  SORU  =============================
    Kitaplik tablosundan ilk 5 Kitabı listeleyiniz.
===================================================================
 */

SELECT * FROM kitaplik
LIMIT 5 ;

/*
=============================  SORU  =============================
    Kitaplik tablosundaki en yeni 3 Kitabı listeleyiniz.
===================================================================
 */

SELECT kitap_adi FROM kitaplik
ORDER BY  yayin_yili DESC
LIMIT 3 ;

-- RAND() fonksiyonu, özellikle bir tablodan rastgele kayıtlar seçmek için
--   kullanılır.
-- ORDER BY RAND() ifadesi, tablonun satırlarını rastgele bir sıraya sokar.
-- Bu yöntem, özellikle küçük ve orta ölçekli tablolar için uygundur.
-- Ancak, büyük veri setleri için performans sorunlarına yol açabilir.

/*
=============================  SORU  =============================
    Kitaplik tablosundan rastgele 3 kitap secip listeleyiniz.
===================================================================
*/

SELECT * FROM kitaplik
ORDER BY RAND() 
LIMIT 3 ;

/*  =============================  SORU  =============================
    Kitaplik tablosundan en eski iki kitabi listeleyiniz.
    ===================================================================
*/

SELECT * FROM kitaplik
ORDER BY  yayin_yili 
LIMIT 2 ;

/*
=============================  SORU   =============================
    Kitaplik tablosundan yazari 'Fyodor Dostoyevski' olan kitapları
    en fazla 2 tane olacak sekilde listeleyiniz.
===================================================================
*/

SELECT * FROM kitaplik
WHERE yazar= 'Fyodor Dostoyevski'
LIMIT 2 ;

/*
=============================  SORU  =============================
    Kitaplik tablosundan yazari 'Fyodor Dostoyevski' olan kitapları
    en fazla 2 tane olacak sekilde eskiden yeniye dogru sirali olarak listeleyiniz.
===================================================================
*/

SELECT * FROM kitaplik
WHERE yazar= 'Fyodor Dostoyevski'
ORDER BY  yayin_yili 
LIMIT 2 ;

/*
=============================  SORU   =============================
    Kitaplik tablosundaki yayın yılına göre sıralanmış
    kitapların 3. sayfasını listeleyiniz.
    (Her sayfanin boyutu 3 kitap ile sinirlidir.)
    ( Yani bizden 7., 8. 9. kitaplari isteniyor.)
===================================================================
*/



SELECT kitap_adi FROM kitaplik
ORDER BY  yayin_yili 
LIMIT 3 OFFSET 6;

/*
=============================  SORU  =============================
    Kitaplik tablosundaki alfabetik siralanmis kitaplarin 4. sayfasını listeleyiniz.
    (Her sayfanin boyutu 2 kitap ile sinirlidir.)
===================================================================
*/
SELECT kitap_adi FROM kitaplik
ORDER BY  kitap_adi 
LIMIT 2 OFFSET 6;

/*  =============================  SORU   =============================
    Kitaplik tablosundaki yayin yili 1950'den once olan kitaplarin
    1. sayfasını listeleyiniz.
    (Her sayfanin boyutu 4 kitap ile sinirlidir.)
    ===================================================================
*/
SELECT kitap_adi FROM kitaplik
WHERE yayin_yili < 1950
LIMIT 4  ;

/*  =============================  SORU  =============================
    Kitaplik tablosundaki yayin yili 1950'den once olan kitaplarin
    alfabetik siraya göre sralayip
    1. sayfasını listeleyiniz.
    (Her sayfanin boyutu 4 kitap ile sinirlidir.)
    ===================================================================
*/

SELECT kitap_adi FROM kitaplik
WHERE yayin_yili < 1950
ORDER BY  kitap_adi
LIMIT 4  ;












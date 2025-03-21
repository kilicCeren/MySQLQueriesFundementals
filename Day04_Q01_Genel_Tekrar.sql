use multitablequeries;

-- kelimeler tablosunu goruntuleyin

SELECT * FROM kelimeler;


-- kelimeler tablosunda harf sayisi 3'den buyuk olanlari listeleyin

SELECT * FROM kelimeler
WHERE harf_sayisi > 3;

-- kelimeler tablosunda harf sayisi 3'den fazla olan kelimelerin
-- id'lerini listeleyin

SELECT id FROM kelimeler
WHERE harf_sayisi > 3;


-- kelimeler tablosunda harf sayisi 1'den fazla ve 5'den az olan kelimeleri
-- listeleyin

SELECT kelime FROM kelimeler
WHERE harf_sayisi > 1 AND harf_sayisi <5 ;

-- BETWEEN komutunda baslangic ve bitis degerleri dahil olur
SELECT kelime FROM kelimeler 
WHERE harf_sayisi BETWEEN 2 AND 4;

-- 2.harfi o olan kelimeleri listeleyin

-- like'da 2 tane sembol kullaniyoruz
--  _ ==> mutlak olarak tek bir karakter
--  % ==> yazildigi yerde hersey olabilir.
--        hic karakter olmayabilir, sadece 1 karakter olabilir veya birden fazla karakter olabilir 
SELECT kelime FROM kelimeler 
WHERE kelime LIKE '_o%';

-- ikinci harfi o olan ve uzunlugu 3 olan kelimeleri listeleyin
SELECT kelime FROM kelimeler 
WHERE kelime LIKE '_o_';

SELECT * FROM kelimeler
WHERE regexp_like (kelime,'^.o.$');

-- ilk harfi h olup kelime uzunlugu 3'den fazla olan kelimeleri listeleyin
SELECT kelime FROM kelimeler 
WHERE kelime LIKE 'h%' AND harf_sayisi>3 ;


-- ******************************************************************************

 /*  
=============================  SORU =============================
    Kelimeler tablosundan h ile baslayip t ile biten 3 harfli kelimeleri 
    (h ile t kucuk harfli olanlari) listeleyiniz.
===================================================================
 */
 
SELECT kelime FROM kelimeler
WHERE  REGEXP_LIKE (kelime,'^h.t$','c');


 
 
 
 /*  
=============================  SORU =============================
    Kelimeler tablosundan 'h' ile baslayip 't' ile biten 2. karakteri rakam 
    olan 3 harfli kelimeleri (h ile t kucuk harfli olanlari) listeleyiniz
===================================================================
 */
 
 SELECT kelime FROM kelimeler
WHERE  REGEXP_LIKE (kelime,'^h[0-9]t$','c');
 
 
 /*  
=============================  SORU =============================
    Kelimeler tablosundan 'h' ile baslayip 't' ile biten 2. karakteri buyuk 
    harf olan 3 harfli kelimeleri (h ile t kucuk harfli olanlari) listeleyiniz
===================================================================
 */
 
  
SELECT kelime FROM kelimeler
WHERE  REGEXP_LIKE (kelime,'^h[A-Z]t$','c');
 
 
 /*  
=============================  SORU =============================
    Kelimeler tablosundan 2. harfi 'O' (buyuk O harfli) olan 3 karakterli 
    kelimeleri ve id'lerini listeleyiniz
===================================================================
 */
 
 
 SELECT kelime, id FROM kelimeler
WHERE  REGEXP_LIKE (kelime,'^.O.$','c');
 
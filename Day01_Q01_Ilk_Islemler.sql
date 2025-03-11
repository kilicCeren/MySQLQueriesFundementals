
-- Bu bir yorum satiri

/*
Birden fazla satir icin yorum satiri 
*/
/*
Database'de islem yapmak ,
Java ile islem yapmaktan farklidir.
Java Run Time  program oldugundan , calisma bittiginde her sey sifirlanir  ve en bastaki duruma doner.
AnnnnnnnCakkkk database'de yapilan her islem KALICI OLACAKTİR.

Kısmen  geriye almak mumkun olsada ,
her islem geriye almak MUMKUN DEGİLDİR.

BU acidan  İdatabase ile  yapacagimiz her islem de 2 kere dusunmekte fayda var 
*/
CREATE SCHEMA multitablequeries;

/*
	Database ve Query sayfasi farkli seylerdir.
    Database i local olarak olusturduk.
    Ancak ister Local ister de Uzak database olsun , datbasede yapilan islemler kalicidir.
    
    Databasede islem yapabilmek icin olusturdugumuz Query dosyalari ise 
    bizim not aldigimiz sayfalar gibidir. 
    biz kaydetmedikce kalici olarak kaydedilmez.
       
*/

/*
		SQL ile sorgu yapmak da Java kodlarini calistirmaktan farklidir.
        Java da bir Class veya Method calistirildiginda
        O  class veya methoddaki tüm kodlar calisir.
        ANCAKKKKKK 
        Database sorgularini calistirmak icin 2 alternatif vardir.
        1- Query sayfasindaki belirli satir veya satirlari  calistirmak icin 
			O satiri  secip  yukardaki (execute)simsek butonuna basilir.
            NOT: eger secim olmazsa tum syafa calistirilir.
            BUNU KESİNLİKLE TAVSİYE ETMİYORUZ.
            cunku  aynı kayitlari tekrar tekrar database'e kaydedebilir.
		2- uzerinde (I) olan execute (simsek) tusuna basarsaniz 
        en yukardan Cursor'un bulundugu satira kadar 
        tum sorgulari calistirir.
*/

-- Bir Query sayfasinda hangi SChema ile calisacagini belirlemek icin use komutu kullanilir.
-- Query sayfasi her acildiginda bu  kodun 1 kere calistirilmasi gerekir.
use multitablequeries;







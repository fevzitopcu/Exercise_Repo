	/*===================================================
	AGGREGATE FUNCTION COUNT,SUM,MIN,MAX, AVG)
====================================================*/
	
	-- COUNT
	----------------------------------------------------
	/* invoices tablosunda kaç adet fatura bulunduğun */


	SELECT count(FirstName) as numOfStudents
	FROM customers;

	SELECT count(*)
	FROM customers;

	SELECT count(CustomerId) as numOfStudents
	FROM customers
	WHERE LastName is not NULL;

	SELECT count(*) as LastNameSayısı
	FROM students
	WHERE LastName is NULL;

	SELECT count(*) as customerNull
	FROM customers
	WHERE state is NOT NULL;

	/* invoices tablosunda kaç adet fatura bulunduğun */
	
	SELECT count(*) as faturaSayısı
	FROM invoices;
	
	SELECT count(BillingState) /* yıldız koymadan sütün ismi yazılırsa null olanları saymaz*/
	FROM invoices;
	
	SELECT count(*) /* yıldız koymadan sütün ismi yazılırsa null olanları saymaz*/
	FROM invoices;
	
	SELECT count(InvoiceId) as numofinvoices
	FROM invoices;
	
	/* tracks tablosunda kaç adet farklı Composer bulunduğunu döndüren sorguyu yazınız*/
	SELECT count( DISTINCT Composer) as bestecisayısı
	FROM tracks;
	
	SELECT count( Composer) as bestecisayısı
	FROM tracks;
	
	/* invoices tablosunda kaç adet farklı yıl olduğunu hesaplayan sorguyu yazınız*/ 
	
	SELECT count (DISTINCT InvoiceDate) as datel
	FROM invoices
	WHERE InvoiceDate
	
/*===================================================
	AGGREGATE FUNCTION MIN,MAX
====================================================*/
	SELECT min(HireDate) as eraliestDate
	from employees
	WHERE HireDate BETWEEN "2002-08-14 00:00:00" AND "2004-03-04 00:00:00";
	
	/* tracks tablosundaki şarkı süresi en kısa olan şarkının adını ve süresi listeleyen
	sorguyu yaziniz */
	
	SELECT name as Song_Name, min(Milliseconds) as Duration
	FROM tracks;
	
	SELECT name as Şarkı_Adı, min(Milliseconds)as Şarkı_Süresi
	FROM tracks;
	
	SELECT min(Grade)as minnn, max(Grade)as maxxx
	from students;
	
	select min(Grade) as min_grade, max(Grade) as max_grade
	from students;

/*====================================================*/
	AGGREGATE FUNCTION SUM, AVG
/*====================================================*/
	
	SELECT sum(total) as toplamFaturaMik
	FROM invoices;
	
	SELECT SUM(total) AS Toplam_Gelir
	FROM invoices;

/*=====================ödev==============================*/
/* invoices  tablosunda 2009 ile 2013 tarihileri arasındaki faturaların toplam değerini listeyiniz */	
/*=======================================================*/

/* invoices  tablosundaki faturaların ortalama değerini listeyiniz */

	SELECT round(AVG(total),5) as ortalamaGelir
	FROM invoices;	
	
	/* tracks tablosundaki şarkıların ortalama süresinden daha uzun olan 
	şarkıların adlarını listeleyiniz */

	SELECT round(avg(Milliseconds))
	FROM tracks;
	
	SELECT Name, Milliseconds
	FROM tracks
	WHERE Milliseconds>393599 
	LIMIT 5;
	
	
	SELECT Name, Milliseconds
	FROM tracks
	WHERE Milliseconds>(SELECT avg(Milliseconds) 
						FROM tracks) /*sub---query*/
	LIMIT 10;
	
/*====================================================
	GROUP BY
	GROUP BY returns only one result per group of data.
	GROUP BY Clause always follows the WHERE Clause.
	GROUP BY Clause always precedes the ORDER BY.
	
	GROUP BY veri grubu başına yalnızca bir sonuç döndürür.
	GROUP BY Cümlesi her zaman WHERE Cümlesini takip eder.
	GROUP BY Cümlesi her zaman ORDER BY'den önce gelir.
	
	
====================================================*/	
	/* tracks tablosundaki her bir Bestecisinin (Composer) toplam şarkı sayısını 
	Besteci adına göre gruplandırarak listeleyen sorguyu yazınız. */
	
	SELECT Composer as Bestec, count(Name) as Şarkı
	FROM tracks
	GROUP By Composer;
/* null görmwk istemiyorsak */	
	SELECT Composer as Besteci, count(Name) as Şarkı
	FROM tracks
	WHERE Composer is NOT NULL
	GROUP By Composer;
	
/* customers tablosundaki müşterilerin sayılarını Ülkelerine (Country) göre gruplandırarak 
	ve müşteri sayısına göre AZALAN şekilde sıralayarak listeleyen sorguyu yazınız*/
	
	SELECT country, count(CustomerId) as MüşteriSayısı
	FROM customers
	GROUP BY country
	ORDER By MüşteriSayısı DESC;

	/* customers tablosundaki müşterilerin sayılarını Ülkelerine (Country) ve Şehirlerine (City) 
	göre gruplandırarak listeleyen sorguyu yazınız*/
	
	SELECT country, City, count(FirstName) as nu_of_cust
	FROM customers
	GROUP BY country,City;
	
	/* invoices tablosundaki her bir ülkenin (BillingCountry) fatura ortalamalarını 
	hesaplayan ve ülke bilgileri ile listeleyen sorguyu yazınız.*/
	
	SELECT BillingCountry,  round(AVG(total),4) as ort_fatura
	FROM invoices
	GROUP BY BillingCountry;
	
		
	SELECT BillingCountry,  round(AVG(total),2) as ort_faturamm
	FROM invoices
	WHERE InvoiceDate BETWEEN '2009-01-01' AND '2011-12-31'
	GROUP BY BillingCountry;
	
	
	
/*===================================================
        JOINS
====================================================*/
    
--     Join islemleri farkli tablolardan secilen sutunlar ile yeni bir tablo 
--     olusturmak icin kullanilabilir.
--     
--     JOIN islemleri Iliskisel Veritabanlari icin cok onemli bir ozelliktir. Çunku
--    	Foreign Key'ler ile iliskili olan tablolardan istenilen sutunlari cekmek 
--     icin JOIN islemleri kullanilabilir.

--     Standart SQL'de en çok kullanılan Join islemleri:
--   	1) FULL JOIN:  Tablodaki tum sonuclari gosterir (birleşim)
--     2) INNER JOIN:  Tablolardaki ortak olan sonuc kumesini gosterir (kesişim)
--     3) LEFT JOIN:  Ilk tabloda (Sol) olup digerinde olmayan sonuclari gosterir (A-B)
--     4) RIGHT JOIN: Sadece Ikinci tabloda olan tum sonuclari gosterir. (B-A)

--		NOT: SQLite Sadece INNER, LEFT VE CROSS JOIN İşlemlerini desteklemektedir.
 
 /*===================================================*/   

  /* araclar.db adındaki veritabanını kullanarak Markalar ve Siparisler tablolarındaki 
 marka_id'si ayni olan kayıtların marka_id, marka_adi, siparis_adedi ve siparis_tarihi   
 bilgilerini  listeleyen bir sorgu yaziniz.*/
 
 SELECT markalar.marka_id, markalar.marka_adi,
	siparisler.siparis_adedi, siparisler.siparis_tarihi
 FROM markalar
 INNER JOIN siparisler /*ortak olanları istediği için INNER join yaptık  */
 ON markalar.marka_id=siparisler.marka_id;
 
  
 SELECT markalar.marka_id, markalar.marka_adi,
	siparisler.siparis_adedi, siparisler.siparis_tarihi
 FROM markalar
 LEFT JOIN siparisler /*ortak olanları istediği için INNER join yaptık  */
 ON markalar.marka_id=siparisler.marka_id;
 
 
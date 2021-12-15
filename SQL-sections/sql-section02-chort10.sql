
/*===================================================
														LIMIT
====================================================*/
 	/*invoices tablosunda Total değeri 10$'dan büyük olan ilk 4 kayıt'ın InvoiceId, 
	InvoiceDate ve total bilgilerini sorgulayiniz */
	
	SELECT InvoiceDate,InvoiceId,total
	FROM invoices
	where total>10
	LIMIT 4;

	/*===================================================
									ORDER BY
====================================================*/
	
	/*invoices tablosunda Total değeri 10$'dan büyük olan kayıtları Total değerine göre 
	ARTAN sırada sıralayarak sorgulayiniz */
	
	SELECT InvoiceDate,InvoiceId,total
	FROM invoices
	WHERE total>10
	ORDER By total-- order by DEFAULT değer ASC dir
	LIMIT 10;
	
	/*invoices tablosunda Total değeri 10$'dan büyük olan kayıtlardan işlem tarihi 
	(InvoiceDate) 	en yeni olan 10 kaydın tüm bilgilerini listeyiniz */ 
	
	SELECT *
	FROM invoices
	WHERE total>10
	ORDER by InvoiceDate DESC
	LIMIT 10;
	
	
	------------------------
	SELECT *
	FROM invoices
	WHERE InvoiceDate >="2012-01-01 00:00:00" AND InvoiceDate<="2013-01-02 00:00:00";
	
	/* invoices tablosunda fatura tarihi (InvoiceDate) 2009 ila 2011 tarihleri arasındaki
	en yeni faturayı listeleyen sorguyu yazınız */ 
	
	SELECT * 
	FROM invoices
	WHERE InvoiceDate BETWEEN "2009-01-01 00:00:00" AND "2011-12-31 00:00:00"
	ORDER By InvoiceDate DESC
	LIMIT 1 ;
	/*===================================================
								                   IN
====================================================*/
	/* customers tablosunda Belgium, Norway veya  Canada  ülkelerinden sipariş veren
		müşterilerin FirstName ve LastName bilgilerini listeyiniz	*/
	SELECT FirstName,LastName,country
	FROM customers
	WHERE country IN ("Belgium", "Norway" ,"Canada","USA");
	
	
	SELECT * 
	FROM invoices
	WHERE InvoiceDate Like "201_-02%"
	
/* customers tablosunda, isimleri (FirstName) üç harfli olan müşterilerin FirstName, 
	LastName, City ve Address bilgilerini listeleyen sorguyu yazınız*/
	
	SELECT FirstName, LastName, City, Address
	FROM customers
	WHERE FirstName LIKE '___';
	
	/* customers tablosunda, soyisimleri Sch veya Go ile başlayan müşterilerin FirstName, 
	LastName ve City bilgilerini listeleyen sorguyu yazınız*/
	
	
	SELECT FirstName,LastName,City
	FROM customers
	WHERE LastName like 'Sch%' or LastName like 'Go%';
	
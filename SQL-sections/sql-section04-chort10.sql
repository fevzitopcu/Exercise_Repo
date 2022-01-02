/*===================================================
 SUBQUERIES
====================================================*/

	/* albums tablosundaki Title sutunu 'Faceless' olan kaydın albumid'si elde ederek 
	tracks tablosunda bu değere eşit olan kayıtların bilgilerini SUBQUERY yazarak listeyiniz.
	Listelemede trackid, name ve albumid bilgilerini bulunmalıdır. */
	
	SELECT * FROM albums;
	
	SELECT AlbumId
	FROM albums
	WHERE Title = "Faceless";

	SELECT TrackId,name,AlbumId
	FROM tracks
	WHERE AlbumId= (SELECT AlbumId
					FROM albums 
					WHERE Title="Faceless");
					
	/* albums tablosundaki Title sutunu 'Faceless' olan kaydın albumid'si elde ederek 
	tracks tablosunda bu değere eşit olan kayıtların bilgilerini JOIN kullanarak listeyiniz.
	Listelemede trackid, name ve albumid bilgileri bulunmalıdır. */		
	
	SELECT t.TrackId, t.name, a.AlbumId
	FROM tracks t
	JOIN albums a
	ON t.AlbumId = a.AlbumId 
	WHERE a.Title = 'Faceless';

	SELECT t.TrackId, t.name, a.AlbumId
	FROM tracks t
	JOIN albums a
	ON t.AlbumId = a.AlbumId AND a.Title = 'Faceless';
	--WHERE a.Title = 'Faceless';
	
	/* albums tablosundaki Title sutunu Faceless veya Let There Be Rock olan kayıtların 
	albumid'lerini elde ederek tracks tablosunda bu id'lere eşit olan kayıtların bilgilerini 
	SUBQUERY kullanarak listeyiniz. Listelemede trackid, name ve albumid bilgileri bulunmalıdır. */		
	
	SELECT TrackId,Name,AlbumId
	FROM tracks
	WHERE AlbumId IN (	SELECT AlbumId
						FROM albums
						WHERE Title = "Faceless" OR Title = "Let There Be Rock");
						
	
	SELECT TrackId, name, AlbumId
	FROM tracks
	WHERE AlbumId IN (	SELECT AlbumId
                        FROM albums
						WHERE title IN ("Faceless", "Let There Be Rock"));

						
/*===================================================
 DDL COMMANDS (CREATE TABLE, DROP TABLE,ALTER TABLE)
====================================================*/	
	
	/*------------------------------------------------------------------------------------------
	/*  CREATE TABLE
	/*------------------------------------------------------------------------------------------
	
	/*personel adinda bir tablo oluşturunuz.  Tabloda first_name, last_name 
	age(INT) ve hire_date (Date) sutunuları bulunmalıdır.
	*/
	
	CREATE TABLE personel (
		firt_name VARCHAR(20),
		last_name TEXT,
		age INT,
		hire_date date );
		
	/* Aynı isimle yeniden bir veritabanı oluşturulmak istenirse hata verir. Bu hatayı
	almamak için IF NOT EXISTS keywordu kullanılabilir */
	CREATE TABLE IF NOT EXISTS  personel (
		first_name VARCHAR(20),
		last_name VARCHAR(20),
		age INT,
		hire_date DATE
	);
	
	/*------------------------------------------------------------------------------------------
	/*  DROP TABLE
	/*------------------------------------------------------------------------------------------
	/* personel tablosunu siliniz */
	
	DROP TABLE IF EXISTS personel;
	
	/*Veritabanında vacation_plan adında yeni bir tablo oluşturunuz.  Sutun isimleri
	place_id, country, hotel_name, employee_id, vacation_length,budget 	*/
	
	CREATE TABLE IF NOT EXISTS vacation_plan (
		place_id INT,
		country TEXT,
		hotel_name TEXT,
		employee_id INT,
		vacation_length INT,
		budget REAL
		);

	-- NOT: SQL'de TRUNCATE TABLE komutu bulunmasına karşın SQLite bu komutu 
	-- desteklememektedir. Truncate komutu  bir tabloyu değil içindeki tüm verileri 
	-- silmek için kullanılır.		
		
	/*------------------------------------------------------------------------------------------
	/*  INSERT INTO
	/*----------------------------------------------------------------------------------------*/

	/* vacation_plan tablosuna 2 kayıt gerçekletiriniz.*/
		
		INSERT INTO vacation_plan VALUES (48,"TR","HILTON",1,7,4500);
		INSERT INTO vacation_plan VALUES (11,"USA","NEW HILTON",4,11,6500);		
		
		
		
-- NOT: Aynı komut tekrar çalıştırılırsa herhangi bir kısıt yoksa ise aynı veriler
	-- tekrar tabloya girilmiş olur. 
	
	/*vacation_plan tablosuna vacation_lenght ve budget sutunlarını eksik olarak veri girişi 
	yapınız*/
		INSERT INTO vacation_plan VALUES (11,"USA",NULL,5,11,NULL);	
		INSERT INTO vacation_plan VALUES(00, "TR", "Beach Hotel", 1, 7, round(4500.4567, 2));	
		
/*vacation_plan tablosuna vacation_lenght ve budget sutunlarını eksik olarak veri girişi 
	yapınız
	PARÇALI GİRİŞ YAPINIZ
	*/
		INSERT INTO vacation_plan (place_id,country,hotel_name,employee_id) VALUES(35, 'TR', 'İZMİR HOTEL', 16);


	/*------------------------------------------------------------------------------------------
	/*  CONSTRAINTS - KISITLAMALAR 
	/*-----------------------------------------------------------------------------------------

	NOT NULL - Bir Sütunun NULL içermemesini garanti eder. 

    UNIQUE - Bir sütundaki tüm değerlerin BENZERSİZ olmasını garanti eder.  

    PRIMARY KEY - Bir sütünün NULL içermemesini ve sütundaki verilerin 
                  BENZERSİZ olmasını garanti eder.(NOT NULL ve UNIQUE birleşimi gibi)

    FOREIGN KEY - Başka bir tablodaki Primary Key'i referans göstermek için kullanılır. 
                  Böylelikle, tablolar arasında ilişki kurulmuş olur. 

    DEFAULT - Herhangi bir değer atanmadığında Başlangıç değerinin atanmasını sağlar.
	/*----------------------------------------------------------------------------------------*/
	
	CREATE TABLE workers (
	id INT PRIMARY KEY,
	id_number VARCHAR(11) UNIQUE NOT NULL,
	name TEXT DEFAULT "NONAME",
	salary INTEGER NOT NULL);
	
	
	INSERT INTO workers VALUES(1, '12345678910','AHMET CAN', 7000 );
	INSERT INTO workers VALUES( 2, '12345678910', 'MUSTAFA ALİ', 12000);  -- HATA (UNIQUE)
	INSERT INTO workers  (id,	id_number, salary) VALUES(3, '12345223465', 5000);
	INSERT INTO workers VALUES(4, '44343323465' , 'AYHAN BAK',NULL) -- HATA (NOT NULL)
	
	
	
	/*vacation_plan tablosunu place_id sutunu PK ve employee_id sutununu ise FK olarak  değiştirirek
	vacation_plan2 adinda yeni bir tablo oluşturunuz. Bu tablo, employees tablosu ile ilişkili olmalıdır*/ 
	
	CREATE TABLE IF NOT EXISTS vacation_plan_2 (
		id INT PRIMARY KEY,
		place_id INT,
		country TEXT,
		hotel_name TEXT,
		employee_id INT,
		vacation_length INT,
		budget REAL
		);	
		
	CREATE TABLE IF NOT EXISTS vacation_plan_2 (
		id INT ,
		place_id INT,
		country TEXT,
		hotel_name TEXT,
		employee_id INT,
		vacation_length INT,
		budget REAL,
		PRIMARY KEY(id),
		FOREIGN Key(employee_id) REFERENCES employees(EmployeeId)
		);	
		
	/* Employees tablosundaki EmployeeId'si 1 olan kişi için bir tatil planı giriniz. dddd*/
	
	INSERT INTO vacation_plan_2 VALUES(1,34,'TR','HAPPY HOTEL',1,5,5660);
	INSERT INTO vacation_plan_2 VALUES(2,34,'TR','HAPPY HOTEL',2,6,5660);
	INSERT INTO vacation_plan_2 VALUES(3,34,'TR','HAPPY HOTEL',2,8,5660);
	INSERT INTO vacation_plan_2 VALUES(4,34,'TR','HAPPY HOTEL',1,8,5660);
	
	/* Employees tablosunda bulunmayan bir kişi için (EmployeeId=9) olan kişi için bir tatil planı giriniz.*/
	INSERT INTO vacation_plan2 VALUES(2,48,'TR',	'COMFORT HOTEL',9,10,7000);  --HATA
	
	
		/*JOIN işlemi ile 2 tablodan veri çekme*/
	SELECT e.FirstName,e.LastName,v.hotel_name, v.vacation_lenght
	FROM employees e
	JOIN vacation_plan_2 v
	ON e.EmployeeId=v.employee_id AND v.employee_id=1;
	
	
		/*------------------------------------------------------------------------------------------
	/*  ALTER TABLE (ADD, RENAME TO, DROP)
	/*  SQLITE MODIFY VE DELETE KOMUTLARINI DOĞRUDAN DESTEKLENMEZ
	/*------------------------------------------------------------------------------------------
	
	/*vacation_plan2 tablosuna name adında ve DEFAULT değeri noname olan 
	yeni bir sutun ekleyelim */
	
	
	ALTER TABLE vacation_plan_2
	ADD name TEXT DEFAULT "no_name";
	
	ALTER TABLE vacation_plan_2
	DROP COLUMN name;
	
	ALTER TABLE vacation_plan_2
	RENAME To people;
	
/*------------------------------------------------------------------------------------------
	/*  UPDATE,DELETE
		-- SYNTAX
		----------
		-- UPDATE tablo_adı
		-- SET sutun1 = yeni_deger1, sutun2 = yeni_deger2,...  
		-- WHERE koşul;
		
		--DELETE tablo_adı
		--WHERE koşul;
   /*-----------------------------------------------------------------------------------------*/
   
   /*vacation_plan2 tablosundaki employee_id=1 olan kaydini  hotel_name'ini Komagene Hotel olarak
   güncelleyiniz.*/
   
   UPDATE vacation_plan
   SET hotel_name = "komagene hotel"
   WHERE employee_id = 1;
   
      /* workers tablosunda salary sutunu 5000 'den az olanların salary(maaşına)
   %10 zam yapacak sorguyu yazınız*/ 
   
   UPDATE workers
   SET salary = salary*1.1
   WHERE salary>5000;
   
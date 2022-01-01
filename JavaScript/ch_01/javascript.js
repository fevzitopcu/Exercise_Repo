        // comment only one line
        /* comment with
        moe line*/

        // document.write() dokumana çıktı yapar
        // document.writeln() dokumana çıktı yapar be yeni satır başlatır.
     
        // document.writeln("merhaba");
        // document.writeln("dünya");

        // console.log("fevzi topçu"); web tarayıcısı konsoluna değer yazar.
        console.log("fevzi topçu");
        console.log("mobil app developer");

        // debugger;

        // innerHTML html etiketine veri gönderir ve etiketin içeriğinin değiştirir.
        document.getElementById("first").innerHTML = "fevzi";
        document.getElementById("second").innerHTML = "topçu";

        // debugger komutu

/* ---------------------------VERİ TÜRLERİ ------------------------------------------*/

        // basit veri turleri (String, number, boolean)

        // bileşik data types (array, object)

        // özel veri türleri (Undefined-tanımsız, Null-boş)

/* ---------------------------OPERATÖRLER------------------------------------------*/  


        // UNARY (tekli)


        // BINARY (ikili)


        // TERNARY (üçlü)

/* ------------------BIT İŞLEM OPERATÖRLER------------------------------------------

        &   ve 
        |   veya 
        ^   ayrıcalıklı veya
        ~   değil
        <<  sola kaydırma
        >>  sağa kaydırma
        >>> işaretsiz sağa kaydırma

/* ------------------MANTIKSAL OPERATÖRLER------------------------------------------

        && VE
        || VEYA

        ! DEĞİL ---Önüne geldiği operatörü mantıksal olarak ters dönderir.
        !true   -->false
        !false  -->true

/* ------------------ATAMA OPERATÖRLERİ--------------------------------------------

        a=b       a=b
        a+=b      a=a+b
        a-=b      a=a-b 
        a*=b      a=a*b 
        a/=b      a=a/b  
        a%=b      a=a%b  modülüs(kalan) ataması
        a**=b     a=a**b üstel atama

/* ------------------BİTSEL ATAMA OPERATÖRLERİ--------------------------------------------

        a<<=b     bitsel sola kaydırma ataması                  a=a<<b
        a>>=b     bitsel sağa kaydırma ataması                  a=a>>b
        a>>>=b    bitsel işaretsiz sağa kaydırma ataması        a=a>>b
        a&=b      bitsel ve ataması                             a=a&b
        a|=b      bitsel veya ataması                           a=a|b
        a^=b      bitsel ayrıcalıklı veya atama                 a=a^b

/* ------------------KARŞILAŞTIRMA OPERATÖRLERİ--------------------------------------------

        a==b      Eşit ise              ("8"==8 --> true) true döner
        a!=b      Eşit değil ise
        a===b     Denk ise              hem içerik hemde değer eşitik kontrolu  ("8"===8 --> false)
        a<b       Küçük ise
        a>b       Büyük ise
        a<=b      Küçük Eşit ise
        a>=b      Büyük Eşit ise

/* ------------------ARİTMETİK İŞLEM OPERATÖRLERİ--------------------------------------------
        +
        -
        *
        /
        %       MODÜLÜS
        **      ÜS
        ++      ARTIR ==> (++5 önceden artırma), (5++ sonradan artırma)
        --      AZALT ==> (--5 önceden azaltma), (5-- sonradan azaltma)

/* ----------------------------ÖZEL OPERATÖRLER--------------------------------------------

        +       birleştirme: sayısal değerleri toplar, diğerlerini birleştirir.  a=b+c
        \       kaçırma: \ifade==> \b,\f,\n,\t,\v,\',\",\\
                \XXX
                \xXX hexadecimal
                \uXXXX 16bit Unicode
        typeof(ifade)
        type of ifade

        ?:      koşullu operatör.    (koşul)? ifade1 : ifade2;
        void    geçersiz operatörü 
        delete  silme,  delete a;   delete a.özellik;   delete dizi[index];
        new     yeni oluşturma opr      a = new Object();
        this    bu operatoru            insanlar = {};
                                        insanlar.ad = "fevzi";
                                        insanlar.soyad = "topçu";
                                        insanlar.detay = function(){ return "adi soyadı:" this.ad + 
                                                                                        this.soyad}
        in              içerisinde              i in object_a;
        instancesof     örneği operatoru        object instanceof class


/* ---------------------------İŞLEM ÖNCELİĞİ--------------------------------------------

/* ---------------------------DEĞİŞKEN TÜRLERİ--------------------------------------------

        var     standart değişken tanımlar
        let     blok kapsamlı yerel değişken tanımlar:
                Variables defined with let cannot be Redeclared.
                Variables defined with let must be Declared before use.
                Variables defined with let have Block Scope.
        const   sabit değişken tanımlar.  
                Variables defined with const cannot be Redeclared.
                Variables defined with const cannot be Reassigned.
                Variables defined with const have Block Scope.  

                As a general rule, always declare a variable with const 
                unless you know that the value will change.
                Use const when you declare:
                        A new Array
                        A new Object
                        A new Function
                        A new RegExp

        değişken isimleri

        1- anlamlı olmalı
        2- harfler ile başlayabilir, tr karakter kullanılmaz
        3- altçizgi ile başlayabilir _name
        4- $ işareti ile başlayabilir
        5- büyük küçük harf duyarlıdır
        6- rakam ile başlayamaz ancak değişken ismi rakam içerebilir
        7- rezerve kelimerden olamaz
        8- aynı değişken adı değişken ifadelerinde kullanılamaz.

       
  */ 
        var a = "fevzi topçuuuuu";
        document.writeln(a + "<br/>");
        document.write("ssss" + "<br/>");

        let b = 1234;
        document.writeln(b + "<br>");
        document.writeln( typeof(b));

        const c = true;
        document.writeln(c + "<br>");
        document.writeln( typeof(c)+ "<br>");
       

        // define more variable in one line
        let person = "John Doe", carName = "Volvo", price = 200;
        var x = 12 + 3 + "5";
     
/* ---------------------------DEĞİŞKEN METODLARI------------------------
        var result = "10 + 15";

        1- lenght()     ---result.lenght;
        2- eval()       ---eval(result);    kendisine parametre olarak verilen srting değerleri js komutu gibi çalıştırır.                     
        3- trim()       ---result.trim();           değişkenin başındaki ve sonundaki boşlukları temizler.
        4- slice()      ---result.slice(start index, stop index) stop index not included
        5- substring()  ---result.substring(start index, stop index) stop index not included
        6- substr()     ---result.substr(start index, karakter sayısı)
        7- concat()     ---var1.concat(var2,var3,var4,...); birden fazla değişkenleri  birleştirir
        8- anchor()     ---html tagı oluşrurup isim atıyor
        9- link()       ---result.link("www.google.com") değişkene çapa tanımlaması yapıp link(köprü) atıyor.
        
        var q = 11;
        var w = 12;
   

        document.writeln(eval("q + w"))
        var result = "ahmet"
        document.writeln(result.slice(1,2))


        */

        var result = "ahmet"
        document.writeln(result.split)

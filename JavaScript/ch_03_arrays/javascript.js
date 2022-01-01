/*------------------------ARRAYS--------------------------------





*/

var dizi = [1,2,3,3,4,5,6,78,0], isimler = ["fevzi", "ahmet", "mehmet"]

document.write(dizi + "<br/>");
document.write(isimler + "<br/>");
document.write(isimler[0].slice(0,2) + "<br/>");
document.write(isimler[1].slice(1,) + "<br/>");


var result = new Array(1,2,3,4,4,3,2);
var result;
result = ["a","b","c"];

let arr = ["hh","jj"];

document.write(arr + "<br/>");

// dizi tanımlama

var yeni_dizi = new Array(3);
yeni_dizi[0] = "fevz";
yeni_dizi[1] = "topcu";
yeni_dizi[2] = 39;
document.write(yeni_dizi + "<br/>");


// içi içe çok boyutlu diziler
var bir 
var cokboyut = [1,2,3,4];
document.write(cokboyut + "<br/>");
document.write(Array.isArray(cokboyut) + "<br/>");


/*------------dizi metodları--------------------------

result = ["a","b","c"];

delete result[1];   --- belitilen index e ait elemanı siler ancan index kalır ve undefined olur
result.pop();        --- dizideki enson elemanı siler ve sildiği elemanı geri döndürür.
result.shift();      --- dizideki ilk elemanı siler ve sildiği elemanı geri döndürür.
result.push();       --- dizinin sonuna eleman veya elemanlar ekler. eklenti sonrası eleman sayısını döner.
result.unshift();    --- dizinin başına eleman veya elemanlar ekler. eklenti sonrası eleman sayısını döner.
result.splice();             --- diziye eleman veya elmanlar silinmesini veya eklenmesini sağlar. bu elemanları geri döndürür.
result.splice(1,2);          --- 1. indexten başka 2 eleman siler, eleman sayısı girilimezse sona kadar siler
result.splice(1,0,"new");    --- 1.index e "new" elemanını ekler
result.splice(2,2,"new");    --- 2.indexten başla 2 eleman sil, "new" elemanını ekler. sildiği elemanı döndür. silme yosa bişey döndürmez
result.slice(start, stop);   --- verilen indexler arasını alarak yeni dizi oluşturu.
result.slice(2, -2) ;        --- verilen indexler arasını alarak yeni dizi oluşturu.
result.slice(-3, -2);        --- sondan başlayarakverilen indexler arasını alarak yeni dizi oluşturu.
result.copyWithin(hedef index,start,stop); --- verilen değerler arası kopyalar ver hedef index e ekler
result.fill("new",start,stop);             --- verieln parametrelerle diiz elmanlarını değiştitir. new ile doldurur
result1.concat(result2,result2);                   --- dizilerii birleştitit
result.join();           --- parametre olarak verilen değeri ayıraç olarak kullanarak str döner
result.toString();       --- tüm elemanları stringe çevirir be geri döndürür
result.valueof();        --- dizi değerinin tam kopyasını alıp yeni dizi oluştutru. ver döner
result.indexof("b");      --- ilk bulduğu elemanın indexsini döner
result.lastindexof("b");  --- son bulduğu elemanın indexsini döner
result.find();            --- parametre olarak verlen fonkisyonu her eleman üzerine uygular verilen değeri arar ilk bulfuğunu döner.
result.find(function(eleman,sıra,referans)); 
result.findeindex()       --- parametre olarak verlen fonkisyonu her eleman üzerine uygular verilen değeri arar ilk bulduğu elemanın indexini döner.
result.findindex(function(eleman,sıra,referans)); 
result.reduce()           --- parametre olarak verlen fonkisyonu her eleman üzerine soldan sağa uygular ve tek bir değer oluşturarak bu değeri döner.
result.reduce(function(değer,eleman,sıra,referans)); 
result.reduceRight()           --- parametre olarak verlen fonkisyonu her eleman üzerine sağdan sola uygular ve tek bir değer oluşturarak bu değeri döner.
result.reduceRight(function(değer,eleman,sıra,referans)); 

result.reverse();   --- dizi sıralamasını tersıne çevirerek yenidiz oluşturu ver geri döndürür.
result.sort();      --- diiziçeriğinin sıralnmasını sağlar. unicode olarak çalışır
result.forEach();   --- parametre olarak geçilen fonsiyonu dizi elemanlarına uygular. bişey döndürmez
result.forEach(işlem);
result.some(function(eleman,sıra,değişken)); --- parametre olaran verilen fonk dizi elmanları üzerinde gezinir ve true olana kadar gizinir. 
result.every(function(eleman,sıra,değişken)); --- parametre olaran verilen fonk dizi elmanları üzerinde gezinir ve false olana kadar gizinir. 
result.filter(function(eleman,index,değişken referansı));    --- kendisine parametre oalrak verilen fonksiyonu tüm elemanlar üzerine çalıştıtırı ve tru olanlar ile yeni bir diiz döndürür.
result.map(function(dizi eleman,index,değişken referansı)); --- kendisine parametre oalrak verilen fonksiyonu tüm elemanlar üzerine çalıştıtırır. fonsiyonun geriye dödürdüğü derlerden yeni bir diiz oluştutru ve geri dönde
result.average(); ortalama döner
result.shuffle(); elemanları karıştıtıt yeni dizi oluştuturu ve döner




*/

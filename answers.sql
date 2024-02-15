1-) select o.ograd , o.ogrsoyad , o.dtarih from ogrenci as o

2-)select k.kitapadi , t.turadi from tur as t , kitap as k
where k.turno = t.turno and t.turadi IN ('Fıkra' , 'Hikaye')

3-)select o.ogrno,o.ograd,o.ogrsoyad,k.kitapadi,o.sinif
from ogrenci as o , islem as i , kitap as k
where o.ogrno = i.ogrno
and i.kitapno = k.kitapno
and o.sinif in ('10B' , '10C')

4-)select o.ograd , o.ogrsoyad , i.atarih from ogrenci as o
inner join islem as i
on o.ogrno = i.ogrno
inner join kitap as k
on i.kitapno = k.kitapno

5-)select * from kitap as k
inner join tur as t
on k.turno = t.turno
where t.turadi in ('Fıkra' , 'hikaye')

6-)select o.ogrno , o.ograd , o.ogrsoyad , k.kitapadi from ogrenci as o
inner join islem as i
on o.ogrno = i.ogrno
inner join kitap as k
on i.kitapno = k.kitapno
where o.sinif in ('10B' , '10C')
order by o.ograd

7-)select  * from ogrenci as o
left join islem as i
on o.ogrno = i.ogrno

8-)select  * from ogrenci as o
 left join islem as i
on o.ogrno = i.ogrno
where i.kitapno is null

9-)select k.kitapno,k.kitapadi ,count(i.islemno) from kitap as k
inner join islem as i
on i.kitapno=k.kitapno
group by k.kitapno , k.kitapadi
order by k.kitapno asc


10-)select k.kitapno,k.kitapadi ,count(i.islemno) from kitap as k
left join islem as i
on i.kitapno=k.kitapno
group by k.kitapno , k.kitapadi
order by k.kitapno asc

11-)select o.ograd , o.ogrsoyad , k.kitapadi from ogrenci as o
inner join islem as i
on o.ogrno = i.islemno
inner join kitap as k
on k.kitapno = i.kitapno
group by o.ograd , o.ogrsoyad , k.kitapadi

12-)  select o.ograd , o.ogrsoyad , k.kitapadi , y.yazarad , y.yazarsoyad , t.turadi , i.atarih from ogrenci as o
 join islem as i
on i.ogrno  = o.ogrno
 join kitap as k
on i.kitapno = k.kitapno join yazar as y
on y.yazarno = k.yazarno
left join tur as t
on t.turno= k.turno

13-)select o.ograd , o.ogrsoyad , k.kitapadi from ogrenci as o
inner join islem as i
on o.ogrno = i.ogrno
inner join kitap as k
on i.kitapno=k.kitapno
where o.sinif in ('10A','10B')

14-)select avg(k.sayfasayisi) from kitap as k

15-)select k.kitapadi , k.sayfasayisi from kitap as k
where k.sayfasayisi > (select avg(k.sayfasayisi) from kitap as k)

16-) select count(o.ogrno) from ogrenci as o

17-)select count(o.ogrno) as toplam_sayi from ogrenci as o

18-)select count(distinct o.ograd) from ogrenci as o

19-)select * from kitap as k
order by k.sayfasayisi desc limit 1

20-)select k.kitapadi , k.sayfasayisi from kitap as k
order by k.sayfasayisi desc limit 1

21-)select * from kitap as k
order by k.sayfasayisi asc limit 1

22-)select k.kitapadi , k.sayfasayisi from kitap as k
order by k.sayfasayisi asc limit 1

23-)select * from kitap as k
inner join tur as t
on k.turno=t.turno
where t.turadi in('Dram')
order by k.sayfasayisi desc limit 1

24-)select sum(k.sayfasayisi) from ogrenci as o
inner join islem as i
on o.ogrno = i.ogrno
inner join kitap as k
on k.kitapno = i.kitapno
where o.ogrno = 15

25-)select o.ograd , count(o.ograd) from ogrenci as o
group by o.ograd
order by count(o.ograd) desc

26-)select o.sinif , count(o.ogrno) from ogrenci as o
group by o.sinif

27-)select o.sinif , o.cinsiyet ,  count(o.cinsiyet)  from ogrenci as o
group by o.sinif , o.cinsiyet
order by o.sinif , o.cinsiyet

28-)select o.ograd , o.ogrsoyad , sum(k.sayfasayisi) from ogrenci as o
inner join islem as i
on o.ogrno = i.ogrno
inner join kitap as k
on i.kitapno = k.kitapno
group by o.ograd , o.ogrsoyad , k.sayfasayisi
order by  sum(k.sayfasayisi) asc

29-)select o.ograd , o.ogrsoyad , count(o.ogrno) as kitap_sayisi from ogrenci as o
inner join islem as i
on o.ogrno = i.ogrno
group by o.ograd , o.ogrsoyad
order by kitap_sayisi desc
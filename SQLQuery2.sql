--Select
--ANSII
SELECT ContactName Adi,CompanyName SirketAdi,City Sehir from Customers

Select * from Customers where City = 'London'

--Case insensitive  => buyuk, kucuk harf kullaniminda 

Select * from Products where CategoryID = 1 or CategoryID = 3

Select * from Products where CategoryID = 1 and UnitPrice >= 10   --where => nerede

select * from Products order by ProductName  --order by => sirala

select * from Products order by UnitPrice desc   --ascending artan  --descending dusen

select count(*) from Products --tüm satirlari say

select count(*) Adet from Products where CategoryID = 2       --kategoriId`si 2 olanlari say

select categoryId,count(*) Adet from Products group by CategoryID    

select categoryId,count(*) Adet from Products group by CategoryID having count(*) < 10

select categoryId,count(*) Adet from Products where UnitPrice > 20 group by CategoryID having count(*) < 10
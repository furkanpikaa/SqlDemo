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

select Products.ProductID, Products.ProductName, Products.UnitPrice , Categories.CategoryName
from Products inner join Categories on Products.CategoryID = Categories.CategoryID               --inner join eşleşen datayı getirir.
where Products.UnitPrice > 10
																								 --left join
select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID


select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID

select * from Customers c inner join Orders o
on c.CustomerID = o.CustomerID

select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null
SELECT Products.ProductName aS 'urun adi' , SUM([Order Details].UnitPrice * [Order Details].Quantity) as 'Kazanilan toplam miktar'
from Products 
inner join [Order Details] on Products.ProductID = [Order Details].ProductID
inner join Orders on [Order Details].OrderID = Orders.OrderID
group by Products.ProductName
order by [Kazanilan toplam miktar]
create procedure GetLowestPriceProducts(LowestPrice int) select * from Products where Price <= LowestPrice;

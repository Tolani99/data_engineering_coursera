DELIMITER //
CREATE PROCEDURE GetProductSummary(OUT NumberOfLowPriceProducts INT, OUT NumberOfHighPriceProducts INT) BEGIN SELECT COUNT(ProductID) INTO NumberOfLowPriceProducts FROM Products
WHERE Price < 50; SELECT COUNT(ProductID) INTO NumberOfHighPriceProducts FROM Products WHERE Price >= 50; END // 

CALL GetProductSummary(@TotalNumberOfLowPriceProducts, @TotalNumberOfHighPriceProducts);
select @TotalNumberOfLowPriceProducts, @TotalNumberOfHighPriceProducts;

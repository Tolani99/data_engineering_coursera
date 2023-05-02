CREATE FUNCTION FindTotalCost(Cost Decimal(5,2)) RETURNS DECIMAL (5, 2) DETERMINISTIC RETURN (Cost - (Cost * 0.1)); select FindTotalCost(100);

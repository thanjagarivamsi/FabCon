-- View: SupplyChain.vw_SupplyRiskAnalysis
CREATE VIEW SupplyChain.vw_SupplyRiskAnalysis
AS
SELECT
  w.ProductID,
  s.SupplierName,
  w.QuantityOnHand,
  sp.RiskScore,
  CASE
    WHEN w.QuantityOnHand < 20 AND sp.RiskScore > 30 THEN 'High Supply Risk'
    WHEN w.QuantityOnHand < 50 THEN 'Potential Risk'
    ELSE 'Stable'
  END AS SupplyRiskLevel
FROM SupplyChain.Warehouse AS w
JOIN SupplyChain.Suppliers AS s
  ON w.SupplierID = s.SupplierID
LEFT JOIN SupplyChain.SupplierPerformance AS sp
  ON s.SupplierID = sp.SupplierID;

GO


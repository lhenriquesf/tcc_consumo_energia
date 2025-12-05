CREATE OR REPLACE TABLE `snappy-spanner-474217-i9.tcc_consumo_energia.dados_limpos_house2` AS
SELECT
  Time,
  Aggregate,
  Appliance,
  Consumption_Watts
FROM `snappy-spanner-474217-i9.tcc_consumo_energia.dados_brutos_house2`
UNPIVOT (
  Consumption_Watts
  FOR Appliance IN (
    Appliance1 AS 'Fridge_Freezer',
    Appliance2 AS 'Washing_Machine',
    Appliance3 AS 'Dishwasher',
    Appliance4 AS 'Television',
    Appliance5 AS 'Microwave',
    Appliance6 AS 'Toaster',
    Appliance7 AS 'Hi_Fi',
    Appliance8 AS 'Kettle',
    Appliance9 AS 'Oven_Extractor_Fan'
  )
);

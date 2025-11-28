-- Esta query cria ou substitui a tabela final já no formato unpivot
CREATE OR REPLACE TABLE `snappy-spanner-474217-i9.tcc_consumo_energia.dados_limpos_house2` AS (

  -- Seleciona os dados do primeiro aparelho e cria as colunas "Appliance" e "Consumption_Watts"
  SELECT Time, Aggregate, 'Fridge_Freezer' AS Appliance, Appliance1 AS Consumption_Watts
  FROM `snappy-spanner-474217-i9.tcc_consumo_energia.dados_brutos_house2`

  UNION ALL

  -- Repete o processo para o segundo aparelho e une os resultados
  SELECT Time, Aggregate, 'Washing_Machine' AS Appliance, Appliance2 AS Consumption_Watts
  FROM `snappy-spanner-474217-i9.tcc_consumo_energia.dados_brutos_house2`

  UNION ALL

  SELECT Time, Aggregate, 'Dishwasher' AS Appliance, Appliance3 AS Consumption_Watts
  FROM `snappy-spanner-474217-i9.tcc_consumo_energia.dados_brutos_house2`

  UNION ALL

  SELECT Time, Aggregate, 'Television' AS Appliance, Appliance4 AS Consumption_Watts
  FROM `snappy-spanner-474217-i9.tcc_consumo_energia.dados_brutos_house2`

  UNION ALL

  SELECT Time, Aggregate, 'Microwave' AS Appliance, Appliance5 AS Consumption_Watts
  FROM `snappy-spanner-474217-i9.tcc_consumo_energia.dados_brutos_house2`

  UNION ALL

  SELECT Time, Aggregate, 'Toaster' AS Appliance, Appliance6 AS Consumption_Watts
  FROM `snappy-spanner-474217-i9.tcc_consumo_energia.dados_brutos_house2`

  UNION ALL

  SELECT Time, Aggregate, 'Hi_Fi' AS Appliance, Appliance7 AS Consumption_Watts
  FROM `snappy-spanner-474217-i9.tcc_consumo_energia.dados_brutos_house2`

  UNION ALL

  SELECT Time, Aggregate, 'Kettle' AS Appliance, Appliance8 AS Consumption_Watts
  FROM `snappy-spanner-474217-i9.tcc_consumo_energia.dados_brutos_house2`

  UNION ALL

  SELECT Time, Aggregate, 'Oven_Extractor_Fan' AS Appliance, Appliance9 AS Consumption_Watts
  FROM `snappy-spanner-474217-i9.tcc_consumo_energia.dados_brutos_house2`
);

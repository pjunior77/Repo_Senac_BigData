###################################################################################
#Processamento utilizando a biblioteca POLARS  (Executou em +- 1 minutos)
###################################################################################
import polars as pl

#Carrega os arquivos com as bases de cada mês
#Fonte: https://portaldatransparencia.gov.br/download-de-dados/novo-bolsa-familia
df_jan = pl.read_csv("202501_NovoBolsaFamilia.csv", separator=";", encoding="latin1")
df_fev = pl.read_csv("202502_NovoBolsaFamilia.csv", separator=";", encoding="latin1")
df_mar = pl.read_csv("202503_NovoBolsaFamilia.csv", separator=";", encoding="latin1")
df_abr = pl.read_csv("202504_NovoBolsaFamilia.csv", separator=";", encoding="latin1")
df_mai = pl.read_csv("202505_NovoBolsaFamilia.csv", separator=";", encoding="latin1")
df_jun = pl.read_csv("202506_NovoBolsaFamilia.csv", separator=";", encoding="latin1")
df_jul = pl.read_csv("202507_NovoBolsaFamilia.csv", separator=";", encoding="latin1")
df_ago = pl.read_csv("202508_NovoBolsaFamilia.csv", separator=";", encoding="latin1")

#Concatena todos os dados em um só DataFrame
df = pl.concat([df_jan, df_fev, df_mar, df_abr, df_mai, df_jun, df_jul, df_ago])

print (df.head())

###################################################################################
#Processamento utilizando a biblioteca PANDAS  (Executou em +- 5 minutos)
###################################################################################
import pandas as pd

#Carrega os arquivos com as bases de cada mês
#Fonte: https://portaldatransparencia.gov.br/download-de-dados/novo-bolsa-familia
df_jan = pd.read_csv("202501_NovoBolsaFamilia.csv", sep=";", encoding="latin1")
df_fev = pd.read_csv("202502_NovoBolsaFamilia.csv", sep=";", encoding="latin1")
df_mar = pd.read_csv("202503_NovoBolsaFamilia.csv", sep=";", encoding="latin1")
df_abr = pd.read_csv("202504_NovoBolsaFamilia.csv", sep=";", encoding="latin1")
df_mai = pd.read_csv("202505_NovoBolsaFamilia.csv", sep=";", encoding="latin1")
df_jun = pd.read_csv("202506_NovoBolsaFamilia.csv", sep=";", encoding="latin1")
df_jul = pd.read_csv("202507_NovoBolsaFamilia.csv", sep=";", encoding="latin1")
df_ago = pd.read_csv("202508_NovoBolsaFamilia.csv", sep=";", encoding="latin1")

#Concatena todos os dados em um só DataFrame
df = pd.concat([df_jan, df_fev, df_mar, df_abr, df_mai, df_jun, df_jul, df_ago], ignore_index=True)

print (df.head())

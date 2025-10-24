import pandas as pd
import matplotlib.pyplot as plt

#Mesocúrticas: curva em sino equilibrada
meso = [40, 41, 42, 44, 45, 46, 47, 48, 50, 51, 55, 52, 53, 51, 50, 48, 47, 46, 44, 42, 40]

#Leptocúrticas: pico central agudo e caudas mais longas
lepto = [45, 46, 47, 48, 49, 50, 50, 49, 48, 47, 46, 45, 45]

#Platicúrticas: curva achatada e mais espalhada
plati = [45, 46, 47, 48, 49, 50, 49, 48, 47, 46, 45]

#Cria os dataframes
df_meso = pd.DataFrame({'valores': meso})
df_lepto = pd.DataFrame({'valores': lepto})
df_plati = pd.DataFrame({'valores': plati})

#Calcula a assimetria e a curtose para a curva Mesocúrtica
assimetria_meso = df_meso['valores'].skew()
curtose_meso = df_meso['valores'].kurt()

#Calcula a assimetria e a curtose para a curva Leptocúrtica
assimetria_lepto = df_lepto['valores'].skew()
curtose_lepto = df_lepto['valores'].kurt()

#Calcula a assimetria e a curtose para a curva Platicúrtica
assimetria_plati = df_plati['valores'].skew()
curtose_plati = df_plati['valores'].kurt()

#############################################
#Monta os gráficos
#############################################

#Cria a área da figura
plt.figure(figsize=(15,5))

#Primeira linha, com 3 colunas, colocando dados na coluna 1
plt.subplot(1, 3, 1)
plt.plot(df_meso.index, df_meso['valores'], marker='o', color='blue')
plt.title(f'Mesocúrtica {(curtose_meso * 100):.2f}')
plt.xlabel('Índice')
plt.ylabel('Valor')

#Primeira linha, com 3 colunas, colocando dados na coluna 2
plt.subplot(1, 3, 2)
plt.plot(df_lepto.index, df_lepto['valores'], marker='o', color='green')
plt.title(f'Leptocúrtica {(curtose_lepto * 100):.2f}')
plt.xlabel('Índice')
plt.ylabel('Valor')

#Primeira linha, com 3 colunas, colocando dados na coluna 3
plt.subplot(1, 3, 3)
plt.plot(df_plati.index, df_plati['valores'], marker='o', color='red')
plt.title(f'Platicúrtica {(curtose_plati * 100):.2f}')
plt.xlabel('Índice')
plt.ylabel('Valor')

#Exibe o gráfico
plt.tight_layout()
plt.show()
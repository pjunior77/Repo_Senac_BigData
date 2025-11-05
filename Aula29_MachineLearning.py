#Importo as bibliotecas
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression   #"pip install scikit-learn" no command prompt

#Crio o dataFrame com os dados
df = pd.DataFrame({'investimento_marketing': [10, 20, 30, 40, 50, 60],
                    'vendas': [100, 130, 160, 180, 210, 240]})
                    #'vendas': [100, 70, 250, 110, 50, 340]})

x = df[['investimento_marketing']]      #Usa dois colchetes caso queira usar uma lista de colunas
y = df['vendas']

#Treinar o modelo
modelo = LinearRegression()
modelo.fit(x,y)

#Estender os dados para previsão de até R$110 mil
#x_extendido = pd.DataFrame({'investimento_marketing': [10, 20, 30, 40, 60, 70, 80, 110]})
x_predicao = pd.DataFrame({'investimento_marketing': [70, 80, 110]})       #Para aparecer só a predição
y_predicao = modelo.predict(x_predicao)

#Visualizar o gráfico
plt.figure(figsize=(8,5))
plt.scatter(df['investimento_marketing'], df['vendas'], color='green')          #Dados orginais
plt.plot(x_predicao['investimento_marketing'], y_predicao, color='orange')      #Dados gerados pelo modelo de Regressão Linear
plt.xlabel('Investimento em Marketing (mil R$)')
plt.ylabel('Vendas (mil unidades)')
plt.title('Regressão Linear com Previsão até R$ 110 mil')
plt.show()


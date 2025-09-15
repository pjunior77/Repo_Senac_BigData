#Aula03 - Atividade 02 - 31/08/2025

#Importa a biblioteca de matemática para poder usar a função math.ceil() que arredonda um número para cima
import math

#Solicita as dimenões da cozinha
print('\n----- Preencha abaixo as dimensões da sua cozinha -----')

while True:
    try:
        comprimento = float(input('Qual o comprimento em metros? '))
        break
    except:
        print('Valor inválido. Favor informar um número.')

while True:
    try:
        largura = float(input('Qual a largura em metros? '))
        break
    except:
        print('Valor inválido. Favor informar um número.')

while True:
    try:
        altura = float(input('Qual a altura em metros? '))
        break
    except:
        print('Valor inválido. Favor informar um número.')

#Calcula a área total das paredes da cozinha
areaParedes = ( (2 * (comprimento * altura)) + (2 * (largura * altura)) )

#Calcula a quantidade de caixas de azulejos a serem utilizadas
#Uma caixa de azulejos cobre 1,5 m²
#Já arredonda com um número inteiro para cima
qtdCaixas = math.ceil(areaParedes / 1.5)       

#Imprime os resultados do programa
print('\n---------- Resultados do programa ----------')

print(f'A área total das paredes da cozinha é {areaParedes:.2f} m².')
print(f'Serão necessárias {qtdCaixas} caixas de azulejos para revestir todas as paredes da cozinha.')

print('----- FIM -----\n')

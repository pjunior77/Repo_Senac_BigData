#Aula03 - Atividade 01 - 29/08/2025

#Importa a biblioteca de matemática para poder usar a função math.ceil() que arredonda um número para cima
import math

#Solicita a potência da lâmpada
while True:
    try:
        potLampada = int(input('Qual a potência da lâmpada em watts? '))
        break
    except:
        print('Valor inválido. Informe um número inteiro.\n')

#Solicita as dimensões do cômodo
while True:
    try:
        comprimento = float(input('Qual o comprimento do cômodo em metros? '))
        break
    except:
        print('Valor inválido. Informe um número.\n')

while True:
    try:
        largura = float(input('Qual a largura do cômodo em metros? '))
        break
    except:
        print('Valor inválido. Informe um número.\n')

#Calcula a área do cômodo
areaComodo = comprimento * largura

#Calcula a quantidade de lâmpadas necessárias para o cômodo (a cada 3 m² deve haver um bocal para uma lâmpada)
qtdLampadas = math.ceil((areaComodo / 3))   #Já arredonda com um número inteiro para cima

#Calcula a potência ideal necessária (potência ideal = 3 watts por m²)
potIdeal = areaComodo * 3

#Calcula a potência disponível
potDisponivel = qtdLampadas * potLampada

#Imprime o resultado do programa
print('\n---------- Resultados do programa ----------')
print(f'A área total do cômodo é de {areaComodo:.2f} m².')
print(f'Será necessário um total de {qtdLampadas} lâmpadas para uma área de {areaComodo:.2f} m².')
print(f'A potência ideal necessária de iluminação para o cômodo de {comprimento:.2f} m x {largura:.2f} m é de {potIdeal:.2f} watts.')
print(f'{qtdLampadas} lâmpadas de {potLampada} watts geram uma potência de {potDisponivel} watts.')

#Verifica se a iluminação é ideal (potência ideal = 3 watts por m²)
if ((potDisponivel / areaComodo) < 3):
    print(f'A potência de iluminação não é ideal, favor rever os cálculos.')
else:
    print(f'A potência de iluminação é ideal, parabéns!')

print('----- FIM -----\n')


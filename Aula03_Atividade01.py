#Atividade 01 - Aula 03 - 29/08/2025

#Solicita a potência da lâmpada
while True:
    try:
        potLampada = int(input('Informe a potência da lâmpada em watts: '))
        break
    except:
        print('Valor inválido. Informe um número inteiro.')

#Solicita as dimensões do cômodo
while True:
    try:
        comprimento = float(input('Informe o comprimento do cômodo em metros: '))
        break
    except:
        print('Valor inválido. Informe um número.')

while True:
    try:
        largura = float(input('Informe a largura do cômodo em metros: '))
        break
    except:
        print('Valor inválido. Informe um número.')

#Calcula a área do cômodo
areaComodo = comprimento * largura

#Calcula a potência total necessária (potência ideal = 3 watts por metro quadrado)
potNecessaria = areaComodo * 3

#Calcula a quantidade de lâmpadas necessárias (cada 3 metros quadrados deve haver um bocal para uma lâmpada)
qtdLampadas = areaComodo / 3

print(f'/nA área total do cômodo é de {areaComodo:.2f}')


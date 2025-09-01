#Aula03 - Atividade 03 - 31/08/2025

print('\n----- Preencha abaixo as informações para o cálculo do rendimento do dia do seu carro -----')

#Solicita a kilometragem inicial e final
while True:
    try:
        kmInicial = float(input('Qual a kilometragem inicial? '))
        break
    except:
        print('Valor inválido. Favor informar um número.')

while True:
    try:
        kmFinal = float(input('Qual a kilometragem final? '))

        #A kmFinal tem que ser maior que a kmInicial, se não for, solicita outro valor
        if kmFinal > kmInicial:
            break
        else:
            print('A kilometragem final não pode ser menor ou igual a kilometragem inicial.')
    except:
        print('Valor inválido. Favor informar um número.')
    
#Solicita a quantidade de litros consumidos
while True:
    try: 
        qtdLitros = float(input('Qual a quantidade de litros de combustível consumidos? '))
        break
    except:
        print('Valor inválido. Favor informar um número.')

#Solicita o valor total recebido dos passageiros (em Real)
while True:
    try:
        valorRecebido = float(input('Qual o valor recebido em reais? '))
        break
    except:
        print('Valor inválido. Favor informar um número.')

#Calcula a média de consumo do carro (km/l)
mediaConsumo = ((kmFinal - kmInicial) / qtdLitros)

#Calcula o gasto com combustível
#O preço do combustível é R$ 4,87 por litro
gastoCombustivel = mediaConsumo * 4.87

#Calcula o lucro líquido do dia
lucroLiquido = valorRecebido - gastoCombustivel

#Imprime os resultados do programa
print('\n---------- Resultados do programa ----------')

print(f'A média de consumo foi de {mediaConsumo:.2f} km/l.')
print(f'O gasto com combustível foi de R$ {gastoCombustivel:.2f}.')
print(f'O lucro líquido do dia foi de R$ {lucroLiquido:.2f}.')

print('----- FIM -----\n')

#Aula04 - Atividade Lista com estrutura de repetição - 01/09/2025

while True:
    try:
        qtdeProdutos = int(input('Quantos produtos deseja cadastrar? '))
        break
    except:
        print('Valor inválido. Digite um número inteiro.')

for i in range(0, qtdeProdutos, 1):
    print('FIM')
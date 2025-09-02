#Aula04 - Atividade Lista com estrutura de repetição - 01/09/2025

while True:
    try:
        qtdeProdutos = int(input('Quantos produtos deseja cadastrar? '))
        break
    except:
        print('Valor inválido. Digite um número inteiro.')

#Crio as listas
nomeProduto = []
valorProduto = []

#Para cada produto pega as informações
for i in range(0, qtdeProdutos, 1):
    
    nome = input(f'Qual o nome do produto {i+1}? ').strip()
    nomeProduto.append(nome)

    while True:
        try:
            valor = float(input(f'Qual o valor do produto {i+1}? R$ '))
            valorProduto.append(valor)
            break
        except:
            print('Valor inválido. Digite um número.')

#Imprime os resultados
print('\n----- Exibindo a lista de produtos -----')
for i in range(0, qtdeProdutos, 1):
    print(f'Nome do produto {i+1}: {nomeProduto[i]} - Valor do produto {i+1}: R$ {valorProduto[i]:.2f}')
print('--- FIM ---')

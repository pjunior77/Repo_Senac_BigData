#Aula 04 - 01/09/2025
'''
#Exemplo 1
contador = 1

while contador <= 5:
    print('Contador:', contador)
    contador += 1
'''
'''
#Exemplo 2
senha = ''

while senha != '1234':
    senha = input('Digite a senha: ').strip()           #Tira os espaços antes e depois

    if senha != '1234':
        print('Senha incorreta. Digite novamente.')
        
print('Acesso liberado')
'''
'''
#Exemplo 3
#for i in range (11):
#    print(i)

for i in range (0, 31, 10):
    print(i)
'''
'''
varTupla = ('Joao', 22, 4800.50, 'Rua Jota, nº 80')     #Tupla - é imutável
varLista = ['Joao', 22, 4800.50, 'Rua Jota, nº 80']     #Lista - é mutável
print(varTupla)
print(type(varTupla))
print(varLista)
print(type(varLista))
print(varLista[2])
print(varLista[1:3])

telefone = 21999999999
varLista.append(telefone)       #Adiciona umvalor ao final da lista

print(varLista)

#Percorre e imprime cada campo da lista
for i in varLista:
    print(i)

cliente = []
nome = 'Joao'
idade = 22
salario = 4800.50
endereco = 'Rua Jota, nº 80'
telefone = 21999999999

cliente = [nome, idade, salario, endereco, telefone]
print(f'Lista: {cliente}')
'''
'''
cliente = []
while True:
    try:
        num = int(input('Digite o número: '))
        cliente.append(num)

        sair = input('Deseja inserir mais um número (S/N)? ').upper().strip()

        if sair == 'N':
            break

    except:
        print('Digite um número válido.')

for i in cliente:
    print(i)
'''

#Exemplo para um Menu de Opções
print('1- Opção A\n2- Opção B\n3- Opção C\n4- Opção D')
while True:
    try:
        opcao = int(input('Opção: '))
        if opcao in [1,2,3,4]:
            print('Opção OK.')
            break
        else:
            print('Opção inválida.')
    except:
        print('Digite um número válido.')

while True:
    try:
        nota1 = float(input('Digite o primeiro número: '))
        break
    except:
        print('Valor inválido. Digite um número válido.')

while True:
    try:
        nota2 = float(input('Digite o segundo número: '))
        break
    except:
        print('Valor inválido. Digite um número válido.')

media = (nota1 + nota2) / 2

if media < 5:
    print('Aluno reprovado')

elif media >= 5 and media < 7:
    print('Aluno em recuperação')

else:
    print('Aluno aprovado')

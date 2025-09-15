#Aula03 - Atividade 04 - 01/09/2025

print('\n----- Preencha abaixo as informações solicitadas -----')

#Solicita o valor das notas das 3 avaliações
while True:
    try:
        nota1 = float(input("Qual o valor da nota da primeira avaliação? "))
        break
    except:
        print('Valor inválido. Favor informar um número.')

while True:
    try:
        nota2 = float(input("Qual o valor da nota da segunda avaliação? "))
        break
    except:
        print('Valor inválido. Favor informar um número.')

while True:
    try:
        notaOptativa = float(input("Qual o valor da nota da avaliação optativa (digite -1, caso não tenha feito essa avaliação)? "))
        break
    except:
        print('Valor inválido. Favor informar um número.')

#Se tiver nota optativa, verifica se ela substitui alguma das 2 notas obrigatórias
if notaOptativa != -1:

    #Verifica qual das notas obrigatórias é a menor
    if nota1 < nota2:
        #Nota 1 é menor que a nota 2
        #Verifica se a nota optativa é maior que a nota 1
        if notaOptativa > nota1:

            #Substitui o valor da nota 1 pela nota optativa
            nota1 = notaOptativa
        
    else:
        #Nota 2 é menor que a nota 1
        #Verifica se a nota optativa é maior que a nota 2
        if notaOptativa > nota2:

            #Substitui o valor da nota 2 pela nota optativa
            nota2 = notaOptativa

#Calcula a média final
mediaFinal = (nota1 + nota2) / 2

#Calcula a situação do aluno
situacaoAluno = ''
if mediaFinal < 3:
    situacaoAluno = 'REPROVADO(A)'

elif mediaFinal >= 3 and mediaFinal < 6:
    situacaoAluno = 'EM RECUPERAÇÃO'

else:
    situacaoAluno = 'APROVADO(A)'

#Imprime os resultados do programa
print('\n---------- Resultados do programa ----------')

print(f'A média final do(a) aluno(a) foi {mediaFinal:.2f} pontos.')
print(f'Situação final do(a) aluno(a): {situacaoAluno}.')

print('----- FIM -----\n')


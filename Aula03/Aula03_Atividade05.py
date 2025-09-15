#Aula03 - Atividade 05 - 01/09/2025

while True:
    try:
        numero = float(input('Digite um número para saber se ele é positivo ou negativo: '))
        break
    except:
        print('Valor inválido. Favor informar um número.')

#Verifica se o número é positivo ou negativo e imprime o resultado
if numero < 0:
    print('O número digitado é NEGATIVO.')

else:
    print('O número digitado é POSITIVO.')
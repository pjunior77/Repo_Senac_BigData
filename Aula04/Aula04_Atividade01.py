#Aula04 - Atividade 1 - 01/09/2025

#Peça ao usuário um número maior que 10
#Repita enquanto o número for menor ou igual a 10
numero = 0
while numero <= 10:

    while True:
        try:
            numero = float(input('Digite um número: '))
            break
        except:
            print('Número inválido. Favor digitar um número.')

    if (numero <= 10):
        print('Digite um número maior que 10.')

print('OK, agora o número é maior que 10.')
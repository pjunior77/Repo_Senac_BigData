#Atividade 03 - 29/08/2025

nomeHospede = input('Prezado hóspede, qual o seu nome? ')

while True:
    try:
        numNoites = int(input(f'{nomeHospede}, informe o número de noites que deseja ficar hospedado? '))
        break

    except:
        print('Valor inválido. Digite um número inteiro.\n')

tipoQuarto = input(f'{nomeHospede}, escolha o tipo de quarto que deseja ficar hospedado (Quarto Genin, Quarto Jounin ou Suíte Hokage)? ')

#Calcula o valor da reserva dependendo do tipo de quarto escolhido
if tipoQuarto.upper() == 'QUARTO GENIN':
    valorReserva = numNoites * 120.00

elif tipoQuarto.upper() == 'QUARTO JOUNIN':
    valorReserva = numNoites * 180.00

elif tipoQuarto.upper() == 'SUÍTE HOKAGE':
    valorReserva = numNoites * 250.00

else:
    valorReserva = 0.0

print(f'Prezado(a) {nomeHospede}, o valor da sua reserva no Kohoha Hotel para {numNoites} noite(s) no(a) {tipoQuarto.title()} será de {valorReserva:.2f}')

print(f'Prezado(a) {nomeHospede}, o valor da sua reserva no Konoha Hotel para {numNoites} noite(s) no(a) {tipoQuarto.title()} será de {round(valorReserva, 2)}')

'''
if tipo_quarto == 1:
    preco_noite = 120
    nomeQuarto = ''

printf('\n--- Confirmação de Reserva ---\n')
printf(f'Nome do hóspede: {nomeHospede}')
printf(f'Tipo de quarto: {tipoQuarto}')
'''
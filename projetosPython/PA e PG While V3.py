'''PA'''
pt = int(input('Digite o primeiro termo: '))
r = int (input('Digite a razão: '))

c = pt

cont = 1 #contagem de termos
total = 0 #total de termos exibidos
mais = 10 #variavel dos termos extras

while mais != 0:
    total = total + mais
    while cont <= total:
        print(f'{c}', end=' -> ')
        cont += 1
        c += r
    print('PAUSA')

    mais = int(input('Quantos termos quer ver mais?'))
print('FIM')
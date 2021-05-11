from time import sleep
print('Seja bem vindo!')
preço = float(input('Insira aqui o Preço o produto: R$'))
print('''Escolha o método de pagamento:
[ 1 ] À vista dinheiro/cheque
[ 2 ] À vista cartão
[ 3 ] 2x no cartão
[ 4 ] 3x ou mais no cartão''')
opção = int(input('Sua opção: '))

if opção == 1:
    total = preço - (preço * 0.10)
    print('Processando compra......')
    sleep(2)
elif opção == 2:
    total = preço - (preço * 0.05)
    print('Processando compra......')
    sleep(2)
elif opção == 3:
    print('Processando compra.......')
    sleep(2)
    total = preço / 2
    print('Prosseguindo.......')
    sleep(2)
    print('Sua compra será parcelada em 2x de R${:.2f} SEM JUROS'.format((total)))
elif opção == 4:
    print('Processando compra.......')
    sleep(2)
    total = preço + (preço * 0.20)
    parcela = int(input('Escolha quantas parcelas: '))
    parcelado = total / parcela
    print('Prosseguindo.......')
    sleep(2)
    print('Sua compra de R${:.2f} será parcelada em {}x de R${:.2f} COM JUROS DE 20%'.format(preço, parcela, parcelado))
else:
    total = preço
    print('Opção Invalida')
print('Seu produto de R${:.2f} vai custar R${:.2f} no final'.format(preço, total))
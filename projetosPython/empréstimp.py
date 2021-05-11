valorCasa = float(input('Valor da casa: '))
salario = float(input('Salario do comprador: '))
financiamento = int(input('Quantos anos de financiamento: '))

prestacaoMensal = valorCasa / (financiamento * 12)
verificacao = salario * 0.30

print('Para pagar a casa de R${:.2f} em {} anos'.format(valorCasa, financiamento))
print('A prestação será de R${:.2f}'.format(prestacaoMensal))
if prestacaoMensal >= verificacao:
    print('\033[0:31mEmpréstimo negado\033[0:m')
else:
    print('\033[32mEmpréstimo Aprovado\033[m')

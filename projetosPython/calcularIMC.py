peso = float(input('Digite seu peso: (Kg) '))
altura = float(input('Digite sua altura: (M) '))

print('Peso {} e Altura {}'.format(peso, altura))
imc = peso / (altura ** 2)

if imc < 18.5:
    print('IMC: {:.2f} Abaixo do peso.'.format(imc))
elif imc < 25:
    print('IMC: {:.2f} Peso ideal.'.format(imc))
elif imc < 30:
    print('IMC {:.2f} Sobrepeso'.format(imc))
elif imc < 40:
    print('IMC {:.2f} Obesidade'.format(imc))
else:
    print('IMC {:.2f} Obesidade Mórbida'.format(imc))
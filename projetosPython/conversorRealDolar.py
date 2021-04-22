real = float(input('Quanto dinheiro você tem na carteira? R$'))
dolar = real / 5.57
euro = real / 6.70
print('Com R${:.2f} você pode comprar U${:.2f} e EUR{:.2f}'.format(real, dolar, euro))
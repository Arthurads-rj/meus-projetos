preco = float(input('Escreva o preço: R$'))
desc: float = preco - (preco * 5/100)

print('O preço do produto é {} e com seu desconto de 5% é {:.2f}'.format(preco, desc))
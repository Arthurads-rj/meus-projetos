import random

itensObjeto = ('Orbe', 'Talismã', 'Adaga', 'Colar')
itensTipo = ('Lobo', 'Falcão', 'Leão', 'Dragão')
itensElemento = ('Fogo', 'Trovão', 'Caos', 'Gelo')

gerador = random.randint(0, 3)
gerador2 = random.randint(0, 3)
gerador3 = random.randint(0, 3)

print(f'{itensObjeto[gerador]} do {itensTipo[gerador2]} do {itensElemento[gerador3]}')
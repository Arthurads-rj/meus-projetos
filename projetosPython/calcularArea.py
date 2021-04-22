area1 = float(input('Digite a altura da parede: '))
area2 = float(input('Digite a largura da parede: '))
calculo: float = area1 * area2
tinta: float = calculo / 2

print('A aréa calculada é de {}mx{}m e sua área é de {:.3f}m². Será necessário {:.2f} litros de tinta para pintar'.format(area1, area2, calculo, tinta))
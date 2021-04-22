medida = float(input('Digite a Medida em Metros: '))
km = medida / 1000
hm = medida / 100
dam = medida / 10
dm = medida * 10
cm = medida * 100
mm = medida * 1000

print('Km: {} \n Hm: {} \n Dam: {} \n M: {} \n Dm: {} \n Cm: {} \n Mm: {} \n'.format(km, hm, dam, medida, dm, cm, mm))
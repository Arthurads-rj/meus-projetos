#include <stdio.h>

char* Semana (int dia) {
  switch (dia) {
    case 1:
    return "Segunda";
    case 2:
    return "Terca";
    case 3:
    return "Quarta";
    case 4:
    return "Quinta";
    case 5:
    return "Sexta";

    default:
      return "[Invalido]";
  }
}



  int main(void){
  float adocao[5];
  float total = 0;
  int menosAdocao = 0, maisAdocao = 0;

    
for (int i = 0; i <= 4; i ++){
    printf("Adocoes em %s: ", Semana (i+1));
    scanf ("%f", &adocao[i]);

    total += adocao[i];

    if(adocao[menosAdocao] > adocao[i]){
      menosAdocao = i;
    }

     if(adocao[maisAdocao] < adocao[i]){
      maisAdocao = i;
    }
  }
    
    printf("Calculando...\n");
    printf("O Total de Animais adotados na semana foi %.0f\n", total);
    printf("Media de Adoções da semana foi %.0f\n", total / 5);
    printf("O dia com menos adocoes foi %s \n",Semana (menosAdocao + 1));
    printf("O dia com mais adocoes foi %s \n",Semana (maisAdocao + 1));


  return 0;
    }
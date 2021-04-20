#include <stdio.h>
#include <stdlib.h>

int numero;

int main(int argc, char *avgr[])

{
    printf ("Sistemas\n\n");
    printf ("1 - Windows\n");
    printf ("2 - Linux\n");
    printf ("\nEscolha a opcao desejada: \n");
    scanf ("%d", &numero);
    switch (numero)
      {
        case 1:
        system("cls");
          printf ("Iniciando o Windows... \n\n");
          printf ("Seja bem vindo ao Windows");
          break;
        
        case 2:
        system("cls");
          printf ("Iniciando o Linux... \n");
          printf ("Seja bem vindo ao Linux");
          break; 
        
        default:
        system("cls");
        system("color 4");
          printf ("opcao invalida\n");
      }
      system("pause");
      return 0;

}
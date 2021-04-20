#include <stdio.h>
#include <stdlib.h>

int numero, numero1, numero2;

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
          system("pause");

            system("cls");
            printf("Deseja qual versao do Windows?\n\n");
            printf ("1 - Windows XP\n");
            printf ("2 - Windows 7\n");
            printf ("3 - Windows 8\n");
            printf ("4 - Windows 10\n");
            scanf("%d", &numero1);          
              switch (numero1)
              {
              case 1:
                system("cls");
                printf("Seja bem vindo ao Windows XP\n\n");
                break;
              
              case 2:
              system("cls");
                printf("Seja bem vindo ao Windows 7\n\n");
                break;

               case 3:
               system("cls");
                printf("Seja bem vindo ao Windows 8\n\n");
                break;

               case 4:
               system("cls");
                printf("Seja bem vindo ao Windows 10\n\n");
                break;

              default:
              system("cls");
              system("color 4");
                printf("Erro - Versao nao selecionada\n\n");
                break;
              }
        break;

        case 2:
        system("cls");
          printf ("Iniciando o Linux... \n");
          system ("pause");

            system("cls");
            printf("Deseja qual versao do Linux?\n\n");
            printf ("1 - Linux Mint\n");
            printf ("2 - Linux Ubuntu\n");
            printf ("3 - Linux Fedora\n");
            scanf("%d", &numero2);
          

              switch (numero2)
              {
              case 1:
                system("cls");
                printf("Seja bem vindo ao Linux Mint\n\n");
                break;
              
              case 2:
              system("cls");
                printf("Seja bem vindo ao Linux Ubuntu\n\n");
                break;

               case 3:
               system("cls");
                printf("Seja bem vindo ao Linux Fedora\n\n");
                break;

              default:
              system("cls");
              system("color 4");
                printf("Erro - Versao nao selecionada");
                break;
              }
        break; 
        
        default:
        system("cls");
        system("color 4");
          printf ("opcao invalida\n");
      }
      system("pause");
      return 0;

}

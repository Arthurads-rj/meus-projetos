#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Caso decida testar o programa, o login é "usuario123" e a senha é "1234" sem as aspas

int numero, resposta, resposta1;
char login[30] = "usuario1";
char login1[30];
char senha[15] = "1234";
char senha1[15];



int main(int argc, char *avgr[])

 { do
        {

            system("cls");
            printf("Bem vindo ao Banco de Dados Central\n\n");
            printf("Deseja fazer login?\n\n");
            printf("1 - Sim\n");
            printf("2 - Nao\n");
            scanf("%d", &numero);

            switch (numero)
            {
            case 1:
                system("cls");
                printf("Digite seu login: ");
            scanf("%s", login1); //string se lê com %s

            printf ("Digite sua senha: ");
            scanf("%s", senha1);
            if (strcmp(login, login1) == 0) //strcmp é uma funçao da biblioteca string.h que compara duas strings. se forem igual a 0, são iguais.
            if (strcmp(senha, senha1) == 0)
            {
                system("cls");
                printf("Bem vindo %s\n", login);
                printf("O que deseja fazer?\n\n");

                printf("1 - Acessar Dados\n");
                printf("2 - Acessar Usuarios\n");
                scanf("%d", &resposta);

                switch (resposta)
                {
                case 1:
                    system("cls");
                    printf("Nao ha dados inseridos\n\n");
                    break;
                
                case 2:
                system("cls");
                printf("Exibindo Usuarios do sistema:\n\n");
                printf("1 - Usuario2\n");
                printf("2 - Usuario3\n");
                printf("3 - Usuario4\n");
                break;

                case 3:
                system("cls");
                printf("Finalizando.....");
                break;

                default:
                printf("Erro");
                    break;
                }

            }

            else
            {
                printf ("erro\n");
            }
            break;
            
            case 2:
                
            system("cls");
            printf("Login errado......\n");
            break;

            default:
            system("cls");
            printf("Erro\n");
            break;

        }
        system("pause");
        system("cls");
        printf ("\nDeseja reiniciar?\n");
        printf ("1- Sim\n");
        printf ("2- Nao\n");
        scanf ("%d", &resposta1);
}   while (resposta1 != 2);
system("pause");
return 0;
}
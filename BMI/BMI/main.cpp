#include <iostream>
#include <cstdlib>
//Este programa se usaran las estructuras como lo son: condicionales, ssecuenciales y ciclos para comprobar su funcionamiento.
//Febrero del 2025, Xanreyes
using namespace std;
int main ()
{
    //Variables de operadores
    float indiceDeMasa = 0;
    float pesoEnLibras = 0;
    float alturaEnPulgadas = 0;
    float pesoEnKilogramos = 0;
    float alturaEnMetros = 0;
    int opcionSeleccionada;
    char salidaDeMenu;
    //inicio del ciclo
    do
    {
        system("cls");
        //ingreso de datos
        opcionSeleccionada = 0;
        cout <<"Calculadora de IMC (Indice de masa corporal)"<<endl;
        //menu de opciones
        cout <<"1. peso en kilogramos"<<endl;
        cout <<"2. peso en libras" <<endl;
        cout <<"opcion:" <<endl;
        cin >>opcionSeleccionada;
        //estructuras condicionales
        if (opcionSeleccionada ==1)
        {
            cout <<"Ingrese peso en kilogramos"<<endl;
            cin >>pesoEnKilogramos;
            cout <<"Ingrese altura en metros"<<endl;
            cin >>alturaEnMetros;
        }else if (opcionSeleccionada==2)
        {
            cout <<"Ingrese peso en libras"<<endl;
            cin >>pesoEnLibras;
            cout <<"Ingrese altura en pulgadas"<<endl;
            cin >>alturaEnPulgadas;
        }
            switch (opcionSeleccionada)
            {
                case 1:
                    indiceDeMasa=pesoEnKilogramos/(alturaEnMetros*alturaEnMetros);
                    break;
                case 2:
                     indiceDeMasa=(pesoEnLibras*703)/(alturaEnPulgadas*alturaEnPulgadas);
                    break;
            default:
                cout << "Opcion no valida" <<endl;
            }
        //Indicar IMC
        if (indiceDeMasa<18.5)
        {
            cout <<"Bajo de peso con : " <<indiceDeMasa<<" de IMC"<<endl;

        }else if (indiceDeMasa<25 && indiceDeMasa> 18.5)
        {
            cout <<"Peso normal con : " <<indiceDeMasa<<" de IMC"<<endl;

        }else if (indiceDeMasa<30 && indiceDeMasa> 25)
        {
            cout <<"Sobre peso con : " <<indiceDeMasa<<" de IMC"<<endl;
        }else if (29<indiceDeMasa)
        {
            cout <<"Tiene obesidad " <<indiceDeMasa<< " de IMC"<<endl;
        }
        cout << "Desea realizar otra operacion si=S o No=N"<<endl;
        cin >>salidaDeMenu;
    } while (salidaDeMenu == 's' || salidaDeMenu == 's');
return 0;
}


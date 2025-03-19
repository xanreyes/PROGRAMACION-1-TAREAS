#include "Calculadora.h"

using namespace std;

int main() {
    int operacion;
    float num1, num2, resultadoOperacion;

    do {
        cout << "CALCULADORA DE OPERACIONES BASICA" <<endl;
        cout << "Ingrese el numero 1 si desea realizar una suma" <<endl;
        cout << "Ingrese el numero 2 si desea realizar una resta" <<endl;
        cout << "Ingrese el numero 3 si desea realizar una multiplicacion" <<endl;
        cout << "Ingrese el numero 4 si desea realizar una division" <<endl;
        cout << "Ingrese el numero 5 si desea salir del sistema" <<endl;
        cout << "Seleccione la operacion basica que desee operar";
        cin >> operacion;

        if (operacion >= 1 && operacion <= 4) {
            cout << "Ingrese el primer numero que desee operar: ";
            cin >> num1;
            cout << "Ingrese el segundo numero que desee operar: ";
            cin >> num2;
        }

        switch (operacion) {
            case 1:
                resultadoOperacion= Calculadora::sumar(num1, num2);
                cout << "El resultado de la suma es: " << resultadoOperacion << endl;
                break;
            case 2:
                resultadoOperacion = Calculadora::restar(num1, num2);
                cout << "El resultado de la resta es: " << resultadoOperacion << endl;
                break;
            case 3:
                resultadoOperacion = Calculadora::multiplicar(num1, num2);
                cout << "El resultado de la multiplicación es: " << resultadoOperacion << endl;
                break;
            case 4:
                resultadoOperacion = Calculadora::dividir(num1, num2);
                cout << "El resultado de la division es: " << resultadoOperacion << endl;
                break;
            case 5:
                cout << "Saliendo del sistema" << endl;

        }
    } while (operacion !=5);

    return 0;
}

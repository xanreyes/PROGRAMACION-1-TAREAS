
#include <iostream>
#include <string>

using namespace std;

const int CANDIDATOS = 5;
const int RONDAS = 5;

class Elecciones {
private:
    string nombres[CANDIDATOS];
    int datos[RONDAS + 1][CANDIDATOS] = {0};
    int ganador, perdedor, maxVotos, minVotos;

public:
    void ingresarCandidatos();
    void ingresarVotos();
    void mostrarResultados();
    void determinarGanador();
};

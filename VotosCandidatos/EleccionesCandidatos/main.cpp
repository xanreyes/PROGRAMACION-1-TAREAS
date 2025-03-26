#include "elecciones.h"

int main() {
    Elecciones eleccion;

    eleccion.ingresarCandidatos();
    eleccion.ingresarVotos();
    eleccion.mostrarResultados();
    eleccion.determinarGanador();

}

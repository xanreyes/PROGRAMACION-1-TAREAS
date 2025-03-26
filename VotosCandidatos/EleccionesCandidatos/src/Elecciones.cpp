#include "Elecciones.h"

void Elecciones::ingresarCandidatos() {
    for (int i = 0; i < CANDIDATOS; i++) {
        cout << "Ingrese nombre del candidato " << i + 1 << ": ";
        cin >> nombres[i];
    }
}

void Elecciones::ingresarVotos() {
    int votos;
    for (int i = 0; i < RONDAS; i++) {
        for (int j = 0; j < CANDIDATOS; j++) {
            cout << "Ingrese votos de la ronda " << i + 1 << " para el candidato " << nombres[j] << ": ";
            cin >> votos;
            datos[i][j] = votos;
            datos[RONDAS][j] += votos;
        }
    }
}

void Elecciones::mostrarResultados() {
    cout << "\nCandidatos y sus votos en cada ronda:" << endl;
    cout << "        ";
    for (int i = 0; i < CANDIDATOS; i++) {
        cout << nombres[i] << "    ";
    }
    cout << endl;

    for (int i = 0; i < RONDAS; i++) {
        cout << "Ronda " << i + 1 << "  ";
        for (int j = 0; j < CANDIDATOS; j++) {
            cout << datos[i][j] << "        ";
        }
        cout << endl;
    }

    cout << "Total:    ";
    for (int i = 0; i < CANDIDATOS; i++) {
        cout << datos[RONDAS][i] << "       ";
    }
    cout << endl;
}

void Elecciones::determinarGanador() {
    maxVotos = datos[RONDAS][0];
    minVotos = datos[RONDAS][0];
    ganador = 0;
    perdedor = 0;

    for (int i = 1; i < CANDIDATOS; i++) {
        if (datos[RONDAS][i] > maxVotos) {
            maxVotos = datos[RONDAS][i];
            ganador = i;
        }
        if (datos[RONDAS][i] < minVotos) {
            minVotos = datos[RONDAS][i];
            perdedor = i;
        }
    }

    cout << "\nEl candidato que gano las elecciones es: " << nombres[ganador] << " con " << maxVotos << " votos." << endl;
    cout << "El candidato con menos votos es: " << nombres[perdedor] << " con " << minVotos << " votos." << endl;
}

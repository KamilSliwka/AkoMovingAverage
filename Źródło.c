#include<stdio.h>

float programowanie_sredniej_kroczacej(float* tablica, unsigned int k, unsigned int m);


void main() {

	int k = 10;//rozmiar tablicy
	int m = 3;//srednia liczona z ostatnich m liczb
	float wynik;
	float tablica[10] = { 2.0f,2.5f, 4.5f, 4.0f, 5.0f, 4.0f, 7.0f, 8.0f, 9.0f, 10.0f };
	wynik = programowanie_sredniej_kroczacej(tablica,k,m);
	printf("\nwynik = %f", wynik);

	return 0;
}

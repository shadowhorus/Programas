#include <stdio.h>

void convertidor(long Dec, char *Bin);

int main()
{
long Dec;
char Bin[80];

printf("\n\n Ingrese el numero a convertir : ");
scanf("%ld",&Dec);
convertidor(Dec,Bin);
printf("\n El numero en Binario de: %ld es %s \n",Dec,Bin);

getchar(); // trap enter
getchar(); // wait
return 0;
}

void convertidor(long Dec, char *Bin)
{
int k = 0, n = 0;
int bandera = 0;
int remain;
char temp[80];


if (Dec < 0)
{
Dec = -Dec;
bandera = 1;
}
do
{
remain = Dec % 2;
Dec = Dec / 2;
temp[k++] = remain + '0';
} while (Dec > 0);

if (bandera)
temp[k++] = '-';
else
temp[k++] = ' ';

while (k >= 0)
Bin[n++] = temp[--k];

Bin[n-1] = 0;
}

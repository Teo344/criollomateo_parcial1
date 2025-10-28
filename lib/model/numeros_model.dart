class Numeros {

  final List<int> numeros;

  Numeros(this.numeros);

  int calcularSuma() {
    int suma = 0;
    for (int numero in numeros) {
      suma += numero;
    }
    return suma;
  }
}
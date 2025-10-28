import '../model/numeros_model.dart';

class NumerosController {
  List <int> numeros=[];

  String ingresarNumero(String numeroIngresado){
    if(numeroIngresado.isEmpty){
        return 'Agregue un numero ';
    }

    final n=int.tryParse(numeroIngresado);

    if(n==null){
      return 'Ingresar solo numeros';
    }

    numeros.add(n);
    return ' Número $n agregado correctamente. Total: ${numeros.length} elementos.';
  }

  String calcularSuma(){
    if (numeros.isEmpty) {
      return ' No hay números agregados para realizar la suma.';
    }
    final suma = Numeros(numeros);
    final resultado = suma.calcularSuma();
    return 'La suma total es: ${resultado.toString()}';
  }


}
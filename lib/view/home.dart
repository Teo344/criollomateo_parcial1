import 'package:flutter/material.dart';
// Asumo que tienes imports de tus widgets y controlador aquí
import '../widgets/botones.dart';
import '../widgets/input.dart';
import '../controller/numeros_controller.dart'; 
// Asumo que Botones está disponible y es flexible para el texto.

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = NumerosController();
  final  _numeroctrl = TextEditingController();
  
  String _mensajeEstado = 'Esperando ingreso de número...'; 


  void _ingresarNumero() {
    final mensaje = _controller.ingresarNumero(_numeroctrl.text);
    
    _numeroctrl.clear();
    
    setState(() {
      _mensajeEstado = mensaje;
    });
  }

  void _calcularSuma() {
    final resultado = _controller.calcularSuma();

    Navigator.pushNamed(context, 'resultado', arguments: resultado);
    
  }

  void _limpiarLista() {
    _controller.numeros.clear(); 
    _numeroctrl.clear();

    // Actualizar la UI
    setState(() {
      _mensajeEstado = 'Lista de números reiniciada.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo de N Elementos'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InputCalcular(
              controller: _numeroctrl, 
              label: 'Número a agregar'
            ),
            const SizedBox(height: 15),

            Botones(
              onPressed: _ingresarNumero,
              text: "Siguiente (Agregar)",
            ),
            const SizedBox(height: 15),

            Text(
              _mensajeEstado, 
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Total de elementos agregados: ${_controller.numeros.length}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: OutlinedButton( 
                    onPressed: _limpiarLista,
                    child: const Text("Reiniciar"),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Botones(
                    onPressed: _calcularSuma,
                    text: "Calcular",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:criollomateo_parcial1/view/home.dart';
import 'package:criollomateo_parcial1/view/resultado.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calcular Sueldo',

      //ejecutamos rutas
      initialRoute: '/',
      routes: {
        '/':(context)=>Home(),
        'resultado':(context)=>ResultadoView()
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent)
      ),
    );
  }
  

}

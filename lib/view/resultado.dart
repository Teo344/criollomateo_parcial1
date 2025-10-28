import 'package:flutter/material.dart';


class ResultadoView extends StatelessWidget{
  


  @override
  Widget build(BuildContext context) {
    final resultado = ModalRoute.of(context)!.settings.arguments as String; /* es de cir /resultado */

    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado Final"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Text(
          resultado,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      )
    );
  }

}
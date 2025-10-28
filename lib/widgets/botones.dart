import 'package:flutter/material.dart';

class Botones extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  Botones({required this.onPressed , required this.text});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, 
      child: Text(text));
  }

}
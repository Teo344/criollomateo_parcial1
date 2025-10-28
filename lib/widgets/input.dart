import 'package:flutter/material.dart';


class InputCalcular extends StatelessWidget{
  final TextEditingController controller;
  final String label;

  const InputCalcular({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }

}
import 'package:flutter/material.dart';

class Ventana1 extends StatelessWidget {
  const Ventana1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ventana 1'),
      ),
      body: Center(
        child: Text("Ventana 1"),
      ),
    );
  }
}

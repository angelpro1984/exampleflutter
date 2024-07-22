//import 'dart:ffi';

import 'package:exampleflutter/screens/ventana1.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nociones de Flutter'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Aprendiendo Flutter",
                  style: TextStyle(fontSize: 60, color: Colors.red),
                ),
                const Image(
                  image: AssetImage('assents/logo01.png'),
                  width: 300,
                  height: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_960_720.jpg',
                  width: 300,
                  height: 300,
                ),
                const Text(
                  "La página de Ángel",
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(255, 89, 0, 255)),
                ),
                const SizedBox(height: 100),
                const Row(
                  children: [
                    ElevatedButton(onPressed: null, child: Text("Aceptar1")),
                    Text("Hola mund0 3"),
                    ElevatedButton(onPressed: null, child: Text("Aceptar3"))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Wrap(
                    spacing: 10,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'productos/');
                          },
                          child: const Text('Productos Json')),
                      ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Ventana1()));
                          },
                          icon: Icon(Icons.account_circle),
                          label: const Text('Cuenta')),
                      FilledButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Ventana1()));
                        },
                        child: Text('Botón 3'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//import 'dart:ffi';

import 'package:exampleflutter/screens/ventana1.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zapatos deportivos para todos'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Text(
                  "CredeShoes",
                  style: TextStyle(fontSize: 60, color: Colors.red),
                ),
                const Image(
                  image: AssetImage('assents/LogoCredeShoes.png'),
                  width: 400,
                  height: 400,
                ),
                const SizedBox(
                  height: 5,
                ),
                Image.network(
                  'https://i0.wp.com/vistazoalfuturo.com/wp-content/uploads/2023/11/Rodrigo-Besoy-Sanchez-Calzado-deportivo-marca-un-cambio.jpeg?w=500&ssl=1',
                  width: 400,
                  height: 400,
                ),
                const Text(
                  "Encuentra el mejor calzado deportivo con nosotros",
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(255, 89, 0, 255)),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Wrap(
                    spacing: 300,
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
                        child: Text('Contáctanos'),
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

import 'package:exampleflutter/home_screen.dart';
import 'package:exampleflutter/screens/ventana1.dart';
import 'package:exampleflutter/screens/view_productos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primer Ejemplo de Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
          useMaterial3: true),
      home: const HomeScreen(),
      routes: {
        'home/': (_) => const HomeScreen(),
        'ventana1/': (_) => const Ventana1(),
        'productos/': (_) => const ViewProductos(),
      },
    );
  }
}

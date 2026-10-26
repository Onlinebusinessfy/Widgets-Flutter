import 'package:flutter/material.dart';
import 'widgets/button_widget.dart';
import 'widgets/card_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Column(
          children: [
            AppBar(
              title: const Text('Catálogo de productos'),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            const Expanded(
              child: CatalogoContenido(),
            ),
          ],
        ),
      ),
    );
  }
}

class CatalogoContenido extends StatelessWidget {
  const CatalogoContenido({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        TarjetaCatalogo(
          nombre: 'Laptop',
          descripcion: 'Computadora portátil',
          icono: Icons.laptop,
        ),
        TarjetaCatalogo(
          nombre: 'Celular',
          descripcion: 'Dispositivo móvil',
          icono: Icons.phone_android,
        ),
        TarjetaCatalogo(
          nombre: 'Audífonos',
          descripcion: 'Accesorios de audio',
          icono: Icons.headphones,
        ),
        SizedBox(height: 15),
        Center(child: BotonCatalogo()),
      ],
    );
  }
}

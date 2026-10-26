// Samuel Dominguez Lopez
// 10mo Cuatrimestre
// Matricula: 23030296
import 'package:flutter/material.dart';
import 'widgets/button_widget.dart';
import 'widgets/card_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { // Clase principal de la aplicación
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { // Método build que construye la interfaz de usuario de la aplicación
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

class CatalogoContenido extends StatelessWidget { // Clase para representar el contenido del catálogo
  const CatalogoContenido({super.key});

  @override
  Widget build(BuildContext context) { // Método build que construye la interfaz de usuario del contenido del catálogo
    return ListView(
      padding: const EdgeInsets.all(16), // Agrega un padding de 16 píxeles alrededor del contenido
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

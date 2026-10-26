import 'package:flutter/material.dart';

class BotonCatalogo extends StatelessWidget { // Clase para representar un botón de catálogo
  const BotonCatalogo({super.key}); // Constructor de la clase BotonCatalogo

  @override
  Widget build(BuildContext context) { // Método build que construye la interfaz de usuario del botón de catálogo
    return ElevatedButton(
      onPressed: () {},
      child: const Text('Ver catálogo'),
    );
  }
}

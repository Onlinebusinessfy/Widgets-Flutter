import 'package:flutter/material.dart';

class TarjetaCatalogo extends StatelessWidget { // Clase para representar una tarjeta de catálogo
  final String nombre;
  final String descripcion;
  final IconData icono;

  const TarjetaCatalogo({ // Constructor de la clase TarjetaCatalogo
    super.key,
    required this.nombre,
    required this.descripcion,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) { // Método build que construye la interfaz de usuario de la tarjeta de catálogo
    return Card(
      child: ListTile(
        leading: Icon(icono, size: 35),
        title: Text(nombre),
        subtitle: Text(descripcion),
      ),
    );
  }
}

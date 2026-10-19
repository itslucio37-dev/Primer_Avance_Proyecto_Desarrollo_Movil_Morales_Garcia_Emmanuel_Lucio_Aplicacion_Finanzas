import 'package:flutter/material.dart';

class AddTransactionScreen extends StatelessWidget {
  const AddTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Campo Cantidad
          const Text(
            'Cantidad',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Ingresa la cantidad',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.attach_money),
            ),
          ),
          const SizedBox(height: 16),

          // Campo Tipo Gasto o ingreso
          const Text(
            'Tipo de movimiento',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Gasto o Ingreso',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.swap_horiz),
            ),
          ),
          const SizedBox(height: 16),

          // Campo Categoría
          const Text(
            'Categoría',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Escribe o selecciona la categoría',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.category),
            ),
          ),
          const SizedBox(height: 16),

          // Campo Fecha
          const Text(
            'Fecha',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          const TextField(
            decoration: InputDecoration(
              hintText: 'DD/MM/AAAA',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.calendar_today),
            ),
          ),
          const SizedBox(height: 16),

          // Campo Descripción
          const Text(
            'Descripción',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Ingresa una descripción',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.notes),
            ),
          ),
          const SizedBox(height: 16),

          // Campo Fotografía
          const Text(
            'Fotografía',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Ruta o nombre de la foto de comprobante',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.camera_alt),
            ),
          ),
          const SizedBox(height: 28),

          // Botón Guardar Movimiento
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14.0),
            ),
            onPressed: () {
              //Aqui iria lo de guardar el movimiento pero aun no se aplica
            },
            child: const Text(
              'Guardar Movimiento',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
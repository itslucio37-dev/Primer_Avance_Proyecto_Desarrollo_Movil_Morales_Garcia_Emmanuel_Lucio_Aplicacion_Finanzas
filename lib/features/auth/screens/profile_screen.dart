import 'package:flutter/material.dart';
import 'package:aplicacion_control_finanzas/features/auth/screens/auth_welcome_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          
          const CircleAvatar(
            radius: 45,
            backgroundColor: Colors.teal,
            child: Icon(Icons.person, size: 50, color: Colors.white),
          ),
          const SizedBox(height: 20),

          // Tarjeta de Información de Usuario
          Card(
            elevation: 2,
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.badge, color: Colors.teal),
                  title: Text('Nombre completo'),
                  subtitle: Text('Usuario Ejemplo'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.account_circle, color: Colors.teal),
                  title: Text('Nombre de usuario'),
                  subtitle: Text('usuario123'), 
                ),
              ],
            ),
          ),
          const Spacer(),

          // Botón de Cerrar Sesión
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade400,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14.0),
              ),
              onPressed: () {
                
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AuthWelcomeScreen(),
                  ),
                  (route) => false,
                );
              },
              icon: const Icon(Icons.logout),
              label: const Text(
                'Cerrar Sesión',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
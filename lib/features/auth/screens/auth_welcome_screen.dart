import 'package:flutter/material.dart';
import 'package:aplicacion_control_finanzas/features/auth/screens/login_screen.dart';
import 'package:aplicacion_control_finanzas/features/auth/screens/register_screen.dart';

class AuthWelcomeScreen extends StatelessWidget {
  const AuthWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finanzas Personales'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.account_balance_wallet,
              size: 80,
              color: Colors.teal,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Control de Finanzas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 48.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: const Text(
                'Iniciar Sesión',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 16.0),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                side: const BorderSide(color: Colors.teal),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              child: const Text(
                'Crear Cuenta',
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
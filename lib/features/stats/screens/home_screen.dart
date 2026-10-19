import 'package:flutter/material.dart';
import 'package:aplicacion_control_finanzas/features/stats/screens/stats_view.dart';
import 'package:aplicacion_control_finanzas/features/transactions/screens/transactions_screen.dart';
import 'package:aplicacion_control_finanzas/features/transactions/screens/add_transaction_screen.dart';
import 'package:aplicacion_control_finanzas/features/auth/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  
  final List<Widget> _screens = const [
    StatsView(),
    TransactionsScreen(),
    AddTransactionScreen(),
    ProfileScreen(),
  ];

  final List<String> _titles = const [
    'Estadísticas',
    'Movimientos',
    'Nuevo Movimiento',
    'Mi Cuenta',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Estadísticas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Movimientos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Agregar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mi Cuenta',
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:aplicacion_control_finanzas/features/transactions/models/transaction.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de movimientos de ejemplo 
    final List<Transaction> dummyTransactions = [
      Transaction(
        id: '1',
        amount: 350.00,
        type: TransactionType.expense,
        categoryId: 'Alimentos',
        date: DateTime.now(),
        description: 'Compra de despensa en el súper',
      ),
      Transaction(
        id: '2',
        amount: 1200.00,
        type: TransactionType.income,
        categoryId: 'Sueldo',
        date: DateTime.now().subtract(const Duration(days: 1)),
        description: 'Pago de proyecto',
      ),
      Transaction(
        id: '3',
        amount: 85.50,
        type: TransactionType.expense,
        categoryId: 'Transporte',
        date: DateTime.now().subtract(const Duration(days: 2)),
        description: 'Recarga de Urban pass',
      ),
    ];

    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: dummyTransactions.length,
        itemBuilder: (context, index) {
          final item = dummyTransactions[index];
          final isExpense = item.type == TransactionType.expense;

          return Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 12.0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Categoría y Monto
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            isExpense
                                ? Icons.arrow_downward
                                : Icons.arrow_upward,
                            color: isExpense ? Colors.red : Colors.green,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            item.categoryId,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${isExpense ? "-" : "+"}\$${item.amount.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isExpense ? Colors.red : Colors.green,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Descripción del movimiento
                  Text(
                    item.description,
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 8),

                  // Tipo y Fecha
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Chip(
                        label: Text(
                          isExpense ? 'Gasto' : 'Ingreso',
                          style: TextStyle(
                            color: isExpense ? Colors.red : Colors.green,
                            fontSize: 12,
                          ),
                        ),
                        backgroundColor: isExpense
                            ? Colors.red.shade50
                            : Colors.green.shade50,
                        visualDensity: VisualDensity.compact,
                      ),
                      Text(
                        '${item.date.day}/${item.date.month}/${item.date.year}',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
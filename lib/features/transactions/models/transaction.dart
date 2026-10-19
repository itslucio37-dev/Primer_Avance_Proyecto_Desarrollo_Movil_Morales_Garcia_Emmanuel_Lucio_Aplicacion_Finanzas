enum TransactionType {
  expense,
  income,
}

class Transaction {
  final String id;
  final double amount;
  final TransactionType type;
  final String categoryId;
  final DateTime date;
  final String description;
  final String? imagePath; 

  Transaction({
    required this.id,
    required this.amount,
    required this.type,
    required this.categoryId,
    required this.date,
    required this.description,
    this.imagePath,
  });
}
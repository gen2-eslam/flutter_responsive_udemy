class TransactionHistoryModel {
  String title;
  String date;
  bool withDrawal;
  String amount;

  TransactionHistoryModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.withDrawal,
  });
}

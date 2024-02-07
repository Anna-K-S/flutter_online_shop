class Cart {
  final int id;
  final int userId;
  final DateTime date;

  Cart({
    required this.id,
    required this.userId,
    required this.date,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'] as int,
      userId: json['userId'] as int,
      date: DateTime.parse(
        json['date'] as String,
      ),
    );
  }
}

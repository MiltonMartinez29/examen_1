class Book {
  final int id;
  final String title;
  final List<String> villains;

  Book({
    required this.id,
    required this.title,
    required this.villains,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['title'],
      villains: List<String>.from(json['villains']),
    );
  }
}

class Villain {
  final int id;
  final String name;

  Villain({
    required this.id,
    required this.name,
  });

  factory Villain.fromJson(Map<String, dynamic> json) {
    return Villain(
      id: json['id'],
      name: json['name'],
    );
  }
}

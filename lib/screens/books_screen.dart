import 'package:flutter/material.dart';
import 'package:examen_1/models/book.dart';

class BookListScreen extends StatelessWidget {
  final List<Book> books;

  const BookListScreen({required this.books});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Libros'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ListTile(
            title: Text(book.title),
            onTap: () {
              // Navegar a la pantalla de detalles del libro
            },
          );
        },
      ),
    );
  }
}

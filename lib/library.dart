import 'package:lab2/book.dart';

class Library {
  List<Book> books = [];

  Library();

  void addBook(Book book) {
    books.add(book);
  }

  void removeBook(Book book) {
    books.remove(book);
  }

  void display() {
    for (var book in books) {
      book.display();
    }
  }
}

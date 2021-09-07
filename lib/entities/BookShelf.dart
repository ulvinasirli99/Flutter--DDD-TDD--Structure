import 'package:flutter_ddd_arc/domain/DomainExcpetion.dart';
import 'package:flutter_ddd_arc/entities/Book.dart';
import 'package:flutter_ddd_arc/value/Identity.dart';

class BookShelf {
  static const MAX_CAPACITY = 10;
  Identity id;
  late List<Book> _books;
  List<Book> get books => _books;

  BookShelf({required this.id}) {
    _books = List.empty(growable: true);
  }

  addBook(Book book) {
    if (_books.length == MAX_CAPACITY)
      throw DomainExcpetion('Book shelf has reached maximum capacity');
    book.shelfId = id;
    _books.add(book);
  }
}

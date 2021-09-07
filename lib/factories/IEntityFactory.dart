import 'package:flutter/foundation.dart';
import 'package:flutter_ddd_arc/entities/Book.dart';
import 'package:flutter_ddd_arc/entities/BookShelf.dart';
import 'package:flutter_ddd_arc/value/Author.dart';
import 'package:flutter_ddd_arc/value/PublishDate.dart';
import 'package:flutter_ddd_arc/value/isbn.dart';
import 'package:flutter_ddd_arc/value/title.dart';


abstract class IEntityFactory {
  Book newBook({
    @required Title title,
    @required Author author,
    @required ISBN isbn,
    @required PublishDate publishDate,
  });

  BookShelf newBookShelf();
}
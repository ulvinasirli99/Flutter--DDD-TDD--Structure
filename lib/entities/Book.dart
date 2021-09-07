import 'package:flutter/cupertino.dart';
import 'package:flutter_ddd_arc/value/Author.dart';
import 'package:flutter_ddd_arc/value/Identity.dart';
import 'package:flutter_ddd_arc/value/PublishDate.dart';
import 'package:flutter_ddd_arc/value/isbn.dart';

class Book {
  Identity id;
  Identity shelfId;
  Title title;
  Author author;
  ISBN isbn;
  PublishDate publishDate;

  Book({
    required this.id,
    required this.shelfId,
    required this.title,
    required this.author,
    required this.isbn,
    required this.publishDate,
  });
}

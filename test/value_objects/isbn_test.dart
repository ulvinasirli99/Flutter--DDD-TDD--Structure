import 'package:flutter_ddd_arc/value/failure.dart';
import 'package:flutter_ddd_arc/value/isbn.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart' as matcher;

void main() {
  group("ISBN", () {
    test("should return failure when invalid isbn", () {
      //todo arrange
      var isbn = ISBN.create("89990")!.fold((err) => err, (isbn) => isbn);

      //arrange
      expect(isbn, matcher.TypeMatcher<Failure>());
    });

    test("should return when value is valid isbn-10", () {
      //! arrange
      String str = 'ISBN-10: 0-596-52068-9';
      var isbn = ISBN.create(str)!.getOrElse(() => null!);
      expect(isbn.value, str);
    });

     test('should return isbn when value is valid isbn-13', () {
      //arrange
      String str = 'ISBN-13: 978-0-596-52068-7';
      var isbn = ISBN.create(str)!.getOrElse(()=>null!);

      expect(isbn.value, str);
    });
  });
}

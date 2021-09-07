import 'package:equatable/equatable.dart';
import 'package:flutter_ddd_arc/value/failure.dart';
import 'package:flutter_ddd_arc/value/title.dart';
import 'package:matcher/matcher.dart' as matcher;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Title", () {
    test("should return Failure when is empty", () {
      //? arrange
      var title = Title.create("")!.fold((err) => err, (title) => title);

      //! assert
      expect(title, matcher.TypeMatcher<Failure>());
    });

    test("should create title when is not empty", () {
      //! arrange
      var str = "Flutter 223";
      var title = Title.create(str)!.getOrElse(()=>null!);

      expect(title.value, str);
    });
  });
}

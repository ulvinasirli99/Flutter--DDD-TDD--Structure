import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

import 'Failure.dart';

class PublishDate extends Equatable {
  final String _value;

  PublishDate._(this._value);

  static Either<Failure, PublishDate> create(String value) {
    final formatter = DateFormat('yyyy-MM-dd');
    try {
      formatter.parseStrict(value);
    } catch (e) {
      return Left(Failure('incorrect date format [yyyy-mm-dd]'));
    }
    return Right(PublishDate._(value));
  }

  DateTime toDate() => DateTime.parse(_value);

  @override
  String toString() {
    return this._value;
  }

  @override
  List<Object> get props => [_value];
}
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_ddd_arc/value/failure.dart';

class ISBN extends Equatable {
  final String value;
  ISBN._create(this.value);

  static Either<Failure, ISBN>? create(String value) {
    if (!_isValid(value)) {
      return Left(Failure("invalid isbn"));
    } else {
      return Right(ISBN._create(value));
    }
  }

  static bool _isValid(String value) {
    var regex =
        r'^(?:ISBN(?:-1[03])?:? )?(?=[0-9X]{10}$|(?=(?:[0-9]+[- ]){3})[- 0-9X]{13}$|97[89][0-9]{10}$|(?=(?:[0-9]+[- ]){4})[- 0-9]{17}$)(?:97[89][- ]?)?[0-9]{1,5}[- ]?[0-9]+[- ]?[0-9]+[- ]?[0-9X]$';

    RegExp exp = RegExp(regex);

    return exp.hasMatch(value);
  }

  @override
  List<Object?> get props => [value];
}

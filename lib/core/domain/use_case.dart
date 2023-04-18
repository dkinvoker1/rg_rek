import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../errors/failures.dart';

part 'use_case.freezed.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

@freezed
class NoParams with _$NoParams {
  factory NoParams() = _NoParams;
}

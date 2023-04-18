import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure({
    @Default([]) List properties,
  }) = _ServerFailure;

  const factory Failure.connectionFailure({
    @Default([]) List properties,
  }) = _ConnectionFailure;
}

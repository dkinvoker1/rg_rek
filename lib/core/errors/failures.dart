import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

const String serverFailureString = 'Server Failure';
const String connectionFailureString = 'Connection Failure';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure({
    @Default([]) List properties,
  }) = _ServerFailure;

  const factory Failure.connectionFailure({
    @Default([]) List properties,
  }) = _ConnectionFailure;
}
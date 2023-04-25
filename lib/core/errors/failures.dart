import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

final String serverFailureString = 'server_failure_string'.tr();
final String connectionFailureString = 'connection_failure_string'.tr();

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure({
    @Default([]) List properties,
  }) = _ServerFailure;

  const factory Failure.connectionFailure({
    @Default([]) List properties,
  }) = _ConnectionFailure;
}
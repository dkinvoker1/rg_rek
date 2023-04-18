import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_outcome.freezed.dart';

@freezed
class GameOutcome with _$GameOutcome {
  const GameOutcome._();

  factory GameOutcome({
    required int outcomeId,
    required String outcomeName,
    required double outcomeOdds,
    required int status,
  }) = _GameOutcome;
}

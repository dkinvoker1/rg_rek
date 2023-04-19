import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/game_outcome_model.dart';

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

  factory GameOutcome.fromModel(GameOutcomeModel model) {
    return GameOutcome(
      outcomeId: model.outcomeId,
      outcomeName: model.outcomeName,
      outcomeOdds: model.outcomeOdds,
      status: model.status,
    );
  }
}

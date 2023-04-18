import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_outcome_model.freezed.dart';
part 'game_outcome_model.g.dart';

@freezed
class GameOutcomeModel with _$GameOutcomeModel {
  factory GameOutcomeModel({
    required int outcomeId,
    required String outcomeName,
    required double outcomeOdds,
    required int status,
  }) = _GameOutcomeModel;

  factory GameOutcomeModel.fromJson(Map<String, Object?> json) =>
      _$GameOutcomeModelFromJson(json);
}

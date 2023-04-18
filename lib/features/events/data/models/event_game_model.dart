import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_outcome_model.dart';

part 'event_game_model.freezed.dart';
part 'event_game_model.g.dart';

@freezed
class EventGameModel with _$EventGameModel {
  const EventGameModel._();

  factory EventGameModel({
    required double argument,
    required int combinationType,
    required int eventLayout,
    required int gameCode,
    required double gameId,
    required bool gameLayout,
    required String gameName,
    required int gameType,
    required List<int> marketTypes,
    required int periodId,
    required List<GameOutcomeModel> outcomes,
  }) = _EventGameModel;

  factory EventGameModel.fromJson(Map<String, Object?> json) =>
      _$EventGameModelFromJson(json);
}

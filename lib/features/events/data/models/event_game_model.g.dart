// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventGameModel _$$_EventGameModelFromJson(Map<String, dynamic> json) =>
    _$_EventGameModel(
      argument: (json['argument'] as num).toDouble(),
      combinationType: json['combinationType'] as int,
      eventLayout: json['eventLayout'] as int,
      gameCode: json['gameCode'] as int,
      gameId: (json['gameId'] as num).toDouble(),
      gameLayout: json['gameLayout'] as bool,
      gameName: json['gameName'] as String,
      gameType: json['gameType'] as int,
      marketTypes:
          (json['marketTypes'] as List<dynamic>).map((e) => e as int).toList(),
      periodId: json['periodId'] as int,
      outcomes: (json['outcomes'] as List<dynamic>)
          .map((e) => GameOutcomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EventGameModelToJson(_$_EventGameModel instance) =>
    <String, dynamic>{
      'argument': instance.argument,
      'combinationType': instance.combinationType,
      'eventLayout': instance.eventLayout,
      'gameCode': instance.gameCode,
      'gameId': instance.gameId,
      'gameLayout': instance.gameLayout,
      'gameName': instance.gameName,
      'gameType': instance.gameType,
      'marketTypes': instance.marketTypes,
      'periodId': instance.periodId,
      'outcomes': instance.outcomes,
    };

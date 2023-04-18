// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_outcome_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameOutcomeModel _$$_GameOutcomeModelFromJson(Map<String, dynamic> json) =>
    _$_GameOutcomeModel(
      outcomeId: json['outcomeId'] as int,
      outcomeName: json['outcomeName'] as String,
      outcomeOdds: (json['outcomeOdds'] as num).toDouble(),
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_GameOutcomeModelToJson(_$_GameOutcomeModel instance) =>
    <String, dynamic>{
      'outcomeId': instance.outcomeId,
      'outcomeName': instance.outcomeName,
      'outcomeOdds': instance.outcomeOdds,
      'status': instance.status,
    };

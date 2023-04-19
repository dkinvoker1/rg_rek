// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_quick_search_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventQuickSearchBodyModel _$EventQuickSearchBodyModelFromJson(
        Map<String, dynamic> json) =>
    EventQuickSearchBodyModel(
      areas: (json['areas'] as List<dynamic>)
          .map((e) => $enumDecode(_$AreaEnumMap, e))
          .toList(),
      languageCode: json['languageCode'] as String,
      modes: (json['modes'] as List<dynamic>)
          .map((e) => $enumDecode(_$ModeEnumMap, e))
          .toList(),
      pattern: json['pattern'] as String,
    );

Map<String, dynamic> _$EventQuickSearchBodyModelToJson(
        EventQuickSearchBodyModel instance) =>
    <String, dynamic>{
      'areas': instance.areas.map((e) => _$AreaEnumMap[e]!).toList(),
      'languageCode': instance.languageCode,
      'modes': instance.modes.map((e) => _$ModeEnumMap[e]!).toList(),
      'pattern': instance.pattern,
    };

const _$AreaEnumMap = {
  Area.CATEGORY: 'CATEGORY',
  Area.PREMATCH_EVENT: 'PREMATCH_EVENT',
};

const _$ModeEnumMap = {
  Mode.INFIX: 'INFIX',
  Mode.PREFIX: 'PREFIX',
};

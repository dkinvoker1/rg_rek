// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_quick_search_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventQuickSearchBodyModel _$$_EventQuickSearchBodyModelFromJson(
        Map<String, dynamic> json) =>
    _$_EventQuickSearchBodyModel(
      areas:
          (json['areas'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const ['PREMATCH_EVENT'],
      languageCode: json['languageCode'] as String? ?? 'pl',
      modes:
          (json['modes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const ['INFIX', 'PREFIX'],
      pattern: json['pattern'] as String,
    );

Map<String, dynamic> _$$_EventQuickSearchBodyModelToJson(
        _$_EventQuickSearchBodyModel instance) =>
    <String, dynamic>{
      'areas': instance.areas,
      'languageCode': instance.languageCode,
      'modes': instance.modes,
      'pattern': instance.pattern,
    };

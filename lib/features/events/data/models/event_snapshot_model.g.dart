// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_snapshot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventSnapshotModel _$$_EventSnapshotModelFromJson(
        Map<String, dynamic> json) =>
    _$_EventSnapshotModel(
      area: json['area'] as int,
      name: json['name'] as String,
      id: json['id'] as int,
      score: (json['score'] as num).toDouble(),
      extras: EventSnapshotExtrasModel.fromJson(
          json['extras'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EventSnapshotModelToJson(
        _$_EventSnapshotModel instance) =>
    <String, dynamic>{
      'area': instance.area,
      'name': instance.name,
      'id': instance.id,
      'score': instance.score,
      'extras': instance.extras.toJson(),
    };

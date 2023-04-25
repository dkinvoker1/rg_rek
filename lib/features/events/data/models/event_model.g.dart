// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      category1Id: json['category1Id'] as int,
      category1Name: json['category1Name'] as String,
      category2Id: json['category2Id'] as int,
      category2Name: json['category2Name'] as String,
      category3Id: json['category3Id'] as int,
      category3Name: json['category3Name'] as String,
      eventCodeId: json['eventCodeId'] as int?,
      eventId: json['eventId'] as int,
      eventName: json['eventName'] as String,
      eventStart: json['eventStart'] as int,
      eventType: json['eventType'] as int,
      gamesCount: json['gamesCount'] as int,
      remoteId: json['remoteId'] as int?,
      eventExtendedData: EventExtendedDataModel.fromJson(
          json['eventExtendedData'] as Map<String, dynamic>),
      eventGames: (json['eventGames'] as List<dynamic>)
          .map((e) => EventGameModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'category1Id': instance.category1Id,
      'category1Name': instance.category1Name,
      'category2Id': instance.category2Id,
      'category2Name': instance.category2Name,
      'category3Id': instance.category3Id,
      'category3Name': instance.category3Name,
      'eventCodeId': instance.eventCodeId,
      'eventId': instance.eventId,
      'eventName': instance.eventName,
      'eventStart': instance.eventStart,
      'eventType': instance.eventType,
      'gamesCount': instance.gamesCount,
      'remoteId': instance.remoteId,
      'eventExtendedData': instance.eventExtendedData.toJson(),
      'eventGames': instance.eventGames.map((e) => e.toJson()).toList(),
    };

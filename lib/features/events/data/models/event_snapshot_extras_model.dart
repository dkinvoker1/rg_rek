// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_snapshot_extras_model.freezed.dart';
part 'event_snapshot_extras_model.g.dart';

@freezed
class EventSnapshotExtrasModel with _$EventSnapshotExtrasModel {
  const EventSnapshotExtrasModel._();

  factory EventSnapshotExtrasModel({
    required int CATEGORY_ID_3,
    required int CATEGORY_ID_2,
    required int SPORT_ID,
    required String CATEGORY_NAME_1,
    required int CATEGORY_ID_1,
    required String CATEGORY_NAME_2,
    required String CATEGORY_NAME_3,
  }) = _EventSnapshotExtrasModel;

  factory EventSnapshotExtrasModel.fromJson(Map<String, Object?> json) =>
      _$EventSnapshotExtrasModelFromJson(json);
}

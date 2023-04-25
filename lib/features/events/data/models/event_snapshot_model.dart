import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_snapshot_extras_model.dart';

part 'event_snapshot_model.freezed.dart';
part 'event_snapshot_model.g.dart';

@freezed
class EventSnapshotModel with _$EventSnapshotModel {
  const EventSnapshotModel._();

  factory EventSnapshotModel({
    required String area,
    required String name,
    required int id,
    required double score,
    required int? eventStart,
    required EventSnapshotExtrasModel extras,
  }) = _EventSnapshotModel;

  factory EventSnapshotModel.fromJson(Map<String, Object?> json) =>
      _$EventSnapshotModelFromJson(json);
}

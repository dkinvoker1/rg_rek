import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_snapshot_extras.dart';

part 'event_snapshot.freezed.dart';

@freezed
class EventSnapshot with _$EventSnapshot {
  const EventSnapshot._();

  factory EventSnapshot({
    required int area,
    required String name,
    required int id,
    required double score,
    required EventSnapshotExtras extras,
  }) = _EventSnapshot;
}

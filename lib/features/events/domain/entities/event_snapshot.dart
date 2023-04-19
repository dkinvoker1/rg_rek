import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/event_snapshot_model.dart';
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

  factory EventSnapshot.fromModel(EventSnapshotModel model) {
    return EventSnapshot(
      area: model.area,
      name: model.name,
      id: model.id,
      score: model.score,
      extras: EventSnapshotExtras.fromModel(model.extras),
    );
  }
}

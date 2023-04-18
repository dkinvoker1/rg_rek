import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_snapshot_extras.freezed.dart';

@freezed
class EventSnapshotExtras with _$EventSnapshotExtras {
  const EventSnapshotExtras._();

  factory EventSnapshotExtras({
    required int categoryId3,
    required int categoryId2,
    required int sportId,
    required String categoryName1,
    required int categoryId1,
    required String categoryName2,
    required String categoryName3,
  }) = _EventSnapshotExtras;
}

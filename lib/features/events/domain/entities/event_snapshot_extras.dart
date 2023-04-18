import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_snapshot_extras.freezed.dart';

@freezed
class EventSnapshotExtras with _$EventSnapshotExtras {
  const EventSnapshotExtras._();

  factory EventSnapshotExtras({
    required int CATEGORY_ID_3,
    required int CATEGORY_ID_2,
    required int SPORT_ID,
    required String CATEGORY_NAME_1,
    required int CATEGORY_ID_1,
    required String CATEGORY_NAME_2,
    required String CATEGORY_NAME_3,
  }) = _EventSnapshotExtras;
}

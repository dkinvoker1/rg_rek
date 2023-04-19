import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/event_snapshot_extras_model.dart';

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

  factory EventSnapshotExtras.fromModel(EventSnapshotExtrasModel model) {
    return EventSnapshotExtras(
      categoryId3: model.CATEGORY_ID_3,
      categoryId2: model.CATEGORY_ID_2,
      sportId: model.SPORT_ID,
      categoryName1: model.CATEGORY_NAME_1,
      categoryId1: model.CATEGORY_ID_1,
      categoryName2: model.CATEGORY_NAME_2,
      categoryName3: model.CATEGORY_NAME_3,
    );
  }
}

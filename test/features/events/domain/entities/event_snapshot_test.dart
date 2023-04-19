import 'package:flutter_test/flutter_test.dart';
import 'package:rg_rek/features/events/data/models/event_snapshot_extras_model.dart';
import 'package:rg_rek/features/events/data/models/event_snapshot_model.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot_extras.dart';

void main() {
  final tModel = EventSnapshotModel(
    area: 1,
    name: 'name',
    id: 1,
    score: 1.1,
    extras: EventSnapshotExtrasModel(
      CATEGORY_ID_3: 1,
      CATEGORY_ID_2: 1,
      SPORT_ID: 1,
      CATEGORY_NAME_1: 'name1',
      CATEGORY_ID_1: 1,
      CATEGORY_NAME_2: 'name2',
      CATEGORY_NAME_3: 'name3',
    ),
  );

  final tEntity = EventSnapshot(
    area: 1,
    name: 'name',
    id: 1,
    score: 1.1,
    extras: EventSnapshotExtras(
      categoryId3: 1,
      categoryId2: 1,
      sportId: 1,
      categoryName1: 'name1',
      categoryId1: 1,
      categoryName2: 'name2',
      categoryName3: 'name3',
    ),
  );

  test(
    'fromModel',
    () {
      // act
      final result = EventSnapshot.fromModel(tModel);

      //assert
      expect(result, equals(tEntity));
    },
  );
}
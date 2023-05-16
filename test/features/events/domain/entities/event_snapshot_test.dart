import 'package:flutter_test/flutter_test.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot.dart';

import '../../../../mock_data_objects/mock_entities.dart';
import '../../../../mock_data_objects/mock_models.dart';

void main() {
  test(
    'fromModel',
    () {
      // act
      final result = EventSnapshot.fromModel(tEventSnapshotModel);

      //assert
      expect(result, equals(tEventSnapshot));
    },
  );
}

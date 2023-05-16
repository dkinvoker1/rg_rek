import 'package:flutter_test/flutter_test.dart';
import 'package:rg_rek/features/events/domain/entities/game_outcome.dart';

import '../../../../mock_data_objects/mock_entities.dart';
import '../../../../mock_data_objects/mock_models.dart';

void main() {
  test(
    'fromModel',
    () {
      // act
      final result = GameOutcome.fromModel(tGameOutcomeModel);

      //assert
      expect(result, equals(tGameOutcome));
    },
  );
}

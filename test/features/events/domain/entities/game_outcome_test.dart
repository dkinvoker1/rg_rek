import 'package:flutter_test/flutter_test.dart';
import 'package:rg_rek/features/events/data/models/game_outcome_model.dart';
import 'package:rg_rek/features/events/domain/entities/game_outcome.dart';

void main() {
  final tModel = GameOutcomeModel(
    outcomeId: 1,
    outcomeName: 'outcomeName',
    outcomeOdds: 1.1,
    status: 1,
  );

  final tEntity = GameOutcome(
    outcomeId: 1,
    outcomeName: 'outcomeName',
    outcomeOdds: 1.1,
    status: 1,
  );

  test(
    'fromModel',
    () {
      // act
      final result = GameOutcome.fromModel(tModel);

      //assert
      expect(result, equals(tEntity));
    },
  );
}

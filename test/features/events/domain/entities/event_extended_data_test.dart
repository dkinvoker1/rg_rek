import 'package:flutter_test/flutter_test.dart';
import 'package:rg_rek/features/events/data/models/event_extended_data_model.dart';
import 'package:rg_rek/features/events/domain/entities/event_extended_data.dart';

void main() {
  final tModel = EventExtendedDataModel(
    neutralGround: 'neutralGround',
    remoteCategoryId: 'remoteCategoryId',
  );

  final tEntity = EventExtendedData(
    neutralGround: 'neutralGround',
    remoteCategoryId: 'remoteCategoryId',
  );

  test(
    'fromModel',
    () {
      // act
      final result = EventExtendedData.fromModel(tModel);

      //assert
      expect(result, equals(tEntity));
    },
  );
}

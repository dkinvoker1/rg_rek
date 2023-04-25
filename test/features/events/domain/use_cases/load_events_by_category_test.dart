import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:rg_rek/core/errors/failures.dart';
import 'package:rg_rek/features/events/domain/repositories/event_repository.dart';
import 'package:rg_rek/features/events/domain/use_cases/load_events_by_category.dart';

import '../../mock_data_objects/mock_entities.dart';
import 'load_events_by_category_test.mocks.dart';

@GenerateMocks([EventRepository])
void main() {
  late LoadEventsByCategory useCase;
  late MockEventRepository mockEventRepository;

  setUp(() {
    mockEventRepository = MockEventRepository();
    useCase = LoadEventsByCategory(mockEventRepository);
  });

  const tCategoryId = '1';

  test(
    'should get List<Event> from EventRepository',
    () async {
      //arrange
      when(mockEventRepository.getEventsByCategory(any))
          .thenAnswer((_) async => Right(tEventList));
      //act
      final result = await useCase(tCategoryId);
      //assert
      verify(mockEventRepository.getEventsByCategory(tCategoryId));
      verifyNoMoreInteractions(mockEventRepository);
      expect(result, Right(tEventList));
    },
  );

  test(
    'should get connectionFailure from EventRepository',
    () async {
      //arrange
      var tFailure = const Failure.connectionFailure();

      when(mockEventRepository.getEventsByCategory(any))
          .thenAnswer((_) async => Left(tFailure));
      //act
      final result = await useCase(tCategoryId);
      //assert
      verify(mockEventRepository.getEventsByCategory(tCategoryId));
      verifyNoMoreInteractions(mockEventRepository);
      expect(result, Left(tFailure));
    },
  );

  test(
    'should get serverFailure from EventRepository',
    () async {
      //arrange
      var tFailure = const Failure.serverFailure();

      when(mockEventRepository.getEventsByCategory(any))
          .thenAnswer((_) async => Left(tFailure));
      //act
      final result = await useCase(tCategoryId);
      //assert
      verify(mockEventRepository.getEventsByCategory(tCategoryId));
      verifyNoMoreInteractions(mockEventRepository);
      expect(result, Left(tFailure));
    },
  );
}

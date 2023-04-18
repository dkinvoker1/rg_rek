import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:rg_rek/core/errors/failures.dart';
import 'package:rg_rek/features/events/domain/entities/event.dart';
import 'package:rg_rek/features/events/domain/entities/event_extended_data.dart';
import 'package:rg_rek/features/events/domain/entities/event_game.dart';
import 'package:rg_rek/features/events/domain/entities/game_outcome.dart';
import 'package:rg_rek/features/events/domain/repositories/event_repository.dart';
import 'package:rg_rek/features/events/domain/use_cases/load_events_by_category.dart';

import 'load_events_by_category_test.mocks.dart';

@GenerateMocks([EventRepository])
void main() {
  late LoadEventsByCategory useCase;
  late MockEventRepository mockEventRepository;

  setUp(() {
    mockEventRepository = MockEventRepository();
    useCase = LoadEventsByCategory(mockEventRepository);
  });

  const tCategoryId = 1;
  final tEventsList = [
    Event(
      category1Id: 1,
      category1Name: 'category1Name',
      category2Id: 1,
      category2Name: 'category2Name',
      category3Id: 1,
      category3Name: 'category3Name',
      eventCodeId: 1,
      eventId: 1,
      eventName: 'eventName',
      eventStart: DateTime(2000, 1, 1),
      eventType: 1,
      gamesCount: 1,
      remoteId: 1,
      eventExtendedData: [
        EventExtendedData(
          neutralGround: 'neutralGround',
          remoteCategoryId: 'remoteCategoryId',
        ),
      ],
      eventGames: [
        EventGame(
          argument: 1.1,
          combinationType: 1,
          eventLayout: 1,
          gameCode: 1,
          gameId: 1.1,
          gameLayout: true,
          gameName: 'gameName',
          gameType: 1,
          marketTypes: [
            1,
            2,
          ],
          periodId: 1,
          outcomes: [
            GameOutcome(
              outcomeId: 1,
              outcomeName: 'outcomeName',
              outcomeOdds: 1.1,
              status: 1,
            ),
          ],
        ),
      ],
    )
  ];

  test(
    'should get List<Event> from EventRepository',
    () async {
      //arrange
      when(mockEventRepository.getEventsByCategory(any))
          .thenAnswer((_) async => Right(tEventsList));
      //act
      final result = await useCase(tCategoryId);
      //assert
      verify(mockEventRepository.getEventsByCategory(tCategoryId));
      verifyNoMoreInteractions(mockEventRepository);
      expect(result, Right(tEventsList));
    },
  );

  test(
    'should get List<Event> from EventRepository',
    () async {
      //arrange
      when(mockEventRepository.getEventsByCategory(any))
          .thenAnswer((_) async => Right(tEventsList));
      //act
      final result = await useCase(tCategoryId);
      //assert
      verify(mockEventRepository.getEventsByCategory(tCategoryId));
      verifyNoMoreInteractions(mockEventRepository);
      expect(result, Right(tEventsList));
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

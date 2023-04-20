import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:rg_rek/core/errors/failures.dart';
import 'package:rg_rek/features/events/domain/entities/event.dart';
import 'package:rg_rek/features/events/domain/entities/event_game.dart';
import 'package:rg_rek/features/events/domain/entities/game_outcome.dart';
import 'package:rg_rek/features/events/domain/use_cases/load_events_by_category.dart';
import 'package:rg_rek/features/events/presentation/enums/event_category_enum.dart';
import 'package:rg_rek/features/events/presentation/pages/market/widgets/my_events/widgets/events_by_category_list/bloc/events_by_category_bloc.dart';

import 'events_by_category_list_bloc_test.mocks.dart';

@GenerateMocks([LoadEventsByCategory])
void main() {
  late MockLoadEventsByCategory loadUseCase;
  late EventsByCategoryBloc eventsByCategoryBloc;

  const tCategory = EventCategory.floorball;

  setUp(() {
    loadUseCase = MockLoadEventsByCategory();
    eventsByCategoryBloc = EventsByCategoryBloc(
      loadEventsByCategory: loadUseCase,
      eventCategory: tCategory,
    );
  });

  final tEventList = [
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
      eventExtendedData: [],
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
          marketTypes: [1],
          periodId: 1,
          outcomes: [
            GameOutcome(
              outcomeId: 1,
              outcomeName: 'outcomeName',
              outcomeOdds: 1.1,
              status: 1,
            )
          ],
        ),
      ],
    )
  ];

  void setUpMockLoadUseCaseSuccess() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => Right(tEventList),
      );

  test(
    'should get data from use case',
    () async {
      // arrange
      setUpMockLoadUseCaseSuccess();

      // act
      eventsByCategoryBloc
          .add(const EventsByCategoryEvent.searchByCategory(tCategory));
      await untilCalled(loadUseCase(any));

      // assert
      verify(loadUseCase(tCategory.index));
    },
  );

  blocTest<EventsByCategoryBloc, EventsByCategoryState>(
    'emits [Loading, Loaded] when succesfull',
    build: () => eventsByCategoryBloc,
    setUp: setUpMockLoadUseCaseSuccess,
    act: (bloc) =>
        bloc.add(const EventsByCategoryEvent.searchByCategory(tCategory)),
    expect: () => [
      const EventsByCategoryState.loading(),
      EventsByCategoryState.loaded(tEventList),
    ],
  );

  void setUpMockLoadUseCaseEmpty() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => const Right([]),
      );

  blocTest<EventsByCategoryBloc, EventsByCategoryState>(
    'emits [Loading, LoadedEmpty] when succesfull but empty',
    build: () => eventsByCategoryBloc,
    setUp: setUpMockLoadUseCaseEmpty,
    act: (bloc) =>
        bloc.add(const EventsByCategoryEvent.searchByCategory(tCategory)),
    expect: () => [
      const EventsByCategoryState.loading(),
      const EventsByCategoryState.loadedEmpty(),
    ],
  );

  void setUpMockLoadUseCaseConnectionFailure() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => const Left(
          Failure.connectionFailure(),
        ),
      );

  blocTest<EventsByCategoryBloc, EventsByCategoryState>(
    'emits [Loading, Error] when receive ConnectionFailure',
    build: () => eventsByCategoryBloc,
    setUp: setUpMockLoadUseCaseConnectionFailure,
    act: (bloc) =>
        bloc.add(const EventsByCategoryEvent.searchByCategory(tCategory)),
    expect: () => [
      const EventsByCategoryState.loading(),
      const EventsByCategoryState.error(connectionFailureString),
    ],
  );

  void setUpMockLoadUseCaseServerFailure() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => const Left(
          Failure.serverFailure(),
        ),
      );

  blocTest<EventsByCategoryBloc, EventsByCategoryState>(
    'emits [Loading, Error] when receive ServerFailure',
    build: () => eventsByCategoryBloc,
    setUp: setUpMockLoadUseCaseServerFailure,
    act: (bloc) =>
        bloc.add(const EventsByCategoryEvent.searchByCategory(tCategory)),
    expect: () => [
      const EventsByCategoryState.loading(),
      const EventsByCategoryState.error(serverFailureString),
    ],
  );
}

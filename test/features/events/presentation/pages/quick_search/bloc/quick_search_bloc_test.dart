import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:rg_rek/core/errors/failures.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot_extras.dart';
import 'package:rg_rek/features/events/domain/use_cases/load_event_snapshots_by_phrase.dart';
import 'package:rg_rek/features/events/presentation/pages/quick_search/bloc/quick_search_bloc.dart';

import 'quick_search_bloc_test.mocks.dart';

@GenerateMocks([LoadEventSnapshotsByPhrase])
void main() {
  late MockLoadEventSnapshotsByPhrase loadUseCase;
  late QuickSearchBloc quickSearchBloc;

  setUp(() {
    loadUseCase = MockLoadEventSnapshotsByPhrase();
    quickSearchBloc = QuickSearchBloc(loadUseCase);
  });

  const tPhrase = 'Mad';

  final tEventSnapshots = [
    EventSnapshot(
      area: 1,
      name: 'Mad football',
      id: 1,
      score: 1.1,
      extras: EventSnapshotExtras(
        categoryId3: 1,
        categoryId2: 1,
        sportId: 1,
        categoryName1: 'CATEGORY_NAME_1',
        categoryId1: 1,
        categoryName2: 'CATEGORY_NAME_2',
        categoryName3: 'CATEGORY_NAME_3',
      ),
    ),
  ];

  void setUpMockLoadUseCaseSuccess() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => Right(tEventSnapshots),
      );

  test(
    'should get data from use case',
    () async {
      // arrange
      setUpMockLoadUseCaseSuccess();

      // act
      quickSearchBloc.add(const QuickSearchEvent.searchByPhrase(tPhrase));
      await untilCalled(loadUseCase(any));

      // assert
      verify(loadUseCase(tPhrase));
    },
  );

  blocTest<QuickSearchBloc, QuickSearchState>(
    'emits [Loading, Loaded] when succesfull',
    build: () => quickSearchBloc,
    setUp: setUpMockLoadUseCaseSuccess,
    act: (bloc) => bloc.add(const QuickSearchEvent.searchByPhrase(tPhrase)),
    expect: () => [
      const QuickSearchState.loading(),
      QuickSearchState.loaded(tEventSnapshots),
    ],
  );

  void setUpMockLoadUseCaseEmpty() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => const Right([]),
      );

  blocTest<QuickSearchBloc, QuickSearchState>(
    'emits [Loading, LoadedEmpty] when succesfull but empty',
    build: () => quickSearchBloc,
    setUp: setUpMockLoadUseCaseEmpty,
    act: (bloc) => bloc.add(const QuickSearchEvent.searchByPhrase(tPhrase)),
    expect: () => [
      const QuickSearchState.loading(),
      const QuickSearchState.loadedEmpty(),
    ],
  );

  void setUpMockLoadUseCaseConnectionFailure() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => const Left(
          Failure.connectionFailure(),
        ),
      );

  blocTest<QuickSearchBloc, QuickSearchState>(
    'emits [Loading, Error] when receive ConnectionFailure',
    build: () => quickSearchBloc,
    setUp: setUpMockLoadUseCaseConnectionFailure,
    act: (bloc) => bloc.add(const QuickSearchEvent.searchByPhrase(tPhrase)),
    expect: () => [
      const QuickSearchState.loading(),
      const QuickSearchState.error(connectionFailureString),
    ],
  );

  void setUpMockLoadUseCaseServerFailure() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => const Left(
          Failure.serverFailure(),
        ),
      );

  blocTest<QuickSearchBloc, QuickSearchState>(
    'emits [Loading, Error] when receive ServerFailure',
    build: () => quickSearchBloc,
    setUp: setUpMockLoadUseCaseServerFailure,
    act: (bloc) => bloc.add(const QuickSearchEvent.searchByPhrase(tPhrase)),
    expect: () => [
      const QuickSearchState.loading(),
      const QuickSearchState.error(serverFailureString),
    ],
  );
}

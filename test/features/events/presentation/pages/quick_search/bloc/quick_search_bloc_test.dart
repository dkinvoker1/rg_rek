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

import '../../../../mock_data_objects/mock_entities.dart';
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

  void setUpMockLoadUseCaseSuccess() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => Right(tEventSnapshotList),
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
      QuickSearchState.loaded(tGamesCardData),
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
      QuickSearchState.error(connectionFailureString),
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
      QuickSearchState.error(serverFailureString),
    ],
  );
}

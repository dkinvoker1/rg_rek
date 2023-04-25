import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:rg_rek/core/errors/failures.dart';
import 'package:rg_rek/features/events/domain/use_cases/load_events_by_category.dart';
import 'package:rg_rek/features/events/presentation/enums/event_category_enum.dart';
import 'package:rg_rek/features/events/presentation/pages/market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';

import '../../../../../../../../../mock_data_objects/mock_entities.dart';
import 'events_by_category_list_bloc_test.mocks.dart';

@GenerateMocks([LoadEventsByCategory])
void main() {
  late MockLoadEventsByCategory loadUseCase;
  late MyEventsBloc myEventsBloc;

  setUp(() {
    loadUseCase = MockLoadEventsByCategory();
    myEventsBloc = MyEventsBloc(
      loadUseCase,
    );
  });

  void setUpMockLoadUseCaseSuccess() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => Right(tEventList),
      );

  final tCategoriesString = EventCategory.values.fold(
    '',
    (previousValue, element) => previousValue + element.value.toString(),
  );

  test(
    'should get data from use case',
    () async {
      // arrange
      setUpMockLoadUseCaseSuccess();

      // act
      myEventsBloc.add(const MyEventsEvent.load());
      await untilCalled(loadUseCase(any));

      // assert
      verify(loadUseCase(tCategoriesString));
    },
  );

  const tFilter = null;

  blocTest<MyEventsBloc, MyEventsState>(
    'emits [Loading, Loaded] when succesfull',
    build: () => myEventsBloc,
    setUp: setUpMockLoadUseCaseSuccess,
    act: (bloc) => bloc.add(const MyEventsEvent.load()),
    expect: () => [
      const MyEventsState.loading(),
      MyEventsState.loaded(tEventsByCategory1, tFilter),
    ],
  );

  void setUpMockLoadUseCaseEmpty() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => const Right([]),
      );

  blocTest<MyEventsBloc, MyEventsState>(
    'emits [Loading, LoadedEmpty] when succesfull but empty',
    build: () => myEventsBloc,
    setUp: setUpMockLoadUseCaseEmpty,
    act: (bloc) => bloc.add(const MyEventsEvent.load()),
    expect: () => [
      const MyEventsState.loading(),
      const MyEventsState.loadedEmpty(),
    ],
  );

  void setUpMockLoadUseCaseConnectionFailure() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => const Left(
          Failure.connectionFailure(),
        ),
      );

  blocTest<MyEventsBloc, MyEventsState>(
    'emits [Loading, Error] when receive ConnectionFailure',
    build: () => myEventsBloc,
    setUp: setUpMockLoadUseCaseConnectionFailure,
    act: (bloc) => bloc.add(const MyEventsEvent.load()),
    expect: () => [
      const MyEventsState.loading(),
      MyEventsState.error(connectionFailureString),
    ],
  );

  void setUpMockLoadUseCaseServerFailure() => when(
        loadUseCase(any),
      ).thenAnswer(
        (_) async => const Left(
          Failure.serverFailure(),
        ),
      );

  blocTest<MyEventsBloc, MyEventsState>(
    'emits [Loading, Error] when receive ServerFailure',
    build: () => myEventsBloc,
    setUp: setUpMockLoadUseCaseServerFailure,
    act: (bloc) => bloc.add(const MyEventsEvent.load()),
    expect: () => [
      const MyEventsState.loading(),
      MyEventsState.error(serverFailureString),
    ],
  );
}

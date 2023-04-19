import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:rg_rek/core/errors/failures.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot_extras.dart';
import 'package:rg_rek/features/events/domain/repositories/event_repository.dart';
import 'package:rg_rek/features/events/domain/use_cases/load_event_snapshots_by_phrase.dart';

import 'load_event_snapshots_by_phrase_test.mocks.dart';

@GenerateMocks([EventRepository])
void main() {
  late LoadEventSnapshotsByPhrase useCase;
  late MockEventRepository mockEventRepository;

  setUp(() {
    mockEventRepository = MockEventRepository();
    useCase = LoadEventSnapshotsByPhrase(mockEventRepository);
  });

  const tPhrase = 'abc';
  final tEventSnapshots = [
    EventSnapshot(
      area: 1,
      name: 'name',
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

  test(
    'should get List<EventSnapshot> from EventRepository',
    () async {
      //arrange
      when(mockEventRepository.getEventSnapshotsByPhrase(any))
          .thenAnswer((_) async => Right(tEventSnapshots));
      //act
      final result = await useCase(tPhrase);
      //assert
      verify(mockEventRepository.getEventSnapshotsByPhrase(tPhrase));
      verifyNoMoreInteractions(mockEventRepository);
      expect(result, Right(tEventSnapshots));
    },
  );

  test(
    'should get connectionFailure from EventRepository',
    () async {
      //arrange
      var tFailure = const Failure.connectionFailure();

      when(mockEventRepository.getEventSnapshotsByPhrase(any))
          .thenAnswer((_) async => Left(tFailure));
      //act
      final result = await useCase(tPhrase);
      //assert
      verify(mockEventRepository.getEventSnapshotsByPhrase(tPhrase));
      verifyNoMoreInteractions(mockEventRepository);
      expect(result, Left(tFailure));
    },
  );

  test(
    'should get serverFailure from EventRepository',
    () async {
      //arrange
      var tFailure = const Failure.serverFailure();

      when(mockEventRepository.getEventSnapshotsByPhrase(any))
          .thenAnswer((_) async => Left(tFailure));
      //act
      final result = await useCase(tPhrase);
      //assert
      verify(mockEventRepository.getEventSnapshotsByPhrase(tPhrase));
      verifyNoMoreInteractions(mockEventRepository);
      expect(result, Left(tFailure));
    },
  );
}

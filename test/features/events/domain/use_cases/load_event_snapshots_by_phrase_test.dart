import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:rg_rek/core/errors/failures.dart';
import 'package:rg_rek/features/events/domain/repositories/event_repository.dart';
import 'package:rg_rek/features/events/domain/use_cases/load_event_snapshots_by_phrase.dart';

import '../../../../mock_data_objects/mock_entities.dart';
import 'load_event_snapshots_by_phrase_test.mocks.dart';

@GenerateMocks([EventRepository])
void main() {
  late LoadEventSnapshotsByPhrase useCase;
  late MockEventRepository mockEventRepository;

  setUp(() {
    mockEventRepository = MockEventRepository();
    useCase = LoadEventSnapshotsByPhrase(mockEventRepository);
  });

  const tPhrase = 'Mad';

  test(
    'should get List<EventSnapshot> from EventRepository',
    () async {
      //arrange
      when(mockEventRepository.getEventSnapshotsByPhrase(any))
          .thenAnswer((_) async => Right(tEventSnapshotList));
      //act
      final result = await useCase(tPhrase);
      //assert
      verify(mockEventRepository.getEventSnapshotsByPhrase(tPhrase));
      verifyNoMoreInteractions(mockEventRepository);
      expect(result, Right(tEventSnapshotList));
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

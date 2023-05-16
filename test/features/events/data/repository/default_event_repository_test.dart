import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rg_rek/core/errors/exceptions.dart';
import 'package:rg_rek/core/errors/failures.dart';
import 'package:rg_rek/core/network_info/network_info.dart';
import 'package:rg_rek/features/events/data/data_sources/remote/remote_event_data_source.dart';
import 'package:rg_rek/features/events/data/models/event_extended_data_model.dart';
import 'package:rg_rek/features/events/data/models/event_game_model.dart';
import 'package:rg_rek/features/events/data/models/event_model.dart';
import 'package:rg_rek/features/events/data/models/event_snapshot_extras_model.dart';
import 'package:rg_rek/features/events/data/models/event_snapshot_model.dart';
import 'package:rg_rek/features/events/data/models/game_outcome_model.dart';
import 'package:rg_rek/features/events/data/repositories/default_event_repository.dart';
import 'package:rg_rek/features/events/domain/entities/event.dart';
import 'package:rg_rek/features/events/domain/entities/event_extended_data.dart';
import 'package:rg_rek/features/events/domain/entities/event_game.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot_extras.dart';
import 'package:rg_rek/features/events/domain/entities/game_outcome.dart';

import '../../../../mock_data_objects/mock_entities.dart';
import '../../../../mock_data_objects/mock_models.dart';
import 'default_event_repository_test.mocks.dart';

@GenerateMocks([NetworkInfo, RemoteEventDataSource])
void main() {
  late MockNetworkInfo mockNetworkInfo;
  late MockRemoteEventDataSource mockRemoteDataSource;
  late DefaultEventRepository repository;

  setUp(() {
    mockNetworkInfo = MockNetworkInfo();
    mockRemoteDataSource = MockRemoteEventDataSource();
    repository = DefaultEventRepository(
        networkInfo: mockNetworkInfo, remoteDataSource: mockRemoteDataSource);
  });

  group(
    'Events by Category',
    () {
      const tCategoryId = '1';
      test(
        'should return ConnectionFailure when NetworkInfo returns false',
        () async {
          //arrange
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
          //act
          final result = await repository.getEventsByCategory(tCategoryId);
          //assert
          verify(mockNetworkInfo.isConnected);
          verifyNoMoreInteractions(mockNetworkInfo);

          expect(
            result,
            const Left(Failure.connectionFailure()),
          );
        },
      );

      test(
        'should return List<EventEntity> from remoteDataSource',
        () async {
          //arrange
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          when(mockRemoteDataSource.getEventsByCategory(any))
              .thenAnswer((_) async => tEventModelList);
          //act
          final result = await repository.getEventsByCategory(tCategoryId);
          //assert
          verify(mockRemoteDataSource.getEventsByCategory(tCategoryId));
          verifyNoMoreInteractions(mockRemoteDataSource);
          expect(result.isRight(), true);
          expect(
            ilist(result.getOrElse(
              () => <Event>[],
            )),
            ilist(tEventList),
          );
        },
      );

      test(
        'should return ServerFailure when remoteDataSource throws an ServerException',
        () async {
          //arrange
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          when(mockRemoteDataSource.getEventsByCategory(any))
              .thenThrow(ServerException());
          //act
          final result = await repository.getEventsByCategory(tCategoryId);
          //assert
          verify(mockRemoteDataSource.getEventsByCategory(tCategoryId));
          verifyNoMoreInteractions(mockRemoteDataSource);
          expect(
            result,
            const Left(Failure.serverFailure()),
          );
        },
      );
    },
  );

  group(
    'Events by phrase',
    () {
      const tPhrase = 'Mad';
      test(
        'should return ConnectionFailure when NetworkInfo returns false',
        () async {
          //arrange
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
          //act
          final result = await repository.getEventSnapshotsByPhrase(tPhrase);
          //assert
          verify(mockNetworkInfo.isConnected);
          verifyNoMoreInteractions(mockNetworkInfo);

          expect(
            result,
            const Left(Failure.connectionFailure()),
          );
        },
      );

      test(
        'should return List<EventEntity> from remoteDataSource',
        () async {
          //arrange
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          when(mockRemoteDataSource.getEventSnapshotsByPhrase(any))
              .thenAnswer((_) async => tSnapshotModelList);
          //act
          final result = await repository.getEventSnapshotsByPhrase(tPhrase);
          //assert
          verify(mockRemoteDataSource.getEventSnapshotsByPhrase(tPhrase));
          verifyNoMoreInteractions(mockRemoteDataSource);
          expect(result.isRight(), true);
          expect(
            ilist(result.getOrElse(
              () => <EventSnapshot>[],
            )),
            ilist(tEventSnapshotList),
          );
        },
      );

      test(
        'should return ServerFailure when remoteDataSource throws an ServerException',
        () async {
          //arrange
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          when(mockRemoteDataSource.getEventSnapshotsByPhrase(any))
              .thenThrow(ServerException());
          //act
          final result = await repository.getEventSnapshotsByPhrase(tPhrase);
          //assert
          verify(mockRemoteDataSource.getEventSnapshotsByPhrase(tPhrase));
          verifyNoMoreInteractions(mockRemoteDataSource);
          expect(
            result,
            const Left(Failure.serverFailure()),
          );
        },
      );
    },
  );
}

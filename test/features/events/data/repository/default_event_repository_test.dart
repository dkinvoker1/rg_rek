import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rg_rek/core/errors/exceptions.dart';
import 'package:rg_rek/core/errors/failures.dart';
import 'package:rg_rek/core/network_info/network_info.dart';
import 'package:rg_rek/features/events/data/data_sources/remote/remote_event_data_source.dart';
import 'package:rg_rek/features/events/data/models/event_game_model.dart';
import 'package:rg_rek/features/events/data/models/event_model.dart';
import 'package:rg_rek/features/events/data/models/event_snapshot_extras_model.dart';
import 'package:rg_rek/features/events/data/models/event_snapshot_model.dart';
import 'package:rg_rek/features/events/data/models/game_outcome_model.dart';
import 'package:rg_rek/features/events/data/repositories/default_event_repository.dart';
import 'package:rg_rek/features/events/domain/entities/event.dart';
import 'package:rg_rek/features/events/domain/entities/event_game.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot_extras.dart';
import 'package:rg_rek/features/events/domain/entities/game_outcome.dart';

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

  const tCategoryId = 1;

  final tModelList = [
    EventModel(
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
        EventGameModel(
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
            GameOutcomeModel(
                outcomeId: 1,
                outcomeName: 'outcomeName',
                outcomeOdds: 1.1,
                status: 1)
          ],
        )
      ],
    ),
  ];

  final tEntityList = [
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

  group(
    'Events by Category',
    () {
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
              .thenAnswer((_) async => tModelList);
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
            ilist(tEntityList),
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

  const tPhrase = 'Mad';

  final tSnapshotModel = [
    EventSnapshotModel(
      area: 1,
      name: 'Mad footbal',
      id: 1,
      score: 1.1,
      extras: EventSnapshotExtrasModel(
        CATEGORY_ID_3: 1,
        CATEGORY_ID_2: 1,
        SPORT_ID: 1,
        CATEGORY_NAME_1: 'CATEGORY_NAME_1',
        CATEGORY_ID_1: 1,
        CATEGORY_NAME_2: 'CATEGORY_NAME_2',
        CATEGORY_NAME_3: 'CATEGORY_NAME_3',
      ),
    ),
  ];

  final tSnapshotEntity = [
    EventSnapshot(
      area: 1,
      name: 'Mad footbal',
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

  group(
    'Events by phrase',
    () {
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
              .thenAnswer((_) async => tSnapshotModel);
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
            ilist(tSnapshotEntity),
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

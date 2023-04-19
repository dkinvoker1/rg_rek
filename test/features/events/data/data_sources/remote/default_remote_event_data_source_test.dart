import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rg_rek/core/errors/exceptions.dart';
import 'package:rg_rek/features/events/data/data_sources/remote/client/body_models/event_quick_search_body_model.dart';
import 'package:rg_rek/features/events/data/data_sources/remote/client/event_client.dart';
import 'package:rg_rek/features/events/data/data_sources/remote/default_remote_event_data_source.dart';
import 'package:rg_rek/features/events/data/models/event_game_model.dart';
import 'package:rg_rek/features/events/data/models/event_model.dart';
import 'package:rg_rek/features/events/data/models/event_snapshot_extras_model.dart';
import 'package:rg_rek/features/events/data/models/event_snapshot_model.dart';
import 'package:rg_rek/features/events/data/models/game_outcome_model.dart';

import 'default_remote_event_data_source_test.mocks.dart';

@GenerateMocks([EventClient])
void main() {
  late MockEventClient mockClient;
  late DefaultRemoteEventDataSource dataSource;

  setUp(() {
    mockClient = MockEventClient();
    dataSource = DefaultRemoteEventDataSource(mockClient);
  });

  group(
    'getEventsByCategory',
    () {
      const tCategoryId = 1;

      final tEventModel = [
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

      void setUpResponseCode200() {
        when(mockClient.getEventsByCategory(tCategoryId)).thenAnswer(
          (_) async => tEventModel,
        );
      }

      test(
        'should preform a GET request on a URL https://fuksiarz.pl/rest/market/categories/multi/{categoryId}/events',
        () async {
          //arrange
          setUpResponseCode200();
          //act
          dataSource.getEventsByCategory(tCategoryId);
          //assert
          verify(
            mockClient.getEventsByCategory(tCategoryId),
          );

          verifyNoMoreInteractions(mockClient);
        },
      );

      test(
        'should return List<EventModel> when the response code is 200',
        () async {
          // arrange
          setUpResponseCode200();

          // act
          final result = await dataSource.getEventsByCategory(tCategoryId);
          // assert
          expect(result, equals(tEventModel));
        },
      );

      void setUpResponseException() {
        when(mockClient.getEventsByCategory(tCategoryId))
            .thenThrow(Exception('an error ocured'));
      }

      test(
        'should throw ServerException when the response throws exception',
        () async {
          // arrange
          setUpResponseException();

          // act
          final call = dataSource.getEventsByCategory;
          // assert
          expect(() => call(tCategoryId),
              throwsA(const TypeMatcher<ServerException>()));
        },
      );
    },
  );

  group(
    'getEventSnapshotsByPhrase',
    () {
      const tPhrase = 'Mad';

      final tBody = EventQuickSearchBodyModel(
        pattern: tPhrase,
      );

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

      void setUpResponseCode200() {
        when(
          mockClient.getEventSnapshotsByPhrase(tBody),
        ).thenAnswer(
          (_) async => tSnapshotModel,
        );
      }

      test(
        'should preform a GET request on a URL https://fuksiarz.pl/rest/search/events/quick-search',
        () async {
          //arrange
          setUpResponseCode200();
          //act
          dataSource.getEventSnapshotsByPhrase(tPhrase);
          //assert
          verify(
            mockClient.getEventSnapshotsByPhrase(tBody),
          );

          verifyNoMoreInteractions(mockClient);
        },
      );

      test(
        'should return List<EventSnapshotModel> when the response code is 200',
        () async {
          // arrange
          setUpResponseCode200();
          // act
          final result = await dataSource.getEventSnapshotsByPhrase(tPhrase);
          // assert
          expect(result, equals(tSnapshotModel));
        },
      );

      void setUpResponseException() {
        when(mockClient.getEventSnapshotsByPhrase(tBody))
            .thenThrow(Exception('an error ocured'));
      }

      test(
        'should throw ServerException when the response is exception',
        () async {
          // arrange
          setUpResponseException();

          // act
          final call = dataSource.getEventSnapshotsByPhrase;
          // assert
          expect(() => call(tPhrase),
              throwsA(const TypeMatcher<ServerException>()));
        },
      );
    },
  );
}
